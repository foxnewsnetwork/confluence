module Navigator
  def self.setup( path )
    
  end

  def self.cleanup( path )
    Dir.unlink File.join(RSpec.root, path)
  end
end