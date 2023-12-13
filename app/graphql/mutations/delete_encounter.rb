module Mutations
  class DeleteEncounter < BaseMutation
    field :id, Integer, null: true

    # arguments passed to the `resolve` method
    argument :id, Integer, required: true

    def resolve(id: nil)
      encounter = Encounter.find(id)
      encounter.destroy
      {
        id:
      }
    end
  end
end
