# Copyright (c) 2016 SolarWinds, LLC.
# All rights reserved.

require 'minitest_helper'
require './lib/solarwinds_apm/support/oboe_tracing_mode'

describe 'OboeTracingModeTest.rb' do
  before do
    @oboe_tracing_mode = SolarWindsAPM::OboeTracingMode
  end

  it 'test get_oboe_trace_mode' do
    result = @oboe_tracing_mode.get_oboe_trace_mode("")
    _(result).must_equal(-1)

    result = @oboe_tracing_mode.get_oboe_trace_mode(nil)
    _(result).must_equal(-1)

    result = @oboe_tracing_mode.get_oboe_trace_mode(:enabled)
    _(result).must_equal 1

    result = @oboe_tracing_mode.get_oboe_trace_mode(:disabled)
    _(result).must_equal 0
  end

  it 'test get_oboe_trigger_trace_mode' do
    result = @oboe_tracing_mode.get_oboe_trigger_trace_mode("")
    _(result).must_equal(-1)

    result = @oboe_tracing_mode.get_oboe_trigger_trace_mode(nil)
    _(result).must_equal(-1)

    result = @oboe_tracing_mode.get_oboe_trigger_trace_mode(:enabled)
    _(result).must_equal 1

    result = @oboe_tracing_mode.get_oboe_trigger_trace_mode(:disabled)
    _(result).must_equal 0
  end
end
