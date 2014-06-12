class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
