# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Artist < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :songs
  has_many :albums, :through => :songs

  validates :name, :presence => true
end

