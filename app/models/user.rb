class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :update_access_token!

  validates :first_name, :last_name, :email, presence: true

  has_many :saved_days

  private
    
    def update_access_token!
      self.access_token = "{self.id}: #{Devise.friendly_token}"
      save
    end

end
