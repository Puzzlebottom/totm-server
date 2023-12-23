module Mutations
  class UpdateEncounter < BaseMutation
    field :encounter, Types::EncounterType, null: false

    # arguments passed to the `resolve` method
    argument :attributes, Types::EncounterAttributes, required: true

    def resolve(attributes:)
      authorize_user

      encounter = Encounter.find(attributes.id)
      raise GraphQL::ExecutionError, encounter.errors.full_messages.join(', ') unless encounter.update(attributes.to_h)

      { encounter: }
    end
  end
end
