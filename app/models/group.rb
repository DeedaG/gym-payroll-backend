class Group < ApplicationRecord
  belongs_to :record, optional: true
end
