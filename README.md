# Inject & Take Away challenge

## Task 1: **Inject**

- Reopen the Array class or subclass it. 
- Rewrite the inject method.
- Write a test for it first (assume a block is always given). 
- Name my method differently (to avoid the test to fail since rspec uses inject() internally)
- Rewrite inject using two approaches:
  - using iterators; 
  - using recursion (although not required to pass the test). 

-------------------------------------------------------------

## Task 2 **The Take Away**

**The class Takeaway should implement the following functionality:** 
- List of dishes with prices placing the order by giving the list of dishes, their quantities and a number that should be the exact total.
- If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52". 
- The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free. Use twilio-ruby gem to access the API Use a Gemfile to manage your gems.
- Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run. However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent. A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.

-------------------------------------------------------------

####Skills
- [Rspec](https://github.com/rspec/rspec)
- [Ruby Gems](https://rubygems.org)
  - in particular [twilio-ruby 3.13.1](https://rubygems.org/gems/twilio-ruby)
- [Twilio](https://www.twilio.com/)
