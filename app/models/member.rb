class Member < ApplicationRecord
    validates :team_id, {presence: true}
    validates :student_number, {presence: true}
    validates :name, {presence: true}
end
