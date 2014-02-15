class Employee < ActiveRecord::Base
 belongs_to :user,class_name: 'User',foreign_key: 'user_id',primary_key: 'id'
 attr_accessible :age, :first_name, :last_name, :username, :email, :image
end