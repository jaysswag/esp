--[bypasses blacklisted emoji such as cucumber and peach

--]

a=getrawmetatable(game)
b=a.__namecall
setreadonly(a,false)
a.__namecall = function(self,...)
if self and self.Name == "SayMessageRequest" then
return b(unpack({self,({...})[1]..string.char(240,159,141,134),({...})[2]}))
end
return b(self,...)
end
