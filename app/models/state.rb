# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color_code :string(255)      default("#FFFFFF")
#

class State < ActiveRecord::Base
   attr_accessible :name

end
