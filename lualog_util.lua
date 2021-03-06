-- Print contents of `tbl`, with indentation.
-- `indent` sets the initial level of indentation.
function LUALOG.tprint (tbl, indent)
  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      print(formatting)
      LUALOG.tprint(v, indent+1)
    elseif type(v) == 'boolean' then
      print(formatting .. tostring(v))		
    else
      print(formatting .. v)
    end
  end
end


function LUALOG.quotetrim(s)
  -- from PiL2 20.4
  s = s:gsub("^%s*(.-)%s*$", "%1")
  return (s:gsub("^\"*(.-)\"*$", "%1"))
end

