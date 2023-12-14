module Types
  class EncounterAttributes < Types::BaseInputObject
    argument :id, Integer, required: true
    argument :name, String, required: false
    argument :description, String, required: false
    argument :isActive, Boolean, required: false
    argument :round, Integer, required: false
    argument :turn, Integer, required: false
    argument :owner, Integer, required: false
  end
end
