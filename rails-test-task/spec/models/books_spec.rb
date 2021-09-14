require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it {
      is_expected.to validate_presence_of(:title)
    }
    it {
      is_expected.to validate_length_of(:title).is_at_least(2)
    }
    it {
      is_expected.to validate_length_of(:title).is_at_most(25)
    }
  end
end