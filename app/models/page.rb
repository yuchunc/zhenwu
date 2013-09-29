class Page < ActiveRecord::Base

  validates_presence_of :title

  def self.find_translated(name, language)
    self.find_by( name: name, language: language)
  end
end
