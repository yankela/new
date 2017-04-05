class TipCalculator
  attr_accessor :bill, :tip, :amount_of_people, :tip_amount, :total_bill, :my_share

  def start
    input
    calculate
    output
  end

  def input
    puts "Welcome to E-Z Calculator"
    puts "What is the total?"
    @bill = Float(gets)
    puts "How much would you like to pay in tip (in %)?"
    @tip = Float(gets)
    puts "How many people are in your party?"
    @amount_of_people = Float(gets)

    # [bill, tip, amount_of_people]
  end
end

def calculate
  @tip_amount = (tip / 100) * bill
  @total_bill = (bill + tip).to_f
  @my_share = (bill + tip).to_f / amount_of_people
end

def output
  if @tip_amount >= 0
    then puts 'Your tip amount is equal to $%.2f' % @tip_amount
  elsif @tip_amount < 0
    then puts 'Incorrect input. Must be greater than or equal to 0.'
  end

  if @total_bill >= 0
    then puts 'Your total and the tip is equal to $%.2f' % @total_bill
  elsif @total_bill < 0
    then puts 'Incorrect input. Must be greater than or equal to 0.'
  end

  if @my_share >= 0
    then puts 'Your share of the total is equal to $%.2f' % @my_share
  elsif @my_share < 0
    then puts 'Incorrect input. Must be greater than or equal to 0.'
  end
end

begin
tip_calculator = TipCalculator.new
tip_calculator.start
rescue
  p tip_calculator.bill
end
