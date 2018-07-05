class BoroughsSite < ApplicationRecord
  belongs_to :borough
  belongs_to :site
end
