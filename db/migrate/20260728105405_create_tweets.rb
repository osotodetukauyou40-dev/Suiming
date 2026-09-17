class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :about
      t.text :review
      t.string :image

      t.timestamps
    end
  end
end
