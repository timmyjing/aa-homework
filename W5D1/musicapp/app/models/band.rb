class Band < ApplicationRecord

  validates :name, presence: true, uniqueness: true

  has_many :albums

end
