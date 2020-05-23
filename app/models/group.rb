class Group < ApplicationRecord
	belongs_to :user
	validates :title, presence: {message: "Vous devez entrer un titre"}
end
