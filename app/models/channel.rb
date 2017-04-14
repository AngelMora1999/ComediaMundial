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

class Channel < ApplicationRecord
  #Referencias
  belongs_to :user
  has_many :videos

  extend FriendlyId
  friendly_id :title, use: :slugged

  def update_visit_count
  	self.update(visit_count: self.visit_count + 1)
  end
end
