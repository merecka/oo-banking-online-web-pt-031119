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
  end

  def execute_transaction
    for self.status != "complete"
    self.sender.balance -= amount
    self.receiver.balance += amount
    self.status = "complete"
  end

end
