class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.date       :date        , null: false
      t.integer    :position_id , null: false
      t.integer    :result_id   , null: false
      t.references :user        , foreign_key: true
      t.timestamps
    end
  end
end
