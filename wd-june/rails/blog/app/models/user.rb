class User < ApplicationRecord
  has_many :permissions
  has_many :roles, through: :permissions
  has_many :articles
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def role?(role)
    self.roles.pluck(:name).include? role
  end

  def assign_default_role
    self.roles.push(Role.last)
  end
end
