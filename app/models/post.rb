class Post < ActiveRecord::Base
  attr_accessible :body, :name

  validates :name, :presence => true
end
