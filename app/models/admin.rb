class Admin < ApplicationRecord
    validates :username, presence: true,
            uniqueness: {case_sensitive: false },
            length: { minimum: 3, maximum: 15 }
            
end