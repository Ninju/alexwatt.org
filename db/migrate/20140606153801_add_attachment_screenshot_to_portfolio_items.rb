class AddAttachmentScreenshotToPortfolioItems < ActiveRecord::Migration
  def self.up
    change_table :portfolio_items do |t|
      t.attachment :screenshot
    end
  end

  def self.down
    drop_attached_file :portfolio_items, :screenshot
  end
end
