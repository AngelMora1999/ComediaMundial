# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  code        :text
#  visit_count :integer          default("0")
#  channel_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
