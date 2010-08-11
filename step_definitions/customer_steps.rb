

When /^I rent  the movie$/ do
  @rental=Rental.new(@movie,3)
  @customer.add_rental(@rental)
end


Given /^A regular movie "([^\"]*)"$/ do |name|
  @movie=Movie.new(name,0)
end
When /^A customer$/ do
   @customer=Customer.new("john")
end

#Rental Record for john\n\tmovie\t3.5\nAmount owned is 0\nYou earned 1 frequent renter points
Then /^I get result  "([^"]*)"$/ do |result|

   @customer.statement().should ==result
end