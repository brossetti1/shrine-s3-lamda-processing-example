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

FactoryGirl.define do
  factory :service do
    user nil
    provider "MyString"
    uid "MyString"
    access_token "MyString"
    access_token_secret "MyString"
    refresh_token "MyString"
    expires_at "2017-07-27 18:57:09"
    auth "MyText"
  end
end
