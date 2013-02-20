require "singleton"
module Confluence
  module Railties
    class Resolver < ActionView::Resolver
      include Singleton
      def find_templates(name, prefix, partial, details)
        if partial
          gem_directory = _get_gem_directory prefix
          partial_path = _get_partial_path name, gem_directory
          handler = _get_handler_from_nothing
          source = _get_source_from_path(partial_path)
          identifier = _get_identifier name, prefix
          normalized_details = _normalize_details(partial_path, details)
          _get_templates( source, identifier, handler, normalized_details )
        else
          []
        end
      end

      private

      def _normalize_details( path, details )
        details.merge( :virtual_path => path )
      end

      def _checks
        @_checks ||= [
          lambda do |not_null|
            !not_null.nil?
          end
        ]
      end

      def _get_templates( *stuffs )
        results = _checks.inject(true) do |status, check|
          stuffs.inject(status) do |mem, stuff|
            mem && check.call(stuff)
          end 
        end
        if results
          [ActionView::Template.new(stuffs.shift, stuffs.shift, stuffs.shift, stuffs.shift)]
        else
          []
        end
      end

      def _get_gem_directory(prefix)
        return nil if prefix.nil? || prefix.blank?
        prefixes = prefix.split("/")
        gem_name = prefixes.first 
        if gem_root_path = Gem.loaded_specs[gem_name].try( :full_gem_path)
          File.join(gem_root_path, "assets", "html", *prefixes[1..-1])
        else
          nil
        end
      end

      # This assumes, of course, our gem is built from confluence
      # TODO: throw an error if our gem isn't confluent
      def _get_partial_path(name, path)
        return nil if name.nil? || path.nil?
        names = name.split("/")
        names.push( "_#{names.pop}" )
        File.join(path, *names)
      end

      def _get_source_from_path(path)
        return nil if path.nil?
        File.read( path + ".html.haml" )
      end

      def _get_handler_from_nothing
        ActionView::Template.registered_template_handler("haml")
      end

      def _get_identifier(name, prefix)
        "#{name.hash}-#{prefix.hash}"
      end

    end
  end
end
