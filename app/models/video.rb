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

  #Mandar a llamar a friendly_id
  extend FriendlyId
  friendly_id :title, use: :slugged

  def update_visit_count
  	self.update(visit_count: self.visit_count + 1)
  end
end
