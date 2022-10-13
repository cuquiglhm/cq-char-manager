RegisterNetEvent("cq-char-manager:newChar")
AddEventHandler("cq-char-manager:newChar", function(source, data)
  newChar(source, data);
end)

RegisterNetEvent("cq-char-manager:getChars")
AddEventHandler("cq-char-manager:getChars", function(source, cb)
  cb(getChars(source));
end)

function newChar(source, data)
  local identifier = GetPlayerIdentifiers(source)[1];
  local query = "INSERT INTO characters(char_owner, char_name, ...)";
  local insert = MySQL.Sync.execute(query, {});
  if (insert) then return true end;
end

function getChars(source)
  local identifier = GetPlayerIdentifiers(source)[1];
  local query = "SELECT * FROM characters WHERE char_owner = @identifier";
  local chars = MySQL.Sync.fetchAll(query, { ["@identifier"] = identifier });
  if chars[1] ~= nil then
    return chars[1];
  else
    return nil;
  end
end