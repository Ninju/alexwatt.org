class PortfolioItem < ActiveRecord::Base
  attr_accessible :description, :name, :screenshot, :project_start_date

  scope :by_start_date, order: "project_start_date DESC"

  #has_attached_file :screenshot
  #validates_attachment_content_type :screenshot, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  mount_uploader :screenshot, PictureUploader
end
