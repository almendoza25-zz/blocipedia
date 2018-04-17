class Wiki < ApplicationRecord
  belongs_to :user

  after_initialize :default_values

  private 

  def default_values
    self.private ||= false
  end
end
