class Album < ApplicationRecord
  validates :band_id, :title, :year, presence: true
  # validates :live

  belongs_to :band

end
