class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name_combined = "#{self.first_name} #{self.last_name}"
    full_name_combined
  end

  def list_roles
    self.characters.collect do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end