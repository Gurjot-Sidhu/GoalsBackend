class Goal < ApplicationRecord
  belongs_to :user
  has_many :milestones, dependent: :destroy


  def completed 
      self.update(complete:!self.complete)
        self.milestones.each{|t|
        t.update(complete:true)
      }
  end
end

