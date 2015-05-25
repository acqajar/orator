class Page < ActiveRecord::Base
  belongs_to :user
  belongs_to :template
end
