class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

  def as_json(options={})
		{ :title => self.title, :id => self.id }
	end
	
end
