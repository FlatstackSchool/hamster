class Story < ApplicationRecord
  validates_presence_of :title, :body

  # errors
  # { title: "can't be blank"}
end
