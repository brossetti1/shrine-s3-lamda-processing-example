class AddUploadToDataFile < ActiveRecord::Migration[5.1]
  def change
    add_column :data_files, :document_data, :text
  end
end
