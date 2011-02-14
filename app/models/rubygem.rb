class Rubygem < ActiveRecord::Base
  ROUTE_MATCHER = /[A-Za-z0-9\-\_\.]+/
  NAME_MATCHER = /^#{ROUTE_MATCHER}$/
  
  validates_uniqueness_of :name
  validates_format_of :name, with: NAME_MATCHER
end
