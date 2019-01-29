# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true 

  has_many :artworks, 
    primary_key: :id, 
    foreign_key: :artist_id, 
    class_name: :Artwork 
  
  has_many :shared_artworks, 
    through: :artworks, 
    source: :artist 
    
end
