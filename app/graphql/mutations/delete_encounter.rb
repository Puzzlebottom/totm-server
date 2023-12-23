module Mutations
  class DeleteEncounter < BaseMutation
    field :id, Integer, null: false

    # arguments passed to the `resolve` method
    argument :id, Integer, required: true

    def resolve(id:)
      authorize_user

      encounter = Encounter.find(id)
      raise GraphQL::ExecutionError, encounter.errors.full_messages.join(', ') unless encounter.destroy

      { id: }
    end
  end
end
