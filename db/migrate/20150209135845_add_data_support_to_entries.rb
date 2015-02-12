class AddDataSupportToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :data, :text
    add_column :entries, :data_type, :string, limit: 16, default: 'unknown'
  end
end
