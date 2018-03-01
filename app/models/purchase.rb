class Purchase < ActiveRecord::Base
  belongs_to :shoe
  belongs_to :seller, :class_name => 'User'
  belongs_to :buyer, :class_name => 'User' 
end
