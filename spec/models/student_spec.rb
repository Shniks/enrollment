require 'rails_helper'

describe Student, type: :model do
  describe 'Relationships' do
    it {should have_many(:addresses)}
  end
end
