module Types
  class QueryType < BaseObject
    field :all_encounters, [EncounterType], null: false

    def all_encounters
      Encounter.all
    end
  end
end
