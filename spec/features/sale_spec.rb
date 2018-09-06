require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do 
      visit sales_path
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Sales' do 
      visit sales_path
      expect(page).to have_content(/Sales/)
    end
  end

  describe 'new' do 
    before do 
      visit new_sale_path
    end
    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do
      fill_in 'sale[title]', with: 'Test Title'
      fill_in 'sale[description]', with: "Some rationale"
      fill_in 'sale[qty_available]', with: 15
      
      click_on "Save"

      expect(page).to have_content("Some rationale")
    end
  end

  describe 'edit' do 
    it 'can be reached by clicking edit on index page' do
      sale = Sale.new(title: 'some title', description: 'some description', qty_available: 12)
      visit sales_path

      click_link("edit_#{sale.id}")
      expect(page.status_code).to eq(200)
    end
  end
end