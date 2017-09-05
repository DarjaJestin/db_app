class Hall < ApplicationRecord
  belongs_to :user
  has_many :hall_groups
  has_many :halls, :through => :hall_groups

  validates :name, presence: true, length: { maximum: 50 }
end