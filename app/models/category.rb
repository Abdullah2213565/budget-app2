class Category < ApplicationRecord
  belongs_to :user
  has_many :expense_categories
  has_many :expenses, through: :expense_categories, dependent: :destroy

  validates :name, :icon, presence: true
end
