module Mutations
  class CreateEncounter < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true
    argument :description, String, required: true

    # return type from the mutation
    type Types::EncounterType

    def resolve(name: nil, description: nil)
      authorize_user

      Encounter.create!(
        name:,
        description:,
        isActive: false,
        user_id: context[:current_user].id
      )
    end
  end
end
