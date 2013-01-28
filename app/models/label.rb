# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Label < ActiveRecord::Base
  attr_accessible :text

  has_many :phone_numbers
end
