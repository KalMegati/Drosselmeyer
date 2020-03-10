class Entity < ApplicationRecord
    # belongs_to :writer
    # belongs_to :setting

    scope :of_setting, ->(setting_id) { where("setting_id = ?", setting_id) }

end
