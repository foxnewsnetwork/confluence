module Confluence
  class Navigator
    class Node
      def self.from_filepath(filepath)
        new filepath
      end
      attr_accessor :filepath

      def initialize(filepath)
        @filepath = filepath
      end

      def directory?
        File.directory?(filepath)
      end

      def expand_path
        entries = Dir.entries(filepath).select { |s| !(s == ".." || s == ".") }
        nodes = entries.map { |entry| Node.from_filepath File.join(filepath, entry ) }
      end
    end

    attr_accessor :start_path
    attr_reader :callbacks

    def initialize(start_path)
      @start_path = start_path
      @callbacks ||= {}
    end

    def on_encounter(type=:file, &block)
      throw :NoBlockGivenError unless block_given?
      throw :BadTypeError unless type == :directory || type == :file
      (@callbacks[type] ||= []) << lambda(&block)
      self
    end

    def run
      _bfs_start(start_path)
    end

    private

    # lol this is actually dfs. sorry
    def _bfs_start(start_path)
      # step 0: get a context
      node_context = Node.from_filepath start_path

      # step 1: expand node
      nodes = node_context.expand_path

      # step 2: filter nodes
      node_hash = {}
      node_hash[:directory] = nodes.select { |node| node.directory? } || []
      node_hash[:file] = nodes.select { |node| !node.directory? } || []

      # step 3: use the callback on all file nodes
      callbacks.each do |key, cbs|
        node_hash[key].each { |node| cbs.each {|cb| cb.call node.filepath } }
      end

      # step 4: recurse with the rest of the d_nodes
      node_hash[:directory].each { |node| _bfs_start node.filepath }
    end

  end
end