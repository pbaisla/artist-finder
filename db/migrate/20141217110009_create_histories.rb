class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :name
      t.belongs_to :user
      t.timestamps
    end
  end
end
