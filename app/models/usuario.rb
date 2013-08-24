class Usuario < ActiveRecord::Base
	attr_accessor :nombre, :correo

	validates :nombre, presence: true
	validates :correo, presence: true
end
