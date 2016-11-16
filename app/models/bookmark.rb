class Bookmark < ApplicationRecord
  validates :user_id, :presence => true
  validates :movie_id, :presence => true, :uniqueness => { :scope => :user_id }

  # don't need to type this whole thing, only what is below
  # belongs_to :user_id :class_name => "User", :foreign_key => "user_id"
  belongs_to :user
  belongs_to :movie
end
