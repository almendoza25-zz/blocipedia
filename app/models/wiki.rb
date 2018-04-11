class Wiki < ApplicationRecord
  belongs_to :user

  def public?
    self.private == false
  end
end
