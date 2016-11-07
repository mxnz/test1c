class Contragent < ApplicationRecord
  has_many :bank_accounts

  before_create -> { self.guid = SecureRandom.uuid; self.change_ver = 1 }
  before_update -> { self.change_ver += 1 }
end
