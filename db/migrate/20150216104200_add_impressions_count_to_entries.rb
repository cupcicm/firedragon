class AddImpressionsCountToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :impressions_count, :integer, default: 0
  end
end
