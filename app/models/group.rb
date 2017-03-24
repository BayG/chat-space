class Group < ApplicationRecord
  validates :name, presence: true
  has_many :group_user
  has_many :users, through: :group_user
  has_many :messages

  accepts_nested_attributes_for :group_user
end
