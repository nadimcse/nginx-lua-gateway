local cjson = require "cjson"
local jwt = require "resty.jwt"
local redirect = "false"
local status = "INVALID_TOKEN"

local token = ngx.req.get_headers()["TOKEN"]


if token == nil then
	redirect = "true"
	status = "INVALID_TOKEN"
else

    local tokenId = "auth"

   

    ngx.log(ngx.ERR, tokenId)

 
end


if redirect == "true" then
	-- Build json response at Nginx using Lua
	ngx.status = ngx.HTTP_UNAUTHORIZED
	ngx.header.content_type = "application/json; charset=utf-8"
	ngx.say(cjson.encode({ status = status }))
	return ngx.exit(ngx.HTTP_UNAUTHORIZED)
end
