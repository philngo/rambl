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
  attr_accessible :number

  belongs_to :user
  belongs_to :label
end
