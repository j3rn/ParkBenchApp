class Post < ActiveRecord::Base
  validates_presence_of :name, :title, :author, :permalink, :articleUrl
  validates_uniqueness_of :name
end
