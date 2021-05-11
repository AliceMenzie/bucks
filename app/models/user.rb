class User < ApplicationRecord
  has_many :listings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
# validates :username, presence: true, uniqueness: true, format: {with: /\A\w+\z/, message: 'username can only contain alphanumeric values'}       

end
