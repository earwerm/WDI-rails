# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :songs
  has_many :artists, :through => :songs
  has_and_belongs_to_many :users
end
