class User < ApplicationRecord
  has_one_attached :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #for Heroku
  #after_create :welcome_send

  has_many :attendances
  has_many :events, through: :attendances
  has_many :events

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
