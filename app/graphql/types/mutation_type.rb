module Types
  class MutationType < Types::BaseObject
    field :create_encounter, mutation: Mutations::CreateEncounter
    field :delete_encounter, mutation: Mutations::DeleteEncounter
  end
end
