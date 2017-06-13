class Artist < ApplicationRecord
  belongs_to :genre
  has_many :songs

  # Validations
    # Name
      # Present
      # Unique
    # Genre id
      # Present
      # Actually Exists
  validates :name, presence: true, uniqueness: true
  validates :genre_id, presence: true
  validates :genre, presence: true
end

# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_artists_on_genre_id  (genre_id)
#
