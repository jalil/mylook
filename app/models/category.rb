class Category < ActiveRecord::Base
  has_many :videos
  validates_associated :videos
  validates :name, presence: true
  #validates :name, presence: true, uniqueness: true
end
