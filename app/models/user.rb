class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true

  scope :all_except, ->(user) { where.not(id: user) }

  after_create_commit {broadcast_append_to "users"}

  has_many :messages


end
