# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint(8)        not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkShare < ApplicationRecord 
  validates :artwork_id, :viewer_id, presence: true, uniqueness: true 

  belongs_to :artwork, 
    primary_key: :id, 
    foreign_key: :artwork_id, 
    class_name: :Artwork 
  
  belongs_to :viewer, 
    primary_key: :id, 
    foreign_key: :viewer_id, 
    class_name: :User 
end 
