# Schema refleces the types of all fields of a document in an engine
module SwiftypeAppSearch
  class Client
    module Schema

      # Show schema of an engine
      #
      # @param [String] engine_name the unique Engine name
      #
      # @return [Hash] engine's schema
      def list_schema(engine_name)
        get("engines/#{engine_name}/schema")
      end

      # Update schema of an engine
      #
      # @param [String] engine_name the unique Engine name
      # @param [Hash] schema new/updated (partial) schema
      #
      # @return [Hash] engine's new schema
      def update_schema(engine_name, schema)
        post("engines/#{engine_name}/schema", schema)
      end
    end
  end
end
