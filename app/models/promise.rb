class Promise < ApplicationRecord
  validates_presence_of :description, :author
end
