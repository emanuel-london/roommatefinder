# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  work       :integer
#  sleep      :integer
#  bathroom   :integer
#  kitchen    :integer
#  user_id    :integer
#

class Schedule < ActiveRecord::Base
  extend ChoicesQuantifiable::Schedule
  include Validatable
  extend InputColumnable::ClassMethods
  include InputColumnable
  validate :cannot_select_pick_one

  belongs_to :user
end
