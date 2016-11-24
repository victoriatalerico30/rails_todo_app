class List < ApplicationRecord
	has_many :tasks
	validates :title , presence: true , uniqueness: true
	validates :url , presence: true , uniqueness: true
end
