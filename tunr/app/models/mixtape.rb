# == Schema Information
#
# Table name: mixtapes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Mixtape < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user
  has_and_belongs_to_many :songs
end
