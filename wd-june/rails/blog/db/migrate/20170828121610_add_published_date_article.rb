class AddPublishedDateArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :published_date, :date
  end
end
