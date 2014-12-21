class CreateChristmasCards < ActiveRecord::Migration
  def change
    create_table :christmas_cards do |t|

      t.timestamps
    end
  end
end
