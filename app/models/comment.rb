class Comment < ApplicationRecord
  #validates :news_item, :body, :author, :presence => true
  validates_presence_of :news_item, :body, :author, :message => "no puede quedar en blanco."
  belongs_to :news_item
end
