class Setting < ApplicationRecord
    belongs_to :writer
    has_many :characters
    has_many :locations
    has_many :writers, through: :characters
    has_many :writers, through: :locations
end
