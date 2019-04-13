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
    if self.status != "complete" && self.sender.balance < self.amount
      self.sender.balance -= amount
      self.receiver.balance += amount
      self.status = "complete"
    #  binding.pry
    else
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end

end
