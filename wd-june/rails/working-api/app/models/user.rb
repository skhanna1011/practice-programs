class User < ApplicationRecord
  has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_create :genrate_api_key
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  private

  def genrate_api_key
    n = rand(12..32)
    self.api_key = SecureRandom.hex.slice(0..n)
  end
end
