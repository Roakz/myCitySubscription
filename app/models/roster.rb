class Roster < ApplicationRecord
  belongs_to :volunteer
  belongs_to :organisation
end
