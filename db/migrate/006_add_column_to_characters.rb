class AddColumnToCharacters < ActiveRecord::Migration[5.2]
  
  add_column :characters, :catchphrase, :string
  
end 