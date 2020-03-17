class Entity < ApplicationRecord
    # belongs_to :writer
    # belongs_to :setting

    # scope :of_setting, ->(setting_id) { where("setting_id = ?", setting_id) }

    validates_presence_of :name, :blurb
    validates_uniqueness_of :name, :blurb

end
