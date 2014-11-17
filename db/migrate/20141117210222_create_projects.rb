class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :image_url
      t.string :project_url

      t.timestamps
    end
  end
end
