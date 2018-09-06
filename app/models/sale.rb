class Sale < ApplicationRecord

  validates_presence_of :title, :description, :qty_available
end
