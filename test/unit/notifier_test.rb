require File.dirname(__FILE__) + '/../test_helper'

class NotifierTest < ActionMailer::TestCase
  tests Notifier
  def test_hello_world
    @expected.subject = 'Notifier#hello_world'
    @expected.body    = read_fixture('hello_world')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifier.create_hello_world(@expected.date).encoded
  end

end
