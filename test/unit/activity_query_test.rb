require File.expand_path('../test_helper', __dir__)

class ActivityQueryTest < ActiveSupport::TestCase
  def test_initialize_available_filters_sets_updated_on_filter_once
    query = ActivityQuery.new
    query.initialize_available_filters

    assert query.available_filters.key?('updated_on'), 'updated_on filter should be present'
    assert_equal 1, query.available_filters.keys.count { |k| k == 'updated_on' }, 'updated_on filter should be defined only once'

    filter = query.available_filters['updated_on']
    assert_not_nil filter, 'updated_on filter should not be nil'
    assert_equal :date_past, filter[:type]
    assert_equal I18n.t(:label_activity_date), filter[:name]
  end
end
