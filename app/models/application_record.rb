class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search(search)
    where('name LIKE ?', "%#{search}%")
  end
  
end
