class Shoe < ActiveRecord::Base
  belongs_to :user
  has_one :purchase

  validates :product, :amount, presence: true

end
