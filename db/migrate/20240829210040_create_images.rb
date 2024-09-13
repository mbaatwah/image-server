class CreateImages < ActiveRecord::Migration[7.2]
  def change
    create_table :images, id: false do |t|
      t.string :id, primary_key: true, null: false, default: :uuid
      t.string :url
      t.timestamps
    end
  end
end
