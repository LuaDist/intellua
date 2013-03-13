local oldrequire = require
local dist = require "dist"
local modules = require "intellua.modules"

local newrequire = function(mod)
	local ok, res = pcall(oldrequire, mod)
	if ok then
		return res
	else
		local where = modules[mod]
		if type(where) == "string" then
			assert(dist.install(where))
		else
			io.write('The module "', mod, '" is provided by the following packages: ')
			for i,m in ipairs(where) do
				io.write(m, ' ')
			end
			io.write('\nChoose package to install: ')
			local choice = io.read()
			assert(dist.install(choice))
		end
		return oldrequire(mod)
	end
end

return newrequire
