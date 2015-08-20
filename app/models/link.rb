class Link < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :url
  validates_uniqueness_of :url
end
