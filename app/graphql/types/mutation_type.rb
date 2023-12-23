module Types
  class MutationType < Types::BaseObject
    field :register_user, mutation: Mutations::RegisterUser
    field :login_user, mutation: Mutations::LoginUser
    field :logout_user, mutation: Mutations::LogoutUser
    field :create_encounter, mutation: Mutations::CreateEncounter
    field :delete_encounter, mutation: Mutations::DeleteEncounter
    field :update_encounter, mutation: Mutations::UpdateEncounter
  end
end
