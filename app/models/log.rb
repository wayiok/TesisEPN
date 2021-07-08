class Log < ApplicationRecord
  belongs_to :query, optional: true
end
