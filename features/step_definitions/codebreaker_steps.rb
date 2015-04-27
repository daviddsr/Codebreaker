Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = Codebreaker::Game.new(my_output)
  game.start
end

Then(/^I should see "([^"]*)"$/) do |message|
  my_output.messages.should include(message)
end



class Output

  def initialize
    @messages = []
  end

  def messages
    @messages ||= []
  end

  def puts(message)
    @messages << message
  end
end

def my_output
  @output ||= Output.new
end