class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :underwritten, -> { where("LENGTH(story) > 250") }

end
