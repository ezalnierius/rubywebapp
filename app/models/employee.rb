class Employee < ApplicationRecord
	validates :first_name, presence:true
	validates :last_name, presence:true
	validates :email, length: {minimum: 5, maximum:20}
def self.search(search)
  if search
    Employee.where('first_name LIKE :search', search: "%#{search}%")
  else
   	Employee.all
 end
end
end