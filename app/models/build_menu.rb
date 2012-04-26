class BuildMenu < ActiveRecord::Base
  belongs_to :mmenu
  belongs_to :recipe
end
