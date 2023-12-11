module Types
  class EncounterType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :isActive, Boolean, null: false
    field :round, Integer, null: true
    field :turn, Integer, null: true
    field :owner, Integer, null: true
  end
end
