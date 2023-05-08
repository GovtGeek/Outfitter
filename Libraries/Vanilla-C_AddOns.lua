if C_AddOns == nil then
	C_AddOns = {}
	setmetatable(C_AddOns, {__index = function (t, funcname, args) return _G[funcname] end } )
end