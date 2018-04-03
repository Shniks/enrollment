require 'rails_helper'

describe Address, type: :model do
  describe 'Relationships' do
    it {should belong_to(:student)}
  end
end
