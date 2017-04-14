class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.text :code
      t.integer :visit_count, default: 0
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
