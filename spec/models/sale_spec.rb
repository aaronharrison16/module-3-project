require 'rails_helper'

RSpec.describe Sale, type: :model do
  describe 'Creation' do 
    before do 
      @sale = Sale.create(title: 'Test Sale', description: 'test description', qty_available: 3)
    end

    it 'can be created' do 
      expect(@sale).to be_valid
    end

    it 'cannot be created without a title' do 
      @sale.title = nil
      expect(@sale).to_not be_valid
    end

    it 'cannot be created without a description' do 
      @sale.description = nil
      expect(@sale).to_not be_valid
    end

    it 'cannot be created without a quantity' do 
      @sale.qty_available = nil
      expect(@sale).to_not be_valid
    end
  end
end
