class Log < ApplicationRecord
  belongs_to :quote

  delegate :data,:author,  to: :quote, prefix: true
end
