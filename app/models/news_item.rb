class NewsItem < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :lead, length: {maximum: 250}, allow_blank: true
  default_scope { order(created_at: :desc) }
  attr_readonly :created_at
  #after_initialize :cropped_body

  def self.index_formatted_list
    NewsItem.limit(10).each do |item|
      item.cropped_body
    end
  end
  
  def self.formatted_list
    NewsItem.all.each do |item|
      item.cropped_body
    end
  end

  def cropped_body 
    left = '...'
    nb_words_max = 1000 #+ left.length #what the user prefers
    if self.body and self.body.length > nb_words_max
      self.body = self.body.truncate(nb_words_max,
      								 separator: ' ',
      								 omission: left)
    else
      self.body
  
    end
  end


end
