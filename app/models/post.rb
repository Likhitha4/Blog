class Post < ActiveRecord::Base
acts_as_votable
    belongs_to :user
	has_many :comments, dependent: :destroy
	

	validates_presence_of :title, :body
end
