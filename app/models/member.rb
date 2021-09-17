class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :orders, dependent: :destroy
  has_many :destinations, dependent: :destroy
  has_many :cart_products, dependent: :destroy
  
  validate :last_name, presence:true
  validate :first_name, presence:true
  validate :last_name_kana, presence:true
  validate :first_name_kana, presence:true
  validate :address, presence:true
  validate :postal_code, presence:true
  validate :telephone_number, presence:true
  validate :email, presence:true
  
  
end
