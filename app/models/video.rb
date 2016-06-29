class Video < ActiveRecord::Base
  has_attached_file :video
  validates_attachment_content_type :video, content_type: /\Avideo/
  validates_attachment_presence :video
end