class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.string :title
      t.text :description
      t.attachment :avatar
      t.attachment :cover
      t.integer :visit_count, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
