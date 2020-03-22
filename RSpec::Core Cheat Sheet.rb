Cheat Sheet

# Links: 
http://www.betterspecs.org/#let
https://docs.gitlab.com/ee/development/testing_guide/best_practices.html
https://thoughtbot.com/blog/four-phase-test
https://www.rubypigeon.com/posts/rspec-core-cheat-sheet/
https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers


1. RSpec::Core

# Let
# Variables that are recreated for every test.

let(:random_number) { "rand" }
let(:lazy_creation_time) { Class.now }


# Defining Methods
# Define arbitrary methods for use within your tests.

def my_helper_method(name)
  "Hello #{name}, you just got helped!"
end

my_helper_method(name)


# Hooks
# Run arbitrary code before or after each test or context.

before(:all)
after(:all)

before do
  order = Order.new(price: 100, cur: :uah, ammount: 20)
  @total = order.total_price_in_usd
end


#Pending
# Temporarily ignore failing tests.

pending 'has a failing expectation' do
  expect(1).to eq(2)
end

# Skipping
# Temporarily prevent tests from being run.

skip 'uses `skip` instead of `it`' do
end

xit 'uses `xit` instead of `it`' do
end


# These are the default aliases:

# Groups: context, example_group, describe
# Examples: it, example, specify

describe 'alternative to "context"' do
  specify 'alternative to "it"' do
    expect(2).to eq(2)
  end
end

# Described class

RSpec.describe Fixnum do
  describe 'inner' do
    describe String do
      it "is available as described_class" do
        expect(described_class).to eq(String)
      end
    end
  end
end


1. RSpec::Expectations

# rspec-expectations is used to define expected outcomes.

expect(5).to eq(5)
expect(5).not_to eq(4)

# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

#Basic Matchers
#These are the most commonly used matchers.

RSpec.describe 'Common, built-in expectation matchers' do
  example 'Equality' do
    expect('x'+'y').to     eq('xy')   # a == b
    expect('x'+'y').to     eql('xy')  # a.eql?(b)
    expect('x'+'y').not_to be('xy')   # a.equal?(b)
  end

  example 'Strings' do
    expect('abcd').to include('bc')
    expect('abcd').to start_with 'ab'
    expect('abcd').to end_with 'cd'
    expect('abcd').to match /[a-z]+/
  end

  example 'Collections' do
    expect([1, 2, 3]).to include(1, 3)
    expect([1, 2, 3]).to contain_exactly(3, 2, 1) # order not important
    expect({ a: 1, b: 2 }).to include(b: 2)
  end

  example 'Booleans and nil' do
    expect(true).to be true
    expect(false).to be false
    expect('abc').to be_truthy
    expect(nil).to be_falsey
    expect(nil).to be_nil
  end

  example 'Numeric' do
    expect(5).to be > 4
    expect(5).to be >= 4
    expect(5).to be < 6
    expect(5).to be <= 6
    expect(5).to be_between(4, 6).exclusive
    expect(5).to be_between(5, 6).inclusive
    expect(4.99).to be_within(0.02).of(5)
  end

  example 'Errors (exceptions)' do
    expect{ 5 / 0 }.to raise_error(ZeroDivisionError)
    expect{ 5 / 0 }.to raise_error("divided by 0")
    expect{ 5 / 0 }.to raise_error(ZeroDivisionError, "divided by 0")
  end
end

# Commonly used predicate methods in the Ruby standard library include: Object#nil?, Array#empty?, and Hash#has_key?.

RSpec.describe 'Predicate matchers' do
  example 'Array' do
    expect([]).to be_empty          # [].empty?
  end

  example 'Hash' do
    expect({a: 1}).to have_key(:a)   # {a: 1}.has_key?(:a)
    expect({a: 1}).to have_value(1)  # {a: 1}.has_value?(1)
  end

  example 'Object' do
    expect(5).not_to be_nil             # 'hi'.nil?
    expect(5).to be_instance_of Fixnum  # 5.instance_of?(Fixnum)
    expect(5).to be_kind_of Numeric     # 5.kind_of?(Numeric)
  end
end


