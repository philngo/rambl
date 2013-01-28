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

require 'spec_helper'

describe PhoneNumber do
  pending "add some examples to (or delete) #{__FILE__}"
end
