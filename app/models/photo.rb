class Photo <ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture, styles: {medium: "300", thumb: "100x100#" }
  validates_attachment :picture, presence: true, content_type: {:content_type => /\Aimage/}
end
