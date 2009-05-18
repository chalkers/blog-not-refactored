class Comment < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :body
  
  validates_format_of :email, :with => /^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
  validates_format_of :website, :with => /^http:\/\//
  
end
