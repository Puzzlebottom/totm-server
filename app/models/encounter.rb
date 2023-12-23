class Encounter < ApplicationRecord
  include GraphQLId
  belongs_to :user
end
