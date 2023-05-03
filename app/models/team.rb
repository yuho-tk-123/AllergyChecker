class Team < ApplicationRecord
    
    validates :name, {presence: true}
    validates :team_id, {presence: true, uniqueness: true}
    has_secure_password
    
end
