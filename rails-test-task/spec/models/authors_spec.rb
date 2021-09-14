require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it {
      is_expected.to validate_presence_of(:name)
    }
    it {
      is_expected.to validate_length_of(:name).is_at_least(2)
    }
    it {
      is_expected.to validate_length_of(:name).is_at_most(25)
    }
    it {
      should respond_to(:books)
    }
  end
end