class RenameScreenshotFileNameToScreenshotInPortfolioItems < ActiveRecord::Migration
  def change
    rename_column :portfolio_items, :screenshot_file_name, :screenshot
  end
end
