# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :text             not null
#  image_url  :text             not null
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  validates :title, presence: true, uniqueness: { 
    scope: :artist_id, 
    message: "whatever you want it to say"
  }

  belongs_to :artist, 
    primary_key: :id, 
    foreign_key: :artist_id, 
    class_name: :User 
end
