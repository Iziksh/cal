class User < ActiveRecord::Base
 has_many :employees ,class_name: 'Employee',foreign_key: 'employee_id',primary_key: 'id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :age, :first_name, :last_name, :username, :email, :image
  # attr_accessible :title, :body


end
