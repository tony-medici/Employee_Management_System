class Employee < ApplicationRecord
    validates :fullname, presence: true, length: {minimum: 5, maximum: 65}
    validates :age, presence: true
    validates :gender, presence: true 
    validates :marital_status, presence: true
    validates :state, presence: true
    validates :lga, presence: true
    validates :address, presence: true, length: {minimum: 45, maximum: 255}
    validates :start_date, presence: true
    validates :email, presence: true
end