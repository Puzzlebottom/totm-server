module Types
  class EncounterType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :isActive, Boolean, null: false
    field :round, Integer, null: true
    field :turn, Integer, null: true
    field :user_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
