class PackageCrew < ActiveRecord::Base
  belongs_to :package
  belongs_to :crew
end
