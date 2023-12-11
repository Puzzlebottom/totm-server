module Mutations
  class CreateEncounter < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true
    argument :description, String, required: true

    # return type from the mutation
    type Types::EncounterType

    def resolve(name: nil, description: nil)
      Encounter.create!(
        name:,
        description:,
        isActive: false
      )
    end
  end
end
