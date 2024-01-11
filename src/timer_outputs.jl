# Timer Outputs has some overhead, so we only use it if we are debugging
# Even `@static_timeit` has overhead so we write our custom version of that using
# Preferences
const TIMER_OUTPUTS_ENABLED = @load_preference("enable_timer_outputs", false)

"""
    enable_timer_outputs()

Enable `TimerOutput` for all `NonlinearSolve` algorithms. This is useful for debugging
but has some overhead, so it is disabled by default.
"""
function enable_timer_outputs()
    @set_preferences!("enable_timer_outputs"=>true)
    @info "Timer Outputs Enabled. Restart the Julia session for this to take effect."
end

"""
    disable_timer_outputs()

Disable `TimerOutput` for all `NonlinearSolve` algorithms. This should be used when
`NonlinearSolve` is being used in performance-critical code.
"""
function disable_timer_outputs()
    @set_preferences!("enable_timer_outputs"=>false)
    @info "Timer Outputs Disabled. Restart the Julia session for this to take effect."
end

function get_timer_output()
    @static if TIMER_OUTPUTS_ENABLED
        return get_timer_output()
    else
        return nothing
    end
end

"""
    @static_timeit to name expr

Like `TimerOutputs.@timeit_debug` but has zero overhead if `TimerOutputs` is disabled via
`disable_timer_outputs()`.
"""
macro static_timeit(to, name, expr)
    @static if TIMER_OUTPUTS_ENABLED
        return TimerOutput.timer_expr(__module__, true, to, name, expr)
    else
        return esc(expr)
    end
end
