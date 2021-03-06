extend ChoicesQuantifiable::Cleanliness
# == Schema Information
#
# Table name: desired_schedules
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  work                :integer
#  sleep               :integer
#  bathroom            :integer
#  kitchen             :integer
#  user_id             :integer
#  kitchen_importance  :integer
#  bathroom_importance :integer
#  work_importance     :integer
#  sleep_importance    :integer
#

class DesiredSchedule < ActiveRecord::Base
  include HowImportantToYouAble
  extend ChoicesQuantifiable::Schedule
  include Validatable
  extend InputColumnable::ClassMethods
  include InputColumnable
  belongs_to :user

  validate :preference_and_importance_entered?
end
