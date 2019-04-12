require 'pry'

class Transfer

  attr_accessor :transfer, :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount, status="pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status

  end

  binding.pry
  def valid?

  end

end
