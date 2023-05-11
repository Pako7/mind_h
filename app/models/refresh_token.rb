# == Schema Information
#
# Table name: refresh_tokens
#
#  id         :bigint           not null, primary key
#  expire_at  :datetime
#  token      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_refresh_tokens_on_token    (token) UNIQUE
#  index_refresh_tokens_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class RefreshToken < ApplicationRecord
  belongs_to :user
end