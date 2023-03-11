class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table(:articles) do |table|
      table.string(:name)
      table.text(:body)

      table.timestamps
    end
  end
end
