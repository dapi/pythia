class AppStage < ApplicationRecord
   self.primary_key = [:app_id, :stage_id]
  belongs_to :app
  belongs_to :stage
end
