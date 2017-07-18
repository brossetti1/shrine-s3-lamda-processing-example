# == Schema Information
#
# Table name: data_files
#
#  id            :integer          not null, primary key
#  name          :string
#  processor     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  document_data :text
#

class DataFile < ApplicationRecord
  # adds an `document` virtual attribute
  include FileUploader::Attachment.new(:document)
  
end
