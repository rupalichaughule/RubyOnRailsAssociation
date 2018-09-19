class Post < ApplicationRecord
    # attr_accessor :content, :name, :title
 
     validates :name,  :presence => true
     validates :title, :presence => true,
                       :length => { :minimum => 5 }
     validates :content, :presence => true,
                       :length => { :minimum => 5, message:"no field blank" }
                       
    has_many :comments, dependent: :destroy
end
