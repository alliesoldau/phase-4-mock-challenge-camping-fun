class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    validates :time, presence: true
    validates :time, inclusion: 0..23 
end
