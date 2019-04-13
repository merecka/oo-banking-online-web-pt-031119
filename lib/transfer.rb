require 'pry'

class Transfer

  attr_accessor :sender, :receiver, :status, :amount, :last_amount, :last_sender, :last_receiver

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
    if self.status != "complete" && self.sender.balance > self.amount
      self.last_amount = self.amount
      self.last_sender = self.sender
      self.last_receiver = self.receiver
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer

  end

end
