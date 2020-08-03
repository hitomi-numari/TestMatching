class CreateApplyToBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :apply_to_blogs do |t|
      t.integer :user_id
      t.integer :blog_id

      t.timestamps
    end
  end
end
