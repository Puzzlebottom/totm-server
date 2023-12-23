# frozen_string_literal: true

# Note the path of this file must be graph_ql, not graphql
module GraphQLId
  extend ActiveSupport::Concern

  included do
    def gql_id
      GraphQL::Schema::UniqueWithinType.encode(self.class.name, id)
    end
  end

  class_methods do
    def find_by_gql_id(gql_id)
      _type_name, object_id = GraphQL::Schema::UniqueWithinType.decode(gql_id)

      find(object_id)
    end

    def find_by_gql_ids(gql_ids)
      ids = gql_ids.map do |gql_id|
        GraphQL::Schema::UniqueWithinType.decode(gql_id).last
      end

      where(id: ids)
    end
  end
end
