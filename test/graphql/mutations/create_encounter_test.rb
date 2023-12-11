require 'test_helper'

class Mutations::CreateEncounterTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateEncounter.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  test 'create a new encounter' do
    encounter = perform(
      name: 'test',
      description: 'test'
    )

    assert encounter.persisted?
    assert_equal encounter.name, 'test'
    assert_equal encounter.description, 'test'
    assert_equal encounter.isActive, false
  end
end
