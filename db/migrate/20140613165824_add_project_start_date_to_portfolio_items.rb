class AddProjectStartDateToPortfolioItems < ActiveRecord::Migration
  def change
    add_column :portfolio_items, :project_start_date, :date
  end
end
