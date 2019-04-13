require 'pry'

class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount, status="pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status

  end

  def valid?
    self.sender != nil
    self.receiver != nil
    sender.valid?
    receiver.valid?
  #  binding.pry
  end

end
