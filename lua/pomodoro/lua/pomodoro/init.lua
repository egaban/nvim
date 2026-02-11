--- @class State
--- @field started boolean
--- @field time_left integer
--- @field current_statusline string
--- @field timer uv.uv_timer_t?

--- @type State
local state = {
	started = false,
	time_left = 0,
	current_statusline = vim.o.statusline,
	timer = vim.uv.new_timer(),
}

if state.timer == nil then
	print("Failed to start Pomodoro internal timer.")
end

local function display_time_left()
	local minutes_left = math.floor(state.time_left / 60)
	local seconds_left = state.time_left % 60

	vim.o.statusline = string.format("%s 🍅 %02d:%02d", state.current_statusline, minutes_left, seconds_left)
	-- TODO: Padding
end

local function tick()
	display_time_left()

	state.time_left = state.time_left - 1

	if state.time_left < 0 then
		state.time_left = 0
		state.started = false
		state.timer:stop()
	end
end

--- @param seconds string?
local function start_timer(seconds)
	if seconds == nil then
		return
	end

	local num_seconds = tonumber(seconds)
	if num_seconds == nil then
		print("Failed to parse number.")
		return
	end

	state.started = true
	state.time_left = math.floor(num_seconds)

	if state.timer ~= nil then
		state.timer:stop()
		state.timer:start(0, 1000, vim.schedule_wrap(tick))
	else
		print("No timer available.")
	end
end

vim.api.nvim_create_user_command("Pomodoro", function(opts)
	print(opts.args)
end, { nargs = 1 })

vim.keymap.set("n", "<leader>ps", function()
	start_timer("1500")
end)
vim.keymap.set("n", "<leader>pb", function()
	start_timer("300")
end)

local M = {
	setup = function() end,
	start = start_timer,
}

return M
