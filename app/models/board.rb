class Board < ActiveRecord::Base
  has_many :notes

  before_create :generate_hex

  private

  def generate_hex
    begin
      self.hex = SecureRandom.hex(8)
    end while Board.exists?(hex: hex)
  end
end
