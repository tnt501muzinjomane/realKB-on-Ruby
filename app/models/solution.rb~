class Solution < ActiveRecord::Base
belongs_to:problem
validates_presence_of :solution1
mount_uploader :image1, Image1Uploader
mount_uploader :image2, Image2Uploader
mount_uploader :image3, Image3Uploader
mount_uploader :image4, Image4Uploader
mount_uploader :image5, Image5Uploader
def self.search(query)
  where("solution1 like ? OR solution2 like ? OR solution3 like ? OR solution4 like ? OR solution5 like ?", "%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%") 
end
end
