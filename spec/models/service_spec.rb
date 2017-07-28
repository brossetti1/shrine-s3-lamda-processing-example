# == Schema Information
#
# Table name: services
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  provider            :string
#  uid                 :string
#  access_token        :string
#  access_token_secret :string
#  refresh_token       :string
#  expires_at          :datetime
#  auth                :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_services_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe Service, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
