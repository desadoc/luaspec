
local function setfenv52(f, env)
  return load(
  string.dump(f),
  nil, nil, env
  )
end

if _VERSION == "Lua 5.3" then
  return setfenv52
end

if _VERSION == "Lua 5.2" then
  return setfenv52
end

if _VERSION == "Lua 5.1" then
  return setfenv
end
