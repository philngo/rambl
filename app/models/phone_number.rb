# == Schema Information
#
# Table name: phone_numbers
#
#  id         :integer          not null, primary key
#  number     :string(255)
#  user_id    :integer
#  label_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PhoneNumber < ActiveRecord::Base
  attr_accessible :number, :label_id

  belongs_to :user
  belongs_to :label
  
  VALID_PHONE_NUMBER_REGEX = /\A(([1]-|)\d{3}-|)\d{3}-\d{4}\Z/i 
  validates :number, presence: true, format: { with: VALID_PHONE_NUMBER_REGEX }
  validates_presence_of :user_id, :label_id
end
