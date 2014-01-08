class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

attr_accessible :vorname, :nachname, :email, :password, :password_confirmation

#Postleitzahl hat 5 Ziffern
validates :email, :uniqueness => true

#User wird automatisch als reguser angelegt
  after_create :assign_default_role

  def assign_default_role
    add_role(:reguser)
  end
end
