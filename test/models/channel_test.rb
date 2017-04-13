# == Schema Information
#
# Table name: channels
#
#  id                  :integer          not null, primary key
#  title               :string
#  description         :text
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  cover_file_name     :string
#  cover_content_type  :string
#  cover_file_size     :integer
#  cover_updated_at    :datetime
#  visit_count         :integer          default("0")
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
