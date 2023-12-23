module Types
  class QueryType < BaseObject
    field :all_encounters, [EncounterType], null: false

    def all_encounters
      context[:current_user].encounters
    end
  end
end
