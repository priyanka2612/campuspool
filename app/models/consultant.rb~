class Consultant < ActiveRecord::Base
    validates :Name, presence: true
    validates :Address, presence: true
    validates :Contact_no, presence: true
    
end


def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


