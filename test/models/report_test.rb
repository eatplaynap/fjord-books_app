# frozen_string_literal: true

require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  test '#editable?' do
    user = User.create!(email: 'hoge@example.com', password: 'password')
    report = Report.create!(user_id: user.id, title: 'Great Day', content: 'Everything is awesome.')
    assert report.editable?(user)
  end

  test '#created_on' do
    user = User.create!(email: 'hoge@example.com', password: 'password')
    report = Report.create!(user_id: user.id, title: 'Great Day', content: 'Everything is awesome.', created_at: '2021/09/14')
    assert_equal Date.new(2021, 9, 14), report.created_on
  end
end
