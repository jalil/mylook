class Video < ActiveRecord::Base
  validates :title, presence:  :true
  validates :url, presence:  :true
  validates :image, presence:  :true
  belongs_to :category


  def self.search_by_title(search_term)
    where("title  LIKE ?", "%#{search_term}%")
  end
end
