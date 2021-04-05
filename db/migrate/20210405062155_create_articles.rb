class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      # automatically adds id column that is unique for each row
      t.string :title
      t.text :body

      # this defines two columns: created_at and updated_at
      # Rails manages these columns
      t.timestamps
    end
  end
end
