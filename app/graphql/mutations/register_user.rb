# frozen_string_literal: true

module Mutations
  class RegisterUser < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: false

    def resolve(args)
      user = User.create!(args)

      context[:current_user] = user

      { user: }
    end
  end
end
