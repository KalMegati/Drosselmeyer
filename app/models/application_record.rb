class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :underwritten, -> { where("LENGTH(story) > 250") }

  def entities(ent_class)
    self.send(ent_class.to_s.downcase+"s")
  end

end
