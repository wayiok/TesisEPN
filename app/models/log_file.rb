class LogFile < ApplicationRecord
  has_one_attached :file

  validates :file, attached: true, content_type: ['text/x-log']
end
