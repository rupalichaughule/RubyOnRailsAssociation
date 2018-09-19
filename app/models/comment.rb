class Comment < ApplicationRecord
  # attr_accessor :body, :commenter, :post
  validates :commenter, length: { minimum: 2, message: "no field blank" }
  validates :body, length: { maximum: 500, message: "no field blank"}
  belongs_to :post
end
