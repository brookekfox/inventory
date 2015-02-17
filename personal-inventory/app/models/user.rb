require 'bcrypt'

class User < ActiveRecord::Base
	has_secure_password

	has_many :books
	has_many :movies
	has_many :comics
	has_many :graphic_novels
	has_many :tv_seasons
end