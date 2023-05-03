class Menu < ApplicationRecord
    validates :team_id, {presence: true}
    validates :name, {presence: true}
    validates :division, {presence: true}
end
