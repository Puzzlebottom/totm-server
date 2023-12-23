# frozen_string_literal: true

module Mutations
  class LogoutUser < BaseMutation
    graphql_name 'LogoutUser'

    field :user, Types::UserType, null: false

    def resolve(_args)
      user = context[:current_user]
      if user.present?
        user.reset_authentication_token!

        { user: }
      else
        GraphQL::ExecutionError.new('User not signed in')
      end
    end
  end
end
