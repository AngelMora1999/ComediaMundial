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

class Video < ApplicationRecord
  #Referencias
  belongs_to :channel
end
