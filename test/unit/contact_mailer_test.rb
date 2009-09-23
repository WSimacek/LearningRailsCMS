require File.dirname(__FILE__) + '/../test_helper'

class ContactMailerTest < ActionMailer::TestCase
  tests ContactMailer
  def test_message
    @expected.subject = read_fixture('message')
    @expected.body    = read_fixture('message')
    @expected.date    = Time.now

    assert_equal @expected.encoded, ContactMailer.create_message(@expected.date).encoded
  end

end
