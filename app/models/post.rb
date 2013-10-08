class Post < ActiveRecord::Base
  # Let's pretend that re-posts don't exist
  validates_uniqueness_of :title
end
