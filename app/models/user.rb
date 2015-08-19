class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :submissions, dependent: :destroy
  has_many :responses, dependent: :destroy
  has_many :profiles, dependent: :destroy
  has_many :votes, dependent: :destroy
end
