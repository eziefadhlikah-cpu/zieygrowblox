local _0x2582 = (getgenv and getgenv()) or _G
for _0xF439, _0x795E in ipairs({"__ZieyHUB"}) doif _0x2582[_0x795E] and _0x2582[_0x795E].Cleanup then pcall(_0x2582[_0x795E].Cleanup) end
_0x2582[_0x795E] = nil
end
local _0x7528 = {}
_0x2582.__ZieyHUB = _0x7528
local function _0xCA76()
return _0x2582.__ZieyHUB == _0x7528 and not _0x7528.Failed
enddo (function()
local _0xED49, _0x9C57
local _0xDE6D, _0xE17E ="Memulai Script ziey", os.clock()
function _0x7528.GuiParent(fallback)
if not fallback then
local _0xBFDC = game:GetService("Players").LocalPlayer
fallback = _0xBFDC and (_0xBFDC:FindFirstChildOfClass("PlayerGui") or _0xBFDC:FindFirstChild("PlayerGui"))
end
local _0x119F = fallback
if type(gethui) =="function"then
local _0xF64E, _0x09FD = pcall(gethui)
if _0xF64E and _0x09FD then _0x119F = _0x09FD end
end
if _0x119F then
local _0x40D7 = Instance.new("ScreenGui")
local _0xF64E = pcall(function() _0x40D7.Parent = _0x119F end)
pcall(function() _0x40D7:Destroy() end)
if _0xF64E then return _0x119F end
end
assert(fallback,"PlayerGui belum tersedia; tunggu game selesai masuk")
return fallback
end
local function _0x0EAE(_0xF55F)
if not _0x9C57 then
pcall(function()
_0xED49 = Instance.new("ScreenGui")
_0xED49.Name, _0xED49.ResetOnSpawn, _0xED49.IgnoreGuiInset ="ZieyHUBStartup", false, true
_0xED49.DisplayOrder = 2000000
_0xED49.Parent = _0x7528.GuiParent()
local _0x35B0 = Instance.new("Frame")
_0x35B0.AnchorPoint, _0x35B0.Position = Vector2.new(0.5, 1), UDim2.new(0.5, 0, 0.97, 0)
_0x35B0.Size, _0x35B0.BackgroundColor3 = UDim2.new(0.9, 0, 0, 154), Color3.fromRGB(20, 22, 29)
_0x35B0.Parent = _0xED49
_0x9C57 = Instance.new("TextLabel")
_0x9C57.Position, _0x9C57.Size = UDim2.new(0, 10, 0, 8), UDim2.new(1, -42, 1, -16)
_0x9C57.BackgroundTransparency, _0x9C57.Font, _0x9C57.TextSize = 1, Enum.Font.Code, 13
_0x9C57.TextColor3, _0x9C57.TextWrapped = Color3.fromRGB(245, 245, 245), true
_0x9C57.TextXAlignment, _0x9C57.TextYAlignment = Enum.TextXAlignment.Left, Enum.TextYAlignment.Top
_0x9C57.Parent = _0x35B0
local _0x2C5A = Instance.new("TextButton")
_0x2C5A.Size, _0x2C5A.Position, _0x2C5A.Text = UDim2.new(0, 26, 0, 26), UDim2.new(1, -30, 0, 4),"X"_0x2C5A.Parent = _0x35B0
_0x2C5A.MouseButton1Click:Connect(function() _0x7528.CloseBoot() end)
end)
end
if _0x9C57 then pcall(function() _0x9C57.Text ="ziey HUB Script\n".. tostring(_0xF55F):sub(1, 1100) end) end
end
function _0x7528.Report(_0xF55F)
_0xDE6D, _0xE17E = tostring(_0xF55F), os.clock()
warn("[ziey HUB startup] ".. _0xDE6D)
_0x0EAE(_0xDE6D)
end
function _0x7528.CloseBoot()
if _0xED49 then pcall(function() _0xED49:Destroy() end) end
_0xED49, _0x9C57 = nil, nil
end
function _0x7528.FailStartup(_0xF55F)
_0x7528.Failed = true
_0x7528.ResetPartial()
_0x7528.Report("GAGAL: ".. _0xDE6D .."\n".. tostring(_0xF55F) .."\nKirim screenshot kotak ini.")
end
function _0x7528.ResetPartial()
if _0x7528.UnbindInput then pcall(_0x7528.UnbindInput) end
for _0xF439, _0x5B56 in ipairs(_0x7528.StartupConnections or {}) do pcall(function() _0x5B56:Disconnect() end) end
for _0xF439, _0x7F8F in ipairs(_0x7528.StartupGuis or {}) do pcall(function() _0x7F8F:Destroy() end) end
if _0x7528.StartupWindow then pcall(function() _0x7528.StartupWindow:Destroy() end) end
end
_0x7528.Cleanup = function() _0x7528.ResetPartial(); _0x7528.CloseBoot() end
_0x7528.Report(_0xDE6D)
task.spawn(function()
while _0xCA76() and not _0x7528.Ready and not _0x7528.Failed do
task.wait(0.5)
local _0x2A9C = math.floor(os.clock() - _0xE17E)
if not _0x7528.Ready and not _0x7528.Failed and _0x2A9C >= 10 then
_0x0EAE("Masih memuat (".. _0x2A9C .." detik): ".. _0xDE6D .."\nKirim screenshot jika tetap berhenti di sini.")
end
end
end)
end)() end
local _0x339D, _0x4DDC = xpcall(function()
do
local _0xF80A = getthreadidentity or get_thread_identity or getidentity or (syn and syn.get_thread_identity)
if type(_0xF80A) =="function"then pcall(function() _0x7528.Ident = _0xF80A() end) end
_0x7528.Exec = coroutine.create(function(_0x740F)
while true do
_0x740F.ok, _0x740F.err = pcall(_0x740F.fn)
_0x740F.done = true
_0x7528.ExecBusy = false
_0x740F = coroutine.yield()
end
end)
endlocal _0x7F48 = game:GetService("Players")
local _0x47E2 = game:GetService("ReplicatedStorage")
local _0xED14 = game:GetService("RunService")
local _0x2507 = game:GetService("VirtualUser")
local _0xE3CF = game:GetService("UserInputService")
local _0x8270 = _0x7F48.LocalPlayer
_0x7528.Report("Menunggu PlayerGui")
assert(_0x8270,"Masuk ke game Roblox terlebih dahulu")
local _0xE807 = _0x8270:WaitForChild("PlayerGui", 15)
assert(_0xE807,"PlayerGui belum tersedia setelah 15 detik; masuk world lalu execute ulang")local _0xA5D7 = (function()
local _0x1D35 = { Modules = {}, Errors = {}, Sources = {}, Missing = {}, Version ="startup r10"}
local _0xC546 = { itemdb = true, _0x2176 = true, net = true, particles = true,
worldmenu = true, roles = true, sfx = true, splice = true }
local _0xC95D, _0xFCDD, _0x503B, _0x1416 = {}, {}, nil, nil
local function _0xC346(_0xF5A6)
_0x7528.Report("Data game: ".. tostring(_0xF5A6))
local _0x509A = _0x2582.__PianLaunchReport
if type(_0x509A) =="function"then pcall(_0x509A,"Startup r10: ".. _0xF5A6) end
end
local function _0xB67B(_0x97A1, _0xC0A8)
local _0xF64E, _0x09FD = pcall(function() return _0x97A1[_0xC0A8] end)
if _0xF64E then return _0x09FD end
end
local function _0x715C(node)
local _0xF64E, _0x09FD = pcall(function() return node:GetFullName() end)
return _0xF64E and tostring(_0x09FD) or tostring(_0xB67B(node,"Name") or"modul")
end
local function _0x8F15(node)
if _0xC95D[node] then return end
_0xC95D[node] = true
local _0xDF0A = _0xB67B(node,"Name")
if type(_0xDF0A) ~="string"then return end
local _0x795E = string.lower(_0xDF0A)
if _0x795E =="worldremotes"and not _0x503B then _0x503B = node end
if _0x795E =="gamegui"and not _0x1416 then _0x1416 = node end
if not _0xC546[_0x795E] then return end
local _0xF64E, _0xA189 = pcall(function() return node:IsA("ModuleScript") end)
if not (_0xF64E and _0xA189) then return end
local _0x026D = _0x1D35.Modules[_0x795E]
if not _0x026D then _0x026D = {}; _0x1D35.Modules[_0x795E] = _0x026D end
if #_0x026D < 8 then _0x026D[#_0x026D + 1] = node end
end
local _0xFDF4 = _0x47E2:FindFirstChild("Shared")
if _0xFDF4 then
local _0xF64E, _0x0780 = pcall(function() return _0xFDF4:GetChildren() end)
if _0xF64E then for _0xF439, node in ipairs(_0x0780) do _0x8F15(node) end end
end
_0xFCDD[#_0xFCDD + 1] = _0x47E2
_0xFCDD[#_0xFCDD + 1] = _0xE807
local _0xF1B6 = _0x8270:FindFirstChild("PlayerScripts")
if _0xF1B6 then _0xFCDD[#_0xFCDD + 1] = _0xF1B6 end
local _0x92C7, _0x25C5 = pcall(game.GetService, game,"ReplicatedFirst")
if _0x92C7 and _0x25C5 then _0xFCDD[#_0xFCDD + 1] = _0x25C5 end
_0xC346("mencari modul yang tersedia")
for _0xF439, _0x119F in ipairs(_0xFCDD) do
_0x8F15(_0x119F)
local _0xF64E, _0xC673 = pcall(function() return _0x119F:GetDescendants() end)
if _0xF64E and type(_0xC673) =="table"then
for _0x7180, node in ipairs(_0xC673) do
_0x8F15(node)
if _0x7180 % 400 == 0 then task.wait() end
end
end
end
for _0xF439, enumerate in ipairs({ getloadedmodules or false, getnilinstances or false }) do
if type(enumerate) =="function"then
local _0xF64E, _0x3AB4 = pcall(enumerate)
if _0xF64E and type(_0x3AB4) =="table"then
for _0xF439, node in pairs(_0x3AB4) do _0x8F15(node) end
end
end
end
function _0x1D35:FindFirstChild(_0xDF0A)
local _0x026D = self.Modules[string.lower(tostring(_0xDF0A))]
return _0x026D and _0x026D[1] or nil
end
function _0x1D35.catalog(_0x09FD)
if type(_0x09FD) ~="table"then return false end
local _0x157D, _0x123C = 0, 0
for _0x2010, _0x7ADC in next, _0x09FD do
_0x123C = _0x123C + 1
if type(_0x2010) =="number"and type(_0x7ADC) =="table"and type(rawget(_0x7ADC,"name")) =="string"and (type(rawget(_0x7ADC,"hits")) =="number"or type(rawget(_0x7ADC,"solid")) =="boolean"or type(rawget(_0x7ADC,"grow")) =="number") then
_0x157D = _0x157D + 1
if _0x157D >= 3 then return true end
end
if _0x123C >= 64 then break end
end
return false
end
function _0x1D35.network(_0x09FD)
if type(_0x09FD) ~="table"then return false end
local _0xABE0, _0xF5D9 = rawget(_0x09FD,"tile"), rawget(_0x09FD,"act")
return type(_0xABE0) =="table"and type(_0xB67B(_0xABE0,"send")) =="function"and type(_0xF5D9) =="table"and type(_0xB67B(_0xF5D9,"send")) =="function"end
local function _0xE68B(node)
if not (task and type(task.spawn) =="function"and type(task.wait) =="function") then
return false,"task.spawn / task.wait tidak tersedia"end
local _0x740F = { _0xC49C = false }
local _0xACA1 = task.spawn(function()
_0x740F.ok, _0x740F.value = pcall(require, node)
_0x740F.done = true
end)
local _0x57E7 = os.clock()
while not _0x740F.done and os.clock() - _0x57E7 < 3 do task.wait() end
if not _0x740F.done then
if type(task.cancel) =="function"then pcall(task.cancel, _0xACA1) end
return false,"require melewati batas 3 detik"end
return _0x740F.ok, _0x740F.value
end
local function _0x6D6F(_0xDF0A, _0x7D77)
local _0xD1BC = _0x1D35.Modules[string.lower(_0xDF0A)] or {}
for _0xF439, node in ipairs(_0xD1BC) do
_0xC346("memuat ".. _0xDF0A .." dari ".. _0x715C(node))
local _0xF64E, _0x09FD = _0xE68B(node)
if _0xF64E and type(_0x09FD) =="table"and (not _0x7D77 or _0x7D77(_0x09FD)) then
_0x1D35.Sources[_0xDF0A] = _0x715C(node)
return true, _0x09FD
end
_0x1D35.Errors[#_0x1D35.Errors + 1] = _0xDF0A .." @ ".. _0x715C(node) ..": ".. (_0xF64E and"format modul tidak cocok"or tostring(_0x09FD))
end
return false, nil
end
function _0x1D35:Load(_0xDF0A)
return _0x6D6F(_0xDF0A)
end
local _0xD439
_0xD439, _0x1D35.ItemDB = _0x6D6F("ItemDB", _0x1D35.catalog)
_0x1D35.InventoryOK, _0x1D35.Inventory = _0x6D6F("Inventory")
_0x1D35.NetOK, _0x1D35.Net = _0x6D6F("Net", _0x1D35.network)
_0x1D35.ParticlesOK, _0x1D35.Particles = _0x6D6F("Particles")
_0x1D35.MenuOK, _0x1D35.Menu = _0x6D6F("WorldMenu")
_0x1D35.RolesOK, _0x1D35.Roles = _0x6D6F("Roles")
_0x1D35.SfxOK, _0x1D35.Sfx = _0x6D6F("Sfx")if (not _0xD439 or not _0x1D35.NetOK) and type(getgc) =="function"then
_0xC346("mencari data item / jaringan yang sudah dimuat game")
local _0xF64E, _0xFDAA = pcall(getgc, true)
if _0xF64E and type(_0xFDAA) =="table"then
local function _0xC6CF(_0x09FD, _0x9C57)
if type(_0x09FD) ~="table"or _0x09FD == _0x2582 or _0x09FD == _G or _0x09FD == _0x1D35 then return end
if not _0xD439 and _0x1D35.catalog(_0x09FD) then
_0xD439, _0x1D35.ItemDB = true, _0x09FD
_0x1D35.Sources.ItemDB = _0x9C57
end
if not _0x1D35.NetOK and _0x1D35.network(_0x09FD) then
_0x1D35.NetOK, _0x1D35.Net = true, _0x09FD
_0x1D35.Sources.Net = _0x9C57
end
end
local _0x123C = 0
for _0xF439, _0x09FD in pairs(_0xFDAA) do
_0xC6CF(_0x09FD,"data game yang sudah dimuat (getgc)")
_0x123C = _0x123C + 1
if _0xD439 and _0x1D35.NetOK then break end
if _0x123C % 300 == 0 then task.wait() end
endif not _0xD439 or not _0x1D35.NetOK then
_0xC346("menelusuri data modul yang ditangkap fungsi game")
local _0xE08E = getupvalues or (debug and debug.getupvalues)
local _0xB2AC = getupvalue or (debug and debug.getupvalue)
for _0xF439, _0x74A9 in pairs(_0xFDAA) do
if type(_0x74A9) =="function"then
local _0xC245
if type(_0xE08E) =="function"then
local _0xD957, _0xA996 = pcall(_0xE08E, _0x74A9)
if _0xD957 and type(_0xA996) =="table"then _0xC245 = _0xA996 end
end
if _0xC245 then
for _0xF439, _0x09FD in pairs(_0xC245) do _0xC6CF(_0x09FD,"upvalue fungsi game") end
elseif type(_0xB2AC) =="function"then
for _0x7180 = 1, 40 do
local _0x0B34, _0x25C5, _0x4561 = pcall(_0xB2AC, _0x74A9, _0x7180)
if not _0x0B34 or (_0x25C5 == nil and _0x4561 == nil) then break end
_0xC6CF(_0x4561 ~= nil and _0x4561 or _0x25C5,"upvalue fungsi game")
end
end
end
_0x123C = _0x123C + 1
if _0xD439 and _0x1D35.NetOK then break end
if _0x123C % 200 == 0 then task.wait() end
end
end
end
end
_0x1D35.Inventory = _0x1D35.Inventory or {}
_0x1D35.GameGui = _0x1416 or _0xE807
_0x1D35.Remotes = _0x503B
if not _0x503B then
_0x1D35.EmptyRemotes = Instance.new("Folder")
_0x1D35.EmptyRemotes.Name ="ZieyHUBRemotes"_0x1D35.Remotes = _0x1D35.EmptyRemotes
end
for _0xF439, _0x7ADC in ipairs({ {"Inventory", _0x1D35.InventoryOK}, {"Net", _0x1D35.NetOK},
{"Particles", _0x1D35.ParticlesOK}, {"WorldMenu", _0x1D35.MenuOK}, {"Roles", _0x1D35.RolesOK}, {"Sfx", _0x1D35.SfxOK} }) do
if not _0x7ADC[2] then _0x1D35.Missing[#_0x1D35.Missing + 1] = _0x7ADC[1] end
end
_0x1D35.Status ="ItemDB: ".. tostring(_0x1D35.Sources.ItemDB or"belum ditemukan")
.. (#_0x1D35.Missing > 0 and (" | modul opsional belum terbaca: ".. table.concat(_0x1D35.Missing,", ")) or"")
if not _0xD439 then
local _0xFBD6 = {}
for _0xDF0A, _0xD1BC in pairs(_0x1D35.Modules) do
if #_0xD1BC > 0 then _0xFBD6[#_0xFBD6 + 1] = _0xDF0A .." @ ".. _0x715C(_0xD1BC[1]) end
end
table.sort(_0xFBD6)
local _0xF55F ="ItemDB belum ditemukan. Script tidak akan menunggu Shared tanpa batas.\n".."Modul terbaca: ".. (#_0xFBD6 > 0 and table.concat(_0xFBD6,"; ") or"tidak ada nama modul lama")
.. (#_0x1D35.Errors > 0 and ("\n".. table.concat(_0x1D35.Errors,"\n")) or"")
_0xC346(_0xF55F)
pcall(function()
local _0xED49 = Instance.new("ScreenGui")
_0xED49.Name, _0xED49.ResetOnSpawn, _0xED49.DisplayOrder ="ZieyHUBStartupProblem", false, 1000000
_0xED49.Parent = _0xE807
local _0xF5A6 = Instance.new("TextLabel")
_0xF5A6.Size, _0xF5A6.Position = UDim2.new(0.9, 0, 0.55, 0), UDim2.new(0.05, 0, 0.4, 0)
_0xF5A6.BackgroundColor3, _0xF5A6.TextColor3 = Color3.fromRGB(20, 22, 29), Color3.new(1, 1, 1)
_0xF5A6.TextWrapped, _0xF5A6.TextSize = true, 15
_0xF5A6.Text ="PIAN STARTUP r10\n".. _0xF55F:sub(1, 1400) .."\nKirim screenshot kotak ini."_0xF5A6.Parent = _0xED49
end)
if _0x1D35.EmptyRemotes then _0x1D35.EmptyRemotes:Destroy() end
error(_0xF55F, 0)
end
_0xC346(_0x1D35.Status)
return _0x1D35
end)()
local _0x84AE = _0xA5D7.Remotes
local _0x49C2 = _0x84AE:FindFirstChild("SetTile")
local _0xD7DB = _0xA5D7.ItemDB
local _0xFB94 = _0xA5D7.Inventory
local _0x7025, _0x5E7F = _0xA5D7.NetOK, _0xA5D7.Net
local _0xD67E = _0xA5D7.GameGui
local _0xE6F2, _0xA072 = _0xA5D7.ParticlesOK, _0xA5D7.Particles
local _0xB298, _0x748C = _0xA5D7.MenuOK, _0xA5D7.Menu
local _0x274D, _0x8EC3 = _0xA5D7.RolesOK, _0xA5D7.Roles
local _0xF5DC, _0x9220 = _0xA5D7.SfxOK, _0xA5D7.Sfx
local _0xAA36 = (function()
local _0x86A6 = {"https://github.com/Footagesus/WindUI/releases/download/1.6.66/main.lua","https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua",
}
local _0x797B = {}
for _0x7180, _0xD8C6 in ipairs(_0x86A6) do
_0x7528.Report(("Mengunduh UI (%d/%d)"):format(_0x7180, #_0x86A6))
local _0x740F = { _0xC49C = false }
local _0xACA1 = task.spawn(function()
_0x740F.ok, _0x740F.body = pcall(game.HttpGet, game, _0xD8C6)
_0x740F.done = true
end)
local _0xC4F6 = os.clock()
while not _0x740F.done and _0xCA76() and os.clock() - _0xC4F6 < 12 do task.wait(0.05) end
if not _0xCA76() then error("Sesi tes sudah diganti / ditutup", 0) end
if not _0x740F.done then
if type(task.cancel) =="function"then pcall(task.cancel, _0xACA1) end
_0x797B[#_0x797B + 1] ="Jalur ".. _0x7180 ..": HTTP melewati 12 detik"elseif not _0x740F.ok or type(_0x740F.body) ~="string"or #_0x740F.body < 1000 then
_0x797B[#_0x797B + 1] ="Jalur ".. _0x7180 ..": ".. tostring(_0x740F.body):sub(1, 150)
else
_0x7528.Report("Memuat pustaka UI dari jalur ".. _0x7180)
local _0x7193, _0x9B45 = loadstring(_0x740F.body,"=ZieyHUBWindUI")
if _0x7193 thenif type(getfenv) =="function"and type(setfenv) =="function"then
local _0x1BB8, _0xCF67 = pcall(getfenv, _0x7193)
if _0x1BB8 and type(_0xCF67) =="table"then
local _0xEC00 = setmetatable({
gethui = function() return _0x7528.GuiParent(_0xE807) end,
}, { __index = _0xCF67, __newindex = _0xCF67 })
pcall(setfenv, _0x7193, _0xEC00)
end
end
local _0xF64E, _0x85CE = pcall(_0x7193)
if _0xF64E and type(_0x85CE) =="table"and type(_0x85CE.CreateWindow) =="function"then return _0x85CE end
_0x797B[#_0x797B + 1] ="Jalur ".. _0x7180 ..": ".. tostring(_0x85CE):sub(1, 180)
else
_0x797B[#_0x797B + 1] ="Jalur ".. _0x7180 ..": ".. tostring(_0x9B45):sub(1, 180)
end
end
end
error("WindUI gagal dimuat. ".. table.concat(_0x797B," | "), 0)
end)()local _0x5D82 = {
Running = false,
Mode ="Place + Break",PlaceMs = 250,BreakMs = 220,AfterBreakMs = 300,HitsOverride = 0,BreakBackground = true,MultiTarget = 1,SelectedId = nil,
Offsets = {},CalibX = 0,
CalibY = 0,
AntiAfk = true,
MutePunch = true,
Visual = true,LiteMode = false,
AutoCollect = true,CollectAround = false,CollectRadius = 3,CollectMode ="Sentuhan",Override = nil,Quiet = false,Cycles = 0,
Placed = 0,
Broken = 0,
Collected = 0,CollectFail = 0,LastAction ="-",
SeedDrop = false,SeedDropAt = 190,SeedKeep = 0,Dropped = 0,
DropPause = false,}
local _0xFA1E = {
Speed = 100,InfJump = false,
Ghost = false,UpHeld = false,DownHeld = false,CustomName = true,NameText ="ziey HUB",}local _0xD222 = {
Running = false,
IncludeBg = true,UseBlock = true,ScaffoldId = nil,Collect = true,Sweep ="Kiri → Kanan",Skip = {},TopRow = -1,DirRow = nil,Dir = nil,
Broken = 0,
Remaining = -1,
Status ="-",
}local _0xD808 = {
Running = false,
Roam = true,Roaming = false,
_0x4F45 = nil,
_0x4112 = nil,
Ms = 300,
Made = 0,
Planted = 0,
Fail = {},
Skip = {},
Status ="-",
Row = {},}local _0x0DAF = {
X0 = 0, X1 = 99,Y0 = 2,Gap = 2,Rows = 10,Stairs = true,}local _0x3F90 = {
Running = false,
BlockId = nil,
UseBlock = true,Produce = true,ThenPabrik = false,Placed = 0,
Phase ="-",
Status ="-",
Skip = {},
FieldSkip = {},Row = {},Harvested = 0,
Planted = 0,
Dug = 0,Carved = {},Surface = nil,Under = {},_0xBA5B = {},LavaSkip = {},LavaCleared = 0,
PunchMs = 200,Reserve = 0,RESERVE = 10,BreakX = -1, BreakY = -1,Tiles = {},}local _0x5F2F = {
Running = false,
Mode ="Isi stock dari drop",Point ="",Status ="-",
Stocked = 0, Taken = 0, Dropped = 0,
Picked = {},Items = {},Kind ="Semua",Seen = {},DropX = -1, DropY = -1,Carry = {},}local _0xECF0 = {
Running = false,
SeedId = nil,
BlockId = nil,
WholeWorld = false,Tiles = {},BreakX = -1, BreakY = -1,
BreakSec = 60,Drop = true,
Keep = 50,DropAt = 200,DropWorld ="",DropX = -1, DropY = -1,
Harvested = 0,
Planted = 0,
Dropped = 0,
Skip = {},
Status ="-",
Traveling = false,
Home ="",
Zone = nil,Row = {},}
local _0x5B75 = {
On = false,
Who ="Staff (Mod/Dev)",StopAll = true,Leave = false,AutoBack = true,BackSec = 60,CalmSec = 5,Mode ="idle",Allow = {},Alerted = {},Saved = nil,Token = 0,
BackAt = 0,
CalmAt = nil,
LeftFg = nil,
BackText = nil,
Status ="Mati",
Detected = 0,
}local _0x9715 = {
Running = false,
Harvest = true,
HarvestOnly = true,Plant = false,
Collect = true,
UseBlock = false,ScaffoldId = nil,
HarvestMs = 250,PlantMs = 250,SeedId = nil,
Skip = {},
Harvested = 0,
Planted = 0,
Status ="-",
Drop = false,DropAt = 190,Keep = 50,Dropped = 0,
Got = {},Row = {},}local _0x86C8 = { _0x2D30 = false, _0xBE18 = false, _0xB0B7 = false, jump = false, down = false }local _0x4BB9 = {
On = false,
Texts = {},IntervalSec = 6,
Index = 1,
Sent = 0,
Last ="-",
}
local _0x1DCC = {
World = nil,Inv = nil,SetTile = nil,_0x5D82 = nil,Punch = nil,Particles = {},Menu = nil,Gems = nil,Hud = nil,Trees = nil,Others = nil,}local _0x2FB0 = { _0x026D = nil, update = nil, brokeAt = {} }local _0x7FB6 = { _0x74A9 = nil, _0xB9E8 = nil, _0x365A = nil }
local _0x6663 = {}local _0x6FB2 = {}function _0x6FB2.ident()
local _0xF80A = getthreadidentity or get_thread_identity or getidentity or (syn and syn.get_thread_identity)
if type(_0xF80A) ~="function"then return nil end
local _0xF64E, _0x97A1 = pcall(_0xF80A)
return _0xF64E and _0x97A1 or nil
end
function _0x6FB2.exec(_0x74A9)
local _0x6A1B = setthreadidentity or set_thread_identity or setidentity or (syn and syn.set_thread_identity)
local function _0xEFF4()
if _0x7528.Ident and type(_0x6A1B) =="function"then pcall(_0x6A1B, _0x7528.Ident) end
end
local _0xD243 = _0x7528.Exec
if _0xD243 and not _0x7528.ExecBusy and coroutine.status(_0xD243) =="suspended"then
local _0x740F = { _0x74A9 = function() _0xEFF4(); _0x74A9() end }
_0x7528.ExecBusy = true
local _0x1475, _0xEF11 = coroutine.resume(_0xD243, _0x740F)
if _0x1475 thenlocal _0x4B13 = os.clock() + 10
while not _0x740F.done do
if not _0xCA76() then return false,"Sesi script sudah ditutup"end
if os.clock() >= _0x4B13 then return false,"Pekerjaan UI belum selesai setelah 10 detik"end
task.wait()
end
return _0x740F.ok, _0x740F.err
end
_0x7528.ExecBusy = false
return false, tostring(_0xEF11)
end_0xEFF4()
local _0x9A8D, _0xF1C0 = pcall(_0x74A9)
if _0x9A8D then return true end
return false, tostring(_0xF1C0)
end
_0x6FB2.Jobs = {}
function _0x6FB2.later(_0x795E, _0x74A9, delay)
_0x6FB2.Jobs[_0x795E] = { _0x74A9 = _0x74A9, _0xC4F6 = os.clock() + (delay or 0) }
endfunction _0x6FB2.runJobs()
local _0x4DD4 = os.clock()
local _0x26AE = {}
for _0x795E, _0x740F in pairs(_0x6FB2.Jobs) do
if _0x4DD4 >= _0x740F.at then _0x26AE[#_0x26AE + 1] = _0x795E end
end
for _0xF439, _0x795E in ipairs(_0x26AE) do
local _0x740F = _0x6FB2.Jobs[_0x795E]
if _0x740F and _0x4DD4 >= _0x740F.at then
_0x6FB2.Jobs[_0x795E] = nil
local _0xF64E, _0x8599 = pcall(_0x740F.fn)
if not _0xF64E then warn("[ziey HUB] UI job ".. tostring(_0x795E) ..": ".. tostring(_0x8599)) end
end
end
end
local _0x3886 = {}
_0x7528.StartupConnections = _0x3886
local _0x895A = {}local _0x0508 = {}local _0xEAC0 = { Lang ="id", Saved ="id", Ask = true }
do (function()_0xEAC0.EN = {["Fitur"] ="Features", ["Keamanan"] ="Security", ["Setelan"] ="Setup",
["Pengaturan"] ="Settings", ["Penjaga"] ="Guard", ["Statistik"] ="Stats", ["Tas"] ="Bag",
["Dirt Farm"] ="Dirt Farm", ["Pabrik"] ="Factory", ["Koneksi"] ="Connection",["Kontrol"] ="Controls", ["Mode & Kecepatan"] ="Mode & Speed", ["Kecepatan"] ="Speed",
["Karakter"] ="Character", ["Opsi"] ="Options", ["Pesan"] ="Messages",
["Aksi saat terdeteksi"] ="Action when detected", ["Waktu"] ="Timing", ["Lainnya"] ="Other",
["Quest Harian"] ="Daily Quests", ["Pohon (siap panen)"] ="Trees (ready to harvest)",
["Auto Recycle (buang item)"] ="Auto Recycle (trash items)", ["Bentuk Dirt Farm"] ="Dirt Farm shape",
["Pilihan"] ="Options", ["Posisi & tile break"] ="Break position & tiles",
["Koreksi posisi"] ="Position correction", ["Yang dikirim"] ="What to send",["Bisa juga lewat tombol START di Grid"] ="Can also use the START button in the Grid",
["Ambil drop di tile yang dipilih"] ="Pick up drops on the selected tiles",
["Collect di sekitar karakter"] ="Collect around character",
["Ambil semua drop dalam radius, kapan saja"] ="Pick up all drops within the radius, anytime",
["Radius collect (tile)"] ="Collect radius (tiles)",
["Dipakai juga Clear, Farmer, Splice & Pabrik. Terlalu jauh bisa ditolak server"] ="Also used by Clear, Farmer, Splice & Factory. Too far may be rejected by the server",
["Buka Grid Tile"] ="Open Tile Grid",
["Kotak 5x5, tengah = karakter"] ="5x5 grid, center = character",["Status Clear"] ="Clear Status",
["Bersihkan dari baris atas ke bawah"] ="Clear from the top row down",
["Arah sapu"] ="Sweep direction",
["Zig-zag lebih cepat (tidak balik ke kiri)"] ="Zig-zag is faster (no going back left)",
["Pakai block pijakan"] ="Use scaffold blocks",
["Taruh block untuk lewat jurang / naik ke block melayang"] ="Place blocks to cross gaps / reach floating blocks",
["Block pijakan"] ="Scaffold block",
["Block yang dipakai untuk pijakan"] ="Block used as scaffold",
["Auto collect tiap habis pecah"] ="Auto collect after each break",
["Ambil drop di sekitar karakter"] ="Pick up drops around the character",
["Reset tile yang dilewati"] ="Reset skipped tiles",
["Coba lagi tile yang tadi gagal"] ="Retry tiles that failed",["Status Farmer"] ="Farmer Status",
["Jalankan Farmer"] ="Run Farmer",
["Panen pohon siap & tanam seed otomatis"] ="Harvest ready trees & plant seeds automatically",
["Seed untuk ditanam"] ="Seed to plant",
["Hanya seed yang ada di inventori"] ="Only seeds in your inventory",
["Refresh daftar seed"] ="Refresh seed list",
["Hanya pohon yang sudah siap"] ="Only trees that are ready",
["Tanam di atas block yang kosong"] ="Plant on top of empty blocks",
["Ambil hasil panen di sekitar karakter"] ="Pick up harvest drops around the character",
["Jeda setelah tiap panen"] ="Delay after each harvest",
["Jeda setelah tiap tanam seed"] ="Delay after each seed planted",
["Taruh block kalau tidak ada jalan (block tetap tertinggal)"] ="Place blocks when there is no path (blocks stay behind)",["Place semua tile dulu, lalu break"] ="Place all tiles first, then break",
["Jeda setelah tiap place"] ="Delay after each place",
["Jeda tiap pukulan (normal 220). Dipakai juga Clear"] ="Delay per hit (normal 220). Also used by Clear",
["Auto Farm: tile dipukul bergantian (seperti 2 jari). Pakai Rayman's Fist = 2-3 tile segaris sekali pukul"] ="Auto Farm: tiles are hit in turns (like 2 fingers). With Rayman's Fist = 2-3 tiles in a line per punch",
["Jeda setelah hancur (ms)"] ="Delay after break (ms)",
["Tunggu sebelum lanjut ke tile berikutnya"] ="Wait before moving to the next tile",
["Mode Lite"] ="Lite Mode",
["Matikan particle & suara (HP low-end)"] ="Turn off particles & sounds (low-end phones)",
["Mute suara pukulan"] ="Mute punch sounds",
["Pukulan per block (cadangan)"] ="Hits per block (fallback)",
["Dipakai kalau 'Pukul: TIDAK'. 0 = otomatis"] ="Used when 'Punch: NO'. 0 = automatic",
["Pilih Block"] ="Select Block",
["Hanya item yang bisa di-place"] ="Only placeable items",
["Refresh daftar"] ="Refresh list",
["Lompat di udara (bisa kena rollback)"] ="Jump mid-air (may get rolled back)",
["Fly + Tembus Block"] ="Fly + Noclip",
["Tembus block, pakai tombol ▲/▼ (bisa kena rollback)"] ="Pass through blocks, use the ▲/▼ buttons (may get rolled back)",
["Bahasa / Language"] ="Language / Bahasa",
["Titik Drop"] ="Drop Point", ["Atur titik drop"] ="Set drop point", ["Drop otomatis"] ="Auto drop",
["Seed sudah banyak: jeda, drop ke titik drop (tab Titik Drop), balik ke posisi farm"] ="Too many seeds: pause, drop at the drop point (Drop Point tab), return to farm position",
["Seed dari block yang dipilih"] ="Seeds of the selected block",
["Drop kalau hampir penuh"] ="Drop when almost full",
["Hasil panen (block & seed) dibawa ke titik drop (tab Titik Drop)"] ="Harvest items (blocks & seeds) are taken to the drop point (Drop Point tab)",
["Drop kalau item sudah"] ="Drop when an item reaches",
["Maksimal 200 per item"] ="Max 200 per item",
["Sisakan seed tanam"] ="Seeds to keep for planting",
["Seed yang dipilih untuk ditanam tidak di-drop semua"] ="The planting seed is not dropped completely",
["Ke titik drop (tab Titik Drop)"] ="To the drop point (Drop Point tab)",
["Block kurang diproduksi dulu, lalu dipasang dari atas seperti ular (tanpa pijakan)"] ="Missing blocks are produced first, then placed from the top like a snake (no scaffolding)",
["Gali dulu dari permukaan sampai bawah, lalu pasang baris naik sampai atas (baris jadi jembatan). Block habis: produksi 1 baris"] ="Digs from the surface down to the bottom first, then places rows upward to the top (each row is its own bridge). Out of blocks: produces on 1 row",
["Baris block paling atas. Baris di bawahnya otomatis sampai di atas bedrock (tanah digali)"] ="Top block row. Rows below go automatically down to just above bedrock (dirt is dug out)",
["Berdiri di atas block pertama baris paling atas, lalu tekan (tangga kiri di sebelah kirinya)"] ="Stand on the first block of the top row, then press (left stairs go to its left)",
["Baris block paling atas. Baris di bawahnya dibuat otomatis sampai tanah"] ="Top block row. Rows below are made automatically down to the ground",
["Ganti bahasa, lalu execute ulang"] ="Change language, then re-execute",
["Mode collect"] ="Collect mode", ["Sentuhan"] ="Touch",
["Berlaku untuk semua fitur. Sentuhan = seperti main manual. Remote = ambil dari jauh (cara lama, cepat)"] ="Applies to all features. Touch = like manual play. Remote = picks up from a distance (old method, fast)",
["Ambil drop di semua tile grid (caranya ikut Mode collect)"] ="Pick up drops on all grid tiles (method follows Collect mode)",
["Radius collect (mode Remote)"] ="Collect radius (Remote mode)",
["Jarak ambil drop di sekitar karakter (tile)"] ="Pickup distance around the character (tiles)",
["Animasi aksi"] ="Action animation",
["Tangan bergerak saat break / place / tanam / panen + efek place. Matikan untuk hemat FPS"] ="Arm moves on break / place / plant / harvest + place effect. Turn off to save FPS",
["Jenis item"] ="Item type",
["Berlaku untuk isi stock (drop yang dipungut) dan kosongkan (vending yang diambil)"] ="Applies to stock (drops picked up) and empty (vendings taken from)",
["Block saja"] ="Blocks only", ["Seed saja"] ="Seeds only",
["Item yang diambil"] ="Items to take",
["Bisa pilih banyak. Kosong = semua item. Daftar: isi vending, tas & drop yang terlihat"] ="Multi-select. Empty = all items. List: vending contents, backpack & seen drops",
["Muat ulang daftar item"] ="Reload item list",
["Pilih item"] ="Pick items",
["Tambah item yang dipegang"] ="Add the held item",
["Pilih item di tas game (dipegang), lalu tekan. Masuk ke daftar item yang diambil"] ="Select an item in the game backpack (held), then press. Adds it to the items to take",
["Hapus pilihan item"] ="Clear item selection",
["Kembali ke semua item"] ="Back to all items",
["Simpan posisi drop vending (posisi karakter)"] ="Save vending drop position (character position)",
["Berdiri di tempat drop (boleh di world titik drop), lalu tekan. Dipakai mode isi stock & kosongkan"] ="Stand at the drop spot (can be in the drop-point world), then press. Used by stock & empty modes",
["Hapus posisi drop vending"] ="Clear vending drop position",
["Drop / tunggu di titik kedatangan (pintu) saja"] ="Drop / wait at the arrival point (door) only",
["Ambil item dari vending, tas & drop di world ini"] ="Read items from vendings, backpack & drops in this world",
["Posisi break produksi = posisi karakter"] ="Production break position = character position",
["Berdiri di tempat break lalu tekan. Tekan lagi di tempat yang sama = kembali otomatis"] ="Stand at the break spot and press. Press again at the same spot = back to automatic",
["Pilih tile break produksi (Grid)"] ="Pick production break tiles (Grid)",
["Grid terbuka dalam mode Dirt Farm (terpisah dari Auto Farm & Pabrik)"] ="Grid opens in Dirt Farm mode (separate from Auto Farm & Factory)",
["Status Vending"] ="Vending Status",
["Jalankan Vending"] ="Run Vending",
["Jalankan di world vending milikmu"] ="Run it in your vending world",
["Titik drop vending"] ="Vending drop point",
["WORLD atau WORLD:ID (kosong = world ini). Isi stock: ambil drop di sini. Kosongkan: drop di sini"] ="WORLD or WORLD:ID (empty = this world). Stock: picks up drops here. Empty: drops here",
["Isi stock dari drop"] ="Stock from drops",
["Kosongkan sampai habis"] ="Empty until done",
["Drop di semua tile grid diambil dengan sentuhan badan (melangkah / lompat), tanpa remote"] ="Drops on every grid tile are picked up by body touch (step / jump), no remote",
["Drop di sekitar disusuri sampai tersentuh badan (tanpa remote)"] ="Nearby drops are walked over until the body touches them (no remote)",["Status Chat"] ="Chat Status",
["Daftar pesan"] ="Message list",
["Pisahkan dengan |   contoh: halo|jual dirt"] ="Separate with |   example: hi|selling dirt",
["pesan 1|pesan 2|pesan 3"] ="message 1|message 2|message 3",
["Interval (detik)"] ="Interval (seconds)",
["Jeda antar pesan (min 3 detik)"] ="Delay between messages (min 3 seconds)",
["Kirim pesan bergantian sesuai urutan"] ="Send messages in order, one after another",
["Kirim 1 pesan sekarang"] ="Send 1 message now",
["Tes kirim pesan berikutnya"] ="Test sending the next message",
["Isi daftar pesan dulu (tekan Enter setelah mengetik)"] ="Fill in the message list first (press Enter after typing)",["Status Penjaga"] ="Guard Status",
["Mati"] ="Off",
["Aktifkan Penjaga"] ="Enable Guard",
["Pantau Mod / Dev / pemain yang masuk world"] ="Watch for Mods / Devs / players entering the world",
["Yang dideteksi"] ="Detect",
["Semua pemain: yang sudah ada saat dinyalakan diabaikan"] ="All players: those already here when enabled are ignored",
["Diam semua aktivitas"] ="Pause all activities",
["Keluar world"] ="Leave world",
["Langsung keluar world saat terdeteksi"] ="Leave the world immediately when detected",
["Lanjut otomatis setelah aman"] ="Auto resume when safe",
["Keluar world: masuk lagi, cek, lalu lanjut aktivitas sebelumnya"] ="Leave world: rejoin, check, then resume previous activity",
["Masuk world lagi setelah (detik)"] ="Rejoin world after (seconds)",
["Untuk mode keluar world"] ="For leave-world mode",
["Tunggu aman (detik)"] ="Safe wait (seconds)",
["Untuk mode diam: jeda setelah mereka pergi"] ="For pause mode: delay after they leave",
["Abaikan pemain yang ada sekarang"] ="Ignore players here now",
["Untuk teman / akun sendiri (staff tetap dideteksi)"] ="For friends / alt accounts (staff are still detected)",
["Batalkan tunggu / lanjut"] ="Cancel wait / resume",
["Hentikan proses keluar-masuk & lanjut otomatis"] ="Stop the leave-rejoin process & auto resume",
["Dibatalkan"] ="Cancelled",["Klaim hadiah quest yang sudah selesai"] ="Claim rewards for finished quests",
["Cek quest sekarang"] ="Check quests now",
["Tukar semua code aktif yang belum dipakai"] ="Redeem all active codes not used yet",
["Cek code sekarang"] ="Check codes now",
["Redeem code manual"] ="Redeem code manually",
["Ketik code lalu tekan Enter"] ="Type a code then press Enter",
["KODE"] ="CODE",["Info World"] ="World Info",
["Tekan Scan sekarang"] ="Press Scan now",
["Update otomatis tiap 2 detik"] ="Auto update every 2 seconds",
["Scan sekarang"] ="Scan now",
["Cari item"] ="Search item",
["Saring nama item (kosongkan = semua)"] ="Filter item name (empty = all)",
["contoh: seed"] ="example: seed",
["Daftar"] ="List",["Sesi ini"] ="This session",
["Reset statistik"] ="Reset stats",
["Mulai hitung dari nol"] ="Start counting from zero",
["Kirim ke Discord sekarang"] ="Send to Discord now",
["Perlu webhook di tab Discord"] ="Needs a webhook in the Discord tab",
["Aktifkan webhook Discord dulu"] ="Enable the Discord webhook first",
["Direset"] ="Reset",
["Masuk antrian kirim"] ="Added to send queue",["Item yang dipilih di-recycle otomatis"] ="Selected items are recycled automatically",
["Item yang di-recycle"] ="Items to recycle",
["Bisa pilih banyak. Tool & lock tidak ditampilkan"] ="Multiple allowed. Tools & locks are not shown",
["Recycle kalau jumlah >="] ="Recycle when amount >=",
["200 = hanya saat penuh 1 slot"] ="200 = only when a slot is full",
["Sisakan"] ="Keep",
["Jumlah yang tidak ikut di-recycle"] ="Amount not recycled",
["Refresh daftar item"] ="Refresh item list",
["100 WL -> 1 DL, 100 DL -> 1 BGL (sama seperti game)"] ="100 WL -> 1 DL, 100 DL -> 1 BGL (same as the game)",["Status Splice"] ="Splice Status",
["Tanam Seed A lalu splice Seed B"] ="Plant Seed A then splice Seed B",
["Seed A (ditanam)"] ="Seed A (planted)",
["Seed B (di-splice)"] ="Seed B (spliced)",
["Keliling world (A*)"] ="Roam world (A*)",
["Nyala: jalan ke seluruh world. Mati: hanya tile Grid 5x5"] ="On: walk the whole world. Off: only the 5x5 Grid tiles",
["Jeda tanam / splice (ms)"] ="Plant / splice delay (ms)",["Status Dirt Farm"] ="Dirt Farm Status",
["Bangun Dirt Farm"] ="Build Dirt Farm",
["Hitung block, produksi kalau kurang, lalu pasang dari baris bawah"] ="Count blocks, produce if short, then place from the bottom row",
["Block Dirt Farm"] ="Dirt Farm block",
["Block padat dari inventori"] ="Solid block from inventory",
["X awal"] ="Start X",
["Kolom paling kiri"] ="Leftmost column",
["X akhir"] ="End X",
["Kolom paling kanan (lebih dari lebar world = sampai ujung)"] ="Rightmost column (beyond world width = to the edge)",
["Y baris atas"] ="Top row Y",
["Baris block paling atas (minimal 1)"] ="Topmost block row (minimum 1)",
["Jarak antar baris"] ="Row spacing",
["2 = y1, y3, y5.. | 3 = y1, y4, y7.. (maks 3 supaya bisa lompat naik)"] ="2 = y1, y3, y5.. | 3 = y1, y4, y7.. (max 3 so you can jump up)",
["Jumlah baris"] ="Number of rows",
["Tangga di pojok kiri-kanan"] ="Stairs at left-right corners",
["Ujung baris dibuka bergantian, jadi bisa turun-naik zig-zag"] ="Row ends open alternately, so you can go up/down in a zig-zag",
["Pakai posisi karakter sebagai pojok kiri-atas"] ="Use character position as top-left corner",
["X awal = kolom karakter, Y baris atas = tile di bawah kaki"] ="Start X = character column, top row Y = tile under the feet",
["Produksi block kalau kurang"] ="Produce blocks if short",
["Tanam & panen seed block itu dulu sampai cukup"] ="Plant & harvest that block's seed first until enough",
["Boleh taruh block pijakan"] ="Allow scaffold blocks",
["Kalau baris paling bawah tidak terjangkau dari tanah"] ="If the bottom row can't be reached from the ground",
["Lanjut Pabrik setelah selesai"] ="Start Factory when finished",["Status Pabrik"] ="Factory Status",
["Jalankan Pabrik"] ="Run Factory",
["Break -> tanam -> panen -> break lagi, seed lebihan di-drop"] ="Break -> plant -> harvest -> break again, extra seeds are dropped",
["Seed pabrik"] ="Factory seed",
["Block-nya otomatis (contoh: Dirt Seed -> Dirt)"] ="Block is automatic (example: Dirt Seed -> Dirt)",
["Tanam di seluruh world"] ="Plant in the whole world",
["Mati = hanya di Dirt Farm (tab Dirt Farm)"] ="Off = only on the Dirt Farm (Dirt Farm tab)",
["Pakai posisi sekarang untuk break"] ="Use current position for breaking",
["Berdiri di tempat break, lalu tekan"] ="Stand at the break spot, then press",
["Pilih tile break (Grid)"] ="Select break tiles (Grid)",
["Grid terbuka dalam mode Pabrik (terpisah dari tile Auto Farm)"] ="Grid opens in Factory mode (separate from Auto Farm tiles)",
["Lama 1 sesi break (detik)"] ="Break session length (seconds)",
["Setelah ini cek pohon siap dulu"] ="After this, check for ready trees first",
["Sisakan seed"] ="Seeds to keep",
["Untuk ditanam lagi"] ="For replanting",
["Drop kalau seed sudah"] ="Drop when seeds reach",
["Contoh 200 & sisakan 50 = drop 150"] ="Example 200 & keep 50 = drop 150",
["World drop"] ="Drop world",
["Kosong = world ini | WORLD | WORLD:ID (masuk lewat pintu ID)"] ="Empty = this world | WORLD | WORLD:ID (enter via door ID)",
["Pakai posisi sekarang untuk drop"] ="Use current position for dropping",
["Berdiri di tempat drop (boleh di world lain), lalu tekan"] ="Stand at the drop spot (can be another world), then press",
["Hapus posisi drop"] ="Clear drop position",
["Drop di titik kedatangan (pintu) saja"] ="Drop at the arrival point (door) instead",
["Ada block tapi posisi / tile break belum diatur"] ="Has blocks but break position / tiles are not set",
["Gagal jalan ke posisi break, dicoba lagi nanti"] ="Failed to walk to break position, retrying later",["Referensi game"] ="Game references",
["Hubungkan ke game"] ="Connect to game",
["Pakai setelah pindah world"] ="Use after changing worlds",
["Simpan pengaturan otomatis, dimuat lagi saat execute"] ="Save settings automatically, loaded again on execute",
["Simpan config sekarang"] ="Save config now",
["Hapus file config, lalu execute ulang"] ="Delete the config file, then re-execute",
["Koreksi posisi X"] ="Position correction X",
["Isi 1 / -1 kalau tile meleset"] ="Enter 1 / -1 if tiles are off",
["Koreksi posisi Y"] ="Position correction Y",
["Masuk lagi & lanjut aktivitas kalau terlempar"] ="Rejoin & resume activity if kicked out",
["Terlempar dari world"] ="Kicked from world",
["World ditutup / di-kick: masuk lagi ke world yang sama"] ="World closed / kicked: rejoin the same world",
["Selalu kembali ke world"] ="Always return to world",
["Kalau berada di luar world (layar pilih world), masuk lagi otomatis"] ="If outside a world (world select screen), rejoin automatically",
["World tujuan"] ="Target world",
["Kosongkan = world terakhir yang kamu masuki"] ="Empty = the last world you entered",
["NAMAWORLD"] ="WORLDNAME",
["Rejoin world sekarang"] ="Rejoin world now",
["Keluar lalu masuk lagi, aktivitas dilanjutkan"] ="Leave and rejoin, activity resumes",
["Disconnect dari server"] ="Disconnected from server",
["Teleport ulang ke game lalu masuk world terakhir"] ="Teleport back to the game and enter the last world",
["Jeda sebelum masuk lagi (detik)"] ="Delay before rejoining (seconds)",
["URL script (untuk rejoin server)"] ="Script URL (for server rejoin)",
["Link raw script ini, supaya jalan lagi setelah teleport. Kosong = pakai autoexec"] ="Raw link of this script, so it runs again after teleport. Empty = use autoexec",
["Sedang proses masuk world, tunggu dulu"] ="Already entering a world, please wait",
["World tujuan belum ada. Isi 'World tujuan' atau masuk world dulu"] ="No target world yet. Fill in 'Target world' or enter a world first",["Notifikasi Discord"] ="Discord Notifications",
["Kirim kabar penting ke channel Discord kamu"] ="Send important updates to your Discord channel",
["URL Webhook"] ="Webhook URL",
["Channel Discord > Edit > Integrasi > Webhook > Salin URL"] ="Discord channel > Edit > Integrations > Webhook > Copy URL",
["Tes kirim"] ="Test send",
["Laporan statistik (menit)"] ="Stats report (minutes)",
["Kirim statistik sesi tiap X menit. 0 = mati"] ="Send session stats every X minutes. 0 = off",
["Mod / Dev / pemain masuk world"] ="Mod / Dev / player entered world",
["Aktivitas berhenti (block habis / error)"] ="Activity stopped (out of blocks / error)",
["Quest diklaim / redeem berhasil"] ="Quest claimed / redeem successful",
["Terlempar / disconnect / masuk lagi"] ="Kicked / disconnected / rejoined",
["Pabrik drop seed / Dirt Farm selesai / berhenti"] ="Factory dropped seeds / Dirt Farm done / stopped",
["Isi URL webhook dulu"] ="Fill in the webhook URL first",
["Pesan tes masuk antrian"] ="Test message queued",
["URL webhook tidak valid"] ="Invalid webhook URL",
["Tes notifikasi dari ZieyHUB"] ="Test notification from ZieyHUB",["Kiri → Kanan"] ="Left → Right", ["Semua pemain"] ="All players", ["Semua"] ="All",
["Depan"] ="Front", ["Break saja"] ="Break only", ["Place saja"] ="Place only",
["(memuat...)"] ="(loading...)", ["(inventori kosong)"] ="(inventory empty)",
["(inventori belum terbaca)"] ="(inventory not read yet)",
["(inventori kosong / belum terbaca)"] ="(inventory empty / not read yet)",
["Channel chat world belum ada (masuk world dulu)"] ="World chat channel not found (enter a world first)",
["Daftar pesan kosong"] ="Message list is empty",
["Inventori penuh"] ="Inventory full",
["Tanya bahasa saat execute"] ="Ask language on execute",
["Execute ulang untuk ganti bahasa / Re-execute to apply"] ="Re-execute to apply the new language",
["Munculkan pilihan bahasa tiap execute"] ="Show the language choice on every execute",["Grid Tile"] ="Tile Grid", ["Bersihkan pilihan"] ="Clear selection",
["Tile Break Pabrik"] ="Factory Break Tiles", ["START PABRIK"] ="START FACTORY", ["STOP PABRIK"] ="STOP FACTORY",
}_0xEAC0.PH = {
{"Data world belum ketemu","World data not found"}, {"Data drop belum ketemu","Drop data not found"},
{"Data pohon belum ketemu","Tree data not found"}, {"Data pohon tidak ketemu","Tree data not found"},
{"Tekan 'Hubungkan ke game'","Press 'Connect to game'"}, {"Hubungkan ke game","Connect to game"},
{"Kamu belum masuk world","You are not in a world yet"}, {"belum masuk world","not in a world yet"},
{"tidak di world","not in a world"},
{"Menunggu karakter / world...","Waiting for character / world..."},
{"Menunggu pohon siap","Waiting for trees to be ready"}, {"Menunggu","Waiting"},
{"Dihentikan karena","Stopped because"}, {"Dihentikan","Stopped"}, {"dimulai","started"},
{"hubungkan ulang ke game","reconnecting to game"},
{"Dijeda Penjaga","Paused by Guard"}, {"Dijeda","Paused"}, {"Waspada","Alert"}, {"Ada:","Present:"},
{"Aman","Safe"}, {"Pemain di world","Players in world"}, {"Staff online di server","Staff online on server"},
{"Terdeteksi","Detected"}, {"kali","times"}, {"tidak ada","none"},
{"pemain diabaikan","players ignored"},
{"Masuk world","Entered world"}, {"Keluar world","Leave world"},
{"Masuk lagi dalam","Rejoining in"}, {"Masuk lagi ke","Rejoining"}, {"Masuk lagi berhasil","Rejoined"},
{"Masuk lagi","Rejoin"}, {"Masuk ke","Entering"}, {"Masih ada","Still here:"}, {"Keluar lagi","Leaving again"},
{"Sudah keluar world","Already left the world"}, {"lanjut otomatis mati","auto resume off"},
{"Di luar world","Outside the world"}, {"Mereka sudah pergi","They left"}, {"Lanjut dalam","Resuming in"},
{"Sudah aman","Safe now"}, {"World aman","World is safe"}, {"World sudah beda","Different world"},
{"aktivitas tidak dilanjutkan","activity not resumed"}, {"aktivitas dilanjutkan","activity resumed"},
{"aktivitas hanya dijeda","activity only paused"},
{"lanjut aktivitas","resuming activity"}, {"Lanjut aktivitas","Resuming activity"},
{"Gagal balik ke posisi farm","Failed to return to farm position"},
{"Auto Farm tidak dilanjutkan","Auto Farm not resumed"},
{"Jalan balik ke posisi farm","Walking back to farm position"},
{"Jalan ke posisi break","Walking to break position"}, {"Jalan ke posisi drop","Walking to drop position"},
{"Cari jalan A* ke","Finding A* path to"}, {"Jalan ke","Walking to"}, {"Lompati lubang ke","Jumping gap to"},
{"Lompat ke","Jumping to"}, {"Turun ke","Dropping down to"}, {"Naik pakai block ke","Climbing with block to"},
{"Taruh block pijakan","Placing scaffold block"},
{"di bawahnya berbahaya","dangerous below"}, {"di bawahnya jurang","pit below"},
{"Lewati pijakan","Skip foothold"}, {"Lewati","Skip"},
{"Pukul","Hit"}, {"Pecah","Broke"}, {"Panen","Harvest"}, {"Tanam","Plant"},
{"Pasang Dirt Farm: sisa","Placing Dirt Farm: remaining"}, {"Pasang","Place"},
{"Gali: sisa","Digging: remaining"}, {"Gali","Dig"}, {"Pukul","Punch"},
{"Tile Break Dirt Farm","Dirt Farm Break Tiles"}, {"START DIRT FARM","START DIRT FARM"}, {"STOP DIRT FARM","STOP DIRT FARM"},
{"Semua vending item terpilih sudah kosong","All vendings of the selected items are empty"},
{"semua item yang bisa dijual","all sellable items"},
{" - coba lagi"," - retrying"}, {"Tambah stock gagal:","Adding stock failed:"},
{"Menjauh dari drop sendiri supaya bisa dipungut","Stepping away from own drops so they can be picked up"},
{"Item terpilih sudah habis. Tidak diambil (bukan item terpilih):","Selected items are empty. Not taken (not selected):"},
{"Hapus pilihan item untuk ambil semua","Clear the item selection to take everything"}, {"Cek ulang isi vending...","Re-checking vending contents..."},
{"Daftar item gagal dimuat:","Item list failed to load:"}, {"tidak terbaca","not readable"},
{"Vending milikmu di","Your vendings in"},
{"Jalan ke posisi drop vending","Walking to the vending drop position"},
{"Tidak bisa jalan ke posisi drop vending","Can't reach the vending drop position"},
{"Tas penuh: atur titik drop vending (WORLD / WORLD:ID / simpan posisi XY)","Backpack full: set the vending drop point (WORLD / WORLD:ID / save XY position)"},
{"Daftar item:","Item list:"}, {"Item dipilih:","Item selected:"},
{"Pegang dulu block / seed di tas game (bukan tool)","Hold a block / seed in the game backpack first (not a tool)"},
{"Pilihan item dihapus: semua item","Item selection cleared: all items"},
{"Posisi drop vending","Vending drop position"}, {"Posisi drop vending dihapus","Vending drop position cleared"},
{"(titik kedatangan)","(arrival point)"}, {"dropdown belum dibuat","dropdown not created yet"},
{"refresh gagal","refresh failed"}, {"tas","bag"},
{"Vending item terpilih penuh / belum ada yang menjual item terpilih","Vendings of the selected items are full / none sells them yet"},
{"Fungsi animasi game tidak ketemu (tekan 'Hubungkan ke game')","Game animation function not found (press 'Connect to game')"},
{"Animasi","Animation"}, {"(belum ada item)","(no items yet)"}, {"| jenis:","| type:"},
{": semua |",": all |"}, {"jenis: Semua","type: All"},
{"Block saja","Blocks only"}, {"Seed saja","Seeds only"},
{"Posisi break produksi","Production break position"}, {"otomatis","automatic"},
{"kanan karakter, dekat ujung baris","right of the character, near the row end"},
{"grid Dirt Farm","Dirt Farm grid"}, {"posisi break Dirt Farm","Dirt Farm break position"},
{"Ke vending","To vending"}, {"): tambah","): add"}, {"): ambil","): take"},
{"Gagal tambah stock di","Failed to add stock at"}, {"Tidak bisa ke vending","Can't reach vending"},
{"Semua vending penuh / belum ada vending yang menjual item","All vendings full / none sells an item yet"},
{"Menunggu drop baru di","Waiting for new drops in"}, {"untuk isi stock","to restock"},
{"Pergi ke titik drop","Going to drop point"}, {"Gagal ke titik drop","Failed to reach drop point"},
{"Semua vending sudah kosong","All vendings are empty"}, {"Ambil","Take"},
{"Selesai, ada vending yang gagal diambil","Done, some vendings could not be emptied"},
{"Vending kosong, tapi drop gagal","Vendings empty, but dropping failed"},
{"Tas penuh oleh item lain, kosongkan tas dulu","Backpack is full of other items, clear it first"},
{"Drop gagal","Drop failed"}, {"Tambah stock gagal terus","Adding stock keeps failing"},
{"Gagal pulang ke world vending","Failed to return to the vending world"},
{"ambil drop","to pick drops"},
{"Tas penuh: atur titik drop vending (WORLD atau WORLD:ID)","Backpack full: set the vending drop point (WORLD or WORLD:ID)"},
{"Tidak ada vending milikmu di world ini (jalankan di world vending)","No vending of yours in this world (run it in the vending world)"},
{"Fungsi vending game tidak ketemu","Game vending function not found"},
{"milikmu di world ini | isi","yours in this world | stocked"}, {"kosong","empty"},
{"diambil","taken"},
{"tile gali belum terjangkau, dicoba lagi","dig tiles not reachable yet, retrying"},
{"tile gali dilewati","dig tiles skipped"}, {"Bersihkan drop di Dirt Farm","Cleaning up drops on the Dirt Farm"},
{"Ambil drop block sisa galian","Picking up leftover dug blocks"},
{"Bersihkan drop sisa galian (per baris)","Cleaning up leftover dug drops (row by row)"},
{"Ambil drop sisa di Dirt Farm (per baris)","Picking up leftover drops on the Dirt Farm (row by row)"},
{"Bersihkan drop di Dirt Farm (per baris)","Cleaning up drops on the Dirt Farm (row by row)"},
{"Bersihkan drop baris y","Cleaning drops on row y"},
{"Block habis, produksi 1 baris dulu","Out of blocks, producing on 1 row first"},
{"lanjut pasang","resuming placing"}, {"sisakan","keep"}, {"baris y","row y"},
{"Jalan ke posisi pasang-pecah","Walking to the place-break spot"},
{"Naik tangga ke","Climbing stairs to"}, {"belum terjangkau, dilewati sebentar","not reachable yet, skipped for a while"},
{"Tidak ada baris Dirt Farm (cek X awal / X akhir / Y baris atas)","No Dirt Farm rows (check start X / end X / top row Y)"},
{"Belum ada baris lengkap","No complete row yet"}, {"seed-nya tidak ketemu","its seed was not found"},
{"celah, tangga, background","gaps, stairs, background"}, {"selesai","done"},
{"Produksi block","Producing blocks"}, {"total butuh","total needed"},
{"Dirt Farm selesai","Dirt Farm finished"}, {"Block cukup","Enough blocks"}, {"mulai pasang","starting to place"},
{"Block habis, masih kurang","Out of blocks, still short"}, {"Seed & block habis","Seeds & blocks used up"},
{"tidak ada pohon tumbuh","no trees growing"}, {"Butuh","Need"}, {"Seed habis","Out of seeds"},
{"seed-nya tidak ketemu","its seed was not found"}, {"Block kurang","Blocks short"},
{"Sisa tile belum terjangkau / terhalang, dicoba lagi","Remaining tiles unreachable / blocked, retrying"},
{"Dirt Farm penuh, menunggu","Dirt Farm is full, waiting"}, {"Bukan di world pabrik","Not in the factory world"},
{"menunggu...","waiting..."}, {"Pergi ke","Going to"}, {"untuk drop","to drop"}, {"Pulang ke","Returning to"},
{"Gagal pulang ke world pabrik","Failed to return to factory world"}, {"Drop gagal","Drop failed"},
{"tidak bisa drop di posisi ini","can't drop at this position"},
{"tidak bisa jalan ke posisi drop","can't walk to the drop position"},
{"Posisi drop belum diatur","Drop position not set"}, {"drop dilewati","drop skipped"},
{"Posisi drop dihapus","Drop position cleared"}, {"Posisi drop","Drop position"}, {"Posisi break","Break position"},
{"di posisi pabrik","at the factory position"}, {"Pabrik berhenti","Factory stopped"},
{"Bangun Dirt Farm","Build Dirt Farm"}, {"Pabrik","Factory"}, {"Penjaga","Guard"}, {"Dirt Farm","Dirt Farm"},
{"Gagal masuk lagi ke","Failed to rejoin"}, {"Gagal masuk","Failed to enter"}, {"Gagal keluar world","Failed to leave world"},
{"Dicoba lagi nanti","Will retry later"}, {"dicoba lagi","retrying"},
{"Gagal splice","Splice failed"}, {"ditolak server","rejected by server"}, {"Splice jadi","Spliced into"},
{"Menunggu tile Grid kosong (panen dulu pohonnya)","Waiting for empty Grid tiles (harvest the trees first)"},
{"Seed A habis, tidak ada pohon A yang bisa di-splice","Seed A used up, no A trees to splice"},
{"tidak ada tempat tanam / pohon untuk di-splice","no planting spot / tree to splice"},
{"Karakter tidak ditemukan (keluar world?)","Character not found (left the world?)"},
{"di inventori habis","in inventory is used up"}, {"Auto Farm berhenti","Auto Farm stopped"},
{"Auto Clear berhenti","Auto Clear stopped"}, {"Farmer berhenti","Farmer stopped"},
{"Inventori penuh","Inventory full"}, {"tidak bisa diambil lagi","can't be picked up anymore"},
{"Laporan statistik","Stats report"}, {"Quest diklaim","Quest claimed"}, {"Redeem berhasil","Redeem successful"},
{"Redeem gagal","Redeem failed"}, {"Terlempar dari world","Kicked from world"}, {"Terlempar dari","Kicked from"},
{"Kembali otomatis","Auto return"}, {"berhasil","succeeded"},
{"Rejoin: menunggu masuk","Rejoin: waiting to enter"}, {"Rejoin: gagal masuk","Rejoin: failed to enter"},
{"Disconnect dari server","Disconnected from server"}, {"script tidak di-queue","script not queued"},
{"Berhasil masuk lagi","Rejoined"}, {"World tujuan","Target world"},
{"Mode diganti, nyalakan lagi","Mode changed, turn it on again"}, {"World sudah bersih!","World is clean!"},
{"Block pijakan belum dipilih / habis: jalan tanpa block pijakan","Scaffold block not selected / empty: moving without scaffold"},
{"Auto Harvest tidak bisa cek pohon siap","Auto Harvest can't check ready trees"},
{"Aktifkan Auto Harvest atau Auto Plant","Enable Auto Harvest or Auto Plant"},
{"Pilih seed dulu untuk Auto Plant","Select a seed for Auto Plant first"},
{"Pilih seed pabrik dulu","Select a factory seed first"}, {"Block dari seed ini tidak ketemu","Block for this seed not found"},
{"Atur Dirt Farm dulu","Set up the Dirt Farm first"}, {"Pilih block padat untuk Dirt Farm","Select a solid block for the Dirt Farm"},
{"Pilih Seed A dan Seed B dulu","Select Seed A and Seed B first"}, {"Seed A dan Seed B harus beda","Seed A and Seed B must differ"},
{"Kombinasi ini tidak bisa di-splice","This combination can't be spliced"},
{"Pilih tile dulu di Grid Tile","Select tiles in the Tile Grid first"}, {"Pilih block dari inventori","Select a block from inventory"},
{"Hentikan Auto Farm / Clear / Farmer dulu","Stop Auto Farm / Clear / Farmer first"},
{"atau nyalakan Keliling world","or turn on Roam world"},
{"Kontrol gerak game (WorldMenu.isDown) tidak ketemu","Game movement control (WorldMenu.isDown) not found"},
{"Fungsi pukul game belum ketemu","Game punch function not found"},
{"Seed habis: atur posisi & tile break di tab Pabrik supaya bisa dapat seed","Out of seeds: set break position & tiles in the Factory tab to get seeds"},
{"Config dihapus. Execute ulang untuk default","Config deleted. Re-execute for defaults"},
{"Config dimuat","Config loaded"}, {"Belum ada config","No config yet"}, {"Tersimpan","Saved"},
{"Executor tidak bisa simpan file","Executor can't save files"}, {"Executor tidak bisa hapus file","Executor can't delete files"},
{"Executor tidak punya fungsi request","Executor has no request function"},
{"Gagal simpan file","Failed to save file"}, {"Gagal hapus file","Failed to delete file"},
{"Gagal kirim","Failed to send"}, {"Terkirim","Sent"}, {"Antrian","Queue"},
{"Gagal buka","Failed to open"}, {"Gagal","Failed"},{"BERHENTI","STOPPED"}, {"JALAN","RUNNING"}, {"fase","phase"}, {"PANEN","HARVEST"}, {"TANAM","PLANT"},
{"TUNGGU","WAIT"}, {"TIDAK terbaca (harvest mati)","NOT readable (harvest off)"}, {"terbaca","readable"},
{"TIDAK","NO"}, {"cadangan","fallback"}, {"Inventori","Inventory"}, {"Posisi","Position"},
{"Karakter","Character"}, {"Aksi","Action"}, {"Baris","Row"}, {"Pohon","Trees"}, {"Pijakan","Scaffold"},
{"Pemain","Players"}, {"belum dipilih","not selected"}, {"belum diatur","not set"}, {"ditolak","rejected"},
{"Bentuk","Shape"}, {"baris","rows"}, {"jarak","spacing"}, {"tangga","stairs"}, {"punya","have"},
{"butuh","need"}, {"kurang","short"}, {"cukup","enough"}, {"Terpasang","Placed"},
{"terhalang block lain","blocked by other blocks"}, {"Celah tanam terisi block","Planting gaps filled with blocks"},
{"bersihkan dulu","clear it first"}, {"Celah tanam: bersih","Planting gaps: clear"}, {"Seed block","Block seed"},
{"Hasil","Result"}, {"panen","harvest"}, {"tanam","plant"}, {"di-drop","dropped"}, {"sisakan","keep"},
{"drop saat","drop at"}, {"world ini","this world"}, {"pintu","door"}, {"Lama sesi","Session time"},
{"Block pecah","Blocks broken"}, {"Block di-place","Blocks placed"}, {"Drop diambil","Drops collected"},
{"Item terbanyak","Top items"}, {"Selesai","Done"}, {"diklaim script","claimed by script"},
{"Quest baru dalam","New quests in"}, {"Quest belum bisa diambil","Quests not available yet"},
{"Gagal ambil quest","Failed to get quests"}, {"Gagal ambil daftar code","Failed to get code list"},
{"Pesan terakhir","Last message"}, {"Cek lagi dalam","Checking again in"}, {"detik","seconds"},
{"Auto klaim mati","Auto claim off"}, {"Code aktif","Active codes"}, {"sudah ditukar","redeemed"},
{"ditukar script","redeemed by script"}, {"Auto redeem mati","Auto redeem off"},
{"Redeem sedang ditutup","Redeem is closed"}, {"Block depan","Front blocks"}, {"tumpukan","piles"},
{"siap panen","ready"}, {"tumbuh","growing"}, {"Scan terakhir","Last scan"}, {"siap","ready"},
{"berikut","next"}, {"Tidak ada yang cocok","No matches"}, {"Kosong","Empty"}, {"Tidak ada pohon","No trees"},
{"item lain","more items"}, {"jenis lain","more types"}, {"pakai Cari item","use Search item"},
{"(pohon)","(tree)"}, {"Di-recycle","Recycled"}, {"Item dipilih","Items selected"}, {"Ditanam","Planted"},
{"tidak bisa di-splice","can't be spliced"}, {"Pilih Seed A dan Seed B","Select Seed A and Seed B"},
{"Menghitung...","Calculating..."}, {"Mulai...","Starting..."}, {"Lanjut aktivitas...","Resuming activity..."},
{"data pemain belum ketemu","player data not found"}, {"belum ketemu","not found"},
{"tidak ketemu","not found"}, {"ketemu","found"}, {"tekan","press"},
{"tidak ada block padat di inventori","no solid blocks in inventory"},
{"tidak ada seed di inventori","no seeds in inventory"}, {"tidak ada pohon","no trees"},
{"tidak ada tempat tanam","no planting spot"},
{"Y baris atas","top row Y"}, {"baris atas","top row"}, {"Y awal","start Y"}, {"X awal","start X"},
{"jumlah baris","row count"}, {"masuk lagi dalam","rejoining in"}, {"masuk ke","entering"},
{"dalam","in"}, {"Executor tidak punya","Executor has no"},
{"tidak bisa dijangkau / dipecah","can't be reached / broken"}, {"Sisa","Remaining"},
{"dilewati, coba ulang","skipped, retrying"}, {"Gagal membaca pengaturan","Failed to read settings"},
{"balasan kosong","empty reply"}, {"fungsi drop game tidak ketemu","game drop function not found"},
{"fungsi masuk world tidak ketemu","game enter-world function not found"},
{"fungsi splice game tidak ketemu","game splice function not found"},
{"gagal masuk","failed to enter"}, {"nama world tidak diketahui","unknown world name"},
{"tidak bisa ke server","can't reach the server"}, {"tunggu","wait"},
{"world penuh / dikunci / gagal","world full / locked / failed"}, {"aman","safe"}, {"Fase","Phase"},
{"Titik drop belum diatur (tab Titik Drop), drop dilewati","Drop point not set (Drop Point tab), drop skipped"},
{"Ambil hasil panen...","Picking up harvest..."}, {"Lanjut Auto Farm","Resuming Auto Farm"},
{"Auto Farm dihentikan","Auto Farm stopped"}, {"Gagal pulang ke world farmer","Failed to return to farmer world"},
{"Gagal pulang ke world farm","Failed to return to farm world"},
{"Sesi break tanpa aksi: cek posisi & tile break (dicoba lagi 1 menit)","Break session had no action: check break position & tiles (retry in 1 minute)"},
{"pohon siap belum terjangkau, dicoba lagi","ready trees not reachable yet, retrying"},
{"Seed hampir penuh","Seeds almost full"},
{"atur titik drop & nyalakan Auto drop seed","set a drop point & turn on Auto drop seed"},
{"Pasang & pecah","Place & break"}, {"untuk dapat seed","to get seeds"},
{"Seed habis & tidak ada tempat pasang-pecah di samping karakter","Out of seeds & no spot beside the character to place and break"},
{"Tidak ada tempat tanam, menunggu","No planting spot, waiting"},
{"drop di titik ini tidak di-collect lagi","drops at this point are not collected again"},
{"titik kedatangan","arrival point"}, {"hasil panen","harvest"}, {"sisakan seed","keep seeds"},
{"Dipakai","Used by"}, {"Di-drop","Dropped"}, {"Catatan","Note"}, {"Titik","Point"},
{"Produksi","Production"}, {"Drop seed","Seed drop"},
{"Tidak ada baris yang muat (Y atas terlalu bawah). Berdiri di pojok kiri-ATAS Dirt Farm lalu tekan 'Pakai posisi karakter'","No rows fit (top Y too low). Stand at the TOP-LEFT corner of the Dirt Farm, then press 'Use character position'"},
{"tidak ada baris yang muat (Y atas terlalu bawah)","no rows fit (top Y too low)"},
{"berdiri di pojok kiri-atas lalu tekan 'Pakai posisi karakter'","stand at the top-left corner, then press 'Use character position'"},
{"Tidak bisa ke awal Dirt Farm","Can't reach the Dirt Farm start"}, {"Pecah anak tangga","Breaking stair step"},
{"Pasang anak tangga","Placing stair step"}, {"Turun ke anak tangga","Stepping down to stair step"},
{"Bersihkan tile Dirt Farm","Clearing Dirt Farm tile"}, {"Ambil drop","Picking up drop"},
{"1 kosong per baris, tangga kiri & kanan","1 gap per row, stairs on left & right"},
{"titik drop belum diatur","drop point not set"}, {"otomatis saat","automatic at"},
{"Dipakai: Pabrik (seed) & Auto Farm (otomatis saat item ~190)","Used by: Factory (seeds) & Auto Farm (automatic when an item reaches ~190)"},
{"saat","at"},
{"Mati","Off"}, {"mati","off"}, {"pohon siap","trees ready"}, {"pohon","trees"},
{"di-recycle","recycled"}, {"di-splice","spliced"}, {"di-place","placed"}, {"di-queue","queued"}, {"habis","used up"}, {"dan","and"}, {"atau","or"}, {"dari","from"}, {"untuk","for"},
{"sudah","already"}, {"belum","not yet"}, {"lagi","again"}, {"di","at"}, {"ke","to"},
}_0xEAC0.RAW = {
{"(%d+)j (%d+)m (%d+)d","%1h %2m %3s"},
{"(%d+)m (%d+)d","%1m %2s"},
{"(%d+)j (%d+)m","%1h %2m"},
{"/jam","/hour"},
{"(%d+) dtk","%1 s"},
}
function _0xEAC0.prep()
local _0x026D = {}
for _0xF439, _0xBFDC in ipairs(_0xEAC0.PH) do
if _0xBFDC[1] ~= _0xBFDC[2] then
local _0xE991 = _0xBFDC[1]:gsub("[%^%$%(%)%%%.%[%]%*%+%-%?]","%%%0")
if _0xBFDC[1]:match("^%w") then _0xE991 ="%f[%w]".. _0xE991 end
if _0xBFDC[1]:match("%w$") then _0xE991 = _0xE991 .."%f[%W]"end
_0x026D[#_0x026D + 1] = { _0xE991, (_0xBFDC[2]:gsub("%%","%%%%")), #_0xBFDC[1] }
end
end
table.sort(_0x026D, function(_0xE034, _0x783C) return _0xE034[3] > _0x783C[3] end)
_0xEAC0.list = _0x026D
endfunction _0xEAC0.T(_0x7827)
if _0xEAC0.Lang ~="en"or type(_0x7827) ~="string"or _0x7827 ==""then return _0x7827 end
local _0x7BA0 = _0xEAC0.EN[_0x7827]
if _0x7BA0 then return _0x7BA0 end
if not _0xEAC0.list then _0xEAC0.prep() end
for _0xF439, _0x2DAE in ipairs(_0xEAC0.list) do _0x7827 = _0x7827:gsub(_0x2DAE[1], _0x2DAE[2]) end
for _0xF439, _0x2DAE in ipairs(_0xEAC0.RAW) do _0x7827 = _0x7827:gsub(_0x2DAE[1], _0x2DAE[2]) end
return _0x7827
endfunction _0xEAC0.V(_0x7827)
if _0xEAC0.Lang ~="en"or type(_0x7827) ~="string"then return _0x7827 end
return _0xEAC0.EN[_0x7827] or _0x7827
end_0xEAC0.Backs = setmetatable({}, { __mode ="k"})
local function _0xE665(_0x026D, _0x203C)
local _0xDB37 = {}
for _0x7180, val in ipairs(_0x026D) do
local _0x1B62 = _0xEAC0.V(val)
_0xDB37[_0x7180] = _0x1B62
if type(_0x1B62) =="string"then _0x203C[_0x1B62] = val end
end
return _0xDB37
end
function _0xEAC0.wrap(obj)
if _0xEAC0.Lang ~="en"or type(obj) ~="table"then return obj end
return setmetatable({}, {
__index = function(_0xF439, _0xC0A8)
local _0x97A1 = obj[_0xC0A8]
if type(_0x97A1) ~="function"then return _0x97A1 end
return function(_0xF439, _0x7B06, ...)
local _0x203C
if _0xC0A8 =="Dropdown"and type(_0x7B06) =="table"then
_0x203C = {}
if type(_0x7B06.Values) =="table"then _0x7B06.Values = _0xE665(_0x7B06.Values, _0x203C) end
if type(_0x7B06.Value) =="string"then
_0x7B06.Value = _0xEAC0.V(_0x7B06.Value)
elseif type(_0x7B06.Value) =="table"then
_0x7B06.Value = _0xE665(_0x7B06.Value, _0x203C)
end
local _0xB258 = _0x7B06.Callback
if _0xB258 then_0x7B06.Callback = function(opt, ...)
if type(opt) =="string"then
opt = _0x203C[opt] or opt
elseif type(opt) =="table"then
local _0xEFE9 = {}
for _0x7180, _0x5409 in ipairs(opt) do _0xEFE9[_0x7180] = _0x203C[_0x5409] or _0x5409 end
opt = _0xEFE9
end
return _0xB258(opt, ...)
end
end
elseif (_0xC0A8 =="Refresh"or _0xC0A8 =="Select") and _0xEAC0.Backs[obj] then
local _0x783C = _0xEAC0.Backs[obj]
if type(_0x7B06) =="table"then
_0x7B06 = _0xE665(_0x7B06, _0x783C)
elseif type(_0x7B06) =="string"then
_0x7B06 = _0xEAC0.V(_0x7B06)
end
end
if type(_0x7B06) =="table"and _0xC0A8 ~="Refresh"and _0xC0A8 ~="Select"and _0x7B06[1] == nil then
for _0xF439, _0x509A in ipairs({"Title","Desc","Placeholder","Content"}) do
if type(_0x7B06[_0x509A]) =="string"then _0x7B06[_0x509A] = _0xEAC0.T(_0x7B06[_0x509A]) end
end
elseif type(_0x7B06) =="string"and (_0xC0A8 =="SetDesc"or _0xC0A8 =="SetTitle") then
_0x7B06 = _0xEAC0.T(_0x7B06)
end
local _0x2DAE = _0x97A1(obj, _0x7B06, ...)
if _0x203C and type(_0x2DAE) =="table"then _0xEAC0.Backs[_0x2DAE] = _0x203C end
if type(_0x2DAE) =="table"and _0x2DAE ~= obj then return _0xEAC0.wrap(_0x2DAE) end
return _0x2DAE
end
end,
})
end
end)() end
local function _0x8021(title, content, _0xEF4A)
task.defer(function()
pcall(function()
_0xAA36:Notify({ _0xE762 = _0xEAC0.T(title), Content = _0xEAC0.T(content), Duration = _0xEF4A or 3, Icon ="info"})
end)
end)
endlocal _0x5D2C = {
AutoSave = true,
Paused = false,Folder ="ZieyHUB",
Data = {},List = {},LastJson = nil,
Status ="-",
}
do (function()local _0xB19F = game:GetService("HttpService")
local _0x86F5 = type(writefile) =="function"and type(readfile) =="function"and type(isfile) =="function"_0x5D2C.CanFile = _0x86F5
_0x5D2C.Path = _0x5D2C.Folder .."/config_".. tostring(_0x8270.UserId) ..".json"local function _0x4E2E()
if not _0x86F5 then return nil end
local _0x6192, _0xD02B = pcall(isfile, _0x5D2C.Path)
if not _0x6192 or not _0xD02B then return nil end
local _0x1475, _0xCDA3 = pcall(readfile, _0x5D2C.Path)
if not _0x1475 or type(_0xCDA3) ~="string"then return nil end
local _0xEB08, _0xCB22 = pcall(_0xB19F.JSONDecode, _0xB19F, _0xCDA3)
if _0xEB08 and type(_0xCB22) =="table"then return _0xCB22 end
return nil
end
local _0x91BD = _0x4E2E()
_0x5D2C.Found = _0x91BD ~= nil
_0x5D2C.Data = _0x91BD or {}
if _0x5D2C.Data.AutoSave == false then _0x5D2C.AutoSave = false end
_0x5D2C.Status = _0x5D2C.Found and"Config dimuat"or (_0x86F5 and"Belum ada config"or"Executor tidak bisa simpan file")function _0x5D2C.add(_0xDF0A, tbl, _0xA947, later)
table.insert(_0x5D2C.List, { _0xDF0A = _0xDF0A, tbl = tbl, _0xA947 = _0xA947 })
local _0x3A34 = _0x5D2C.Data[_0xDF0A]
if type(_0x3A34) ~="table"then return end
for _0xF439, _0xC0A8 in ipairs(_0xA947) do
local _0x97A1, _0x5A8C = _0x3A34[_0xC0A8], tbl[_0xC0A8]
if _0x97A1 ~= nil and not (later and later[_0xC0A8]) and (_0x5A8C == nil or type(_0x97A1) == type(_0x5A8C)) then
tbl[_0xC0A8] = _0x97A1
end
end
end
function _0x5D2C.saved(_0xDF0A, _0x795E)
local _0x615D = _0x5D2C.Data[_0xDF0A]
return type(_0x615D) =="table"and _0x615D[_0x795E] or nil
end
local function _0x14EE()
local _0xDB37 = { AutoSave = _0x5D2C.AutoSave, Version = 1 }
for _0xF439, _0x7BA0 in ipairs(_0x5D2C.List) do
local _0x615D = {}
for _0xF439, _0xC0A8 in ipairs(_0x7BA0.keys) do _0x615D[_0xC0A8] = _0x7BA0.tbl[_0xC0A8] end
_0xDB37[_0x7BA0.name] = _0x615D
end
return _0xDB37
end
function _0x5D2C.save(force)
if not _0x86F5 then
_0x5D2C.Status ="Executor tidak bisa simpan file"return false
end
if _0x5D2C.Paused and not force then return false end
local _0x037E, _0xFCAC = pcall(_0xB19F.JSONEncode, _0xB19F, _0x14EE())
if not _0x037E then
_0x5D2C.Status ="Gagal membaca pengaturan"return false
end
if not force and _0xFCAC == _0x5D2C.LastJson then return true end
if type(isfolder) =="function"and type(makefolder) =="function"then
local _0x0A10, _0x4A56 = pcall(isfolder, _0x5D2C.Folder)
if _0x0A10 and not _0x4A56 then pcall(makefolder, _0x5D2C.Folder) end
end
local _0xF64E = pcall(writefile, _0x5D2C.Path, _0xFCAC)
if _0xF64E then
_0x5D2C.LastJson = _0xFCAC
_0x5D2C.Paused = false
_0x5D2C.Status ="Tersimpan ".. os.date("%H:%M:%S")
else
_0x5D2C.Status ="Gagal simpan file"end
return _0xF64E
endfunction _0x5D2C.reset()
_0x5D2C.Paused = true
_0x5D2C.LastJson = nil
if _0x86F5 and type(delfile) =="function"then
local _0xF64E = pcall(delfile, _0x5D2C.Path)
_0x5D2C.Status = _0xF64E and"Config dihapus. Execute ulang untuk default"or"Gagal hapus file"return _0xF64E
end
_0x5D2C.Status ="Executor tidak bisa hapus file"return false
end
function _0x5D2C.start()if _0x5D2C.Found then
local _0x037E, _0xFCAC = pcall(_0xB19F.JSONEncode, _0xB19F, _0x14EE())
if _0x037E then _0x5D2C.LastJson = _0xFCAC end
end
task.spawn(function()
while _0xCA76() do
task.wait(3)
if _0x5D2C.AutoSave and _0xCA76() then _0x5D2C.save(false) end
end
end)
end
end)() end
_0x5D2C.add("Farm", _0x5D82, {"Mode","PlaceMs","BreakMs","AfterBreakMs","HitsOverride","SelectedId","Offsets","CalibX","CalibY","AntiAfk","MutePunch","Visual","LiteMode","AutoCollect","MultiTarget","CollectAround","CollectRadius","CollectMode",
})
_0x5D2C.add("Clear", _0xD222, {"UseBlock","ScaffoldId","Collect","Sweep"})
_0x5D2C.add("Farmer", _0x9715, {"Harvest","HarvestOnly","Plant","Collect","UseBlock","ScaffoldId","HarvestMs","PlantMs","SeedId",
})_0x9715.Drop = false
if _0x9715.HarvestOnly then _0x9715.Harvest, _0x9715.Plant = true, false end_0x5D82.PlaceMs = math.max(_0x5D82.PlaceMs, 140)
_0x5D82.BreakMs = math.max(_0x5D82.BreakMs, 200)
_0x9715.HarvestMs = math.max(_0x9715.HarvestMs, 140)
_0x9715.PlantMs = math.max(_0x9715.PlantMs, 140)
_0x5D2C.add("Misc", _0xFA1E, {"Speed"})
_0x5D2C.add("Chat", _0x4BB9, {"Texts","IntervalSec"})
_0x5D2C.add("Lahan", _0x0DAF, {"X0","X1","Y0"})
_0x5D2C.add("Bangun", _0x3F90, {"BlockId","ThenPabrik","BreakX","BreakY","Tiles"})
_0x5D2C.add("Vending", _0x5F2F, {"Mode","Point","Items","DropX","DropY"})
_0x5D2C.add("Pabrik", _0xECF0, {"SeedId","WholeWorld","Tiles","BreakX","BreakY","Drop","Keep","DropAt","DropWorld","DropX","DropY",
})
_0x5D2C.add("Bahasa", _0xEAC0, {"Saved","Ask"})
_0xEAC0.Lang = (_0xEAC0.Saved =="en") and"en"or"id"local _0x2CBF = { T0 = os.clock(), Gems0 = nil, Items = {}, Base = {} }local _0x2479 = {
On = false,
Url ="",
Penjaga = true,Stop = true,Full = true,_0xE679 = true,_0xC778 = true,_0xECF0 = true,ReportMin = 0,Queue = {},
LastFull = {},
Status ="-",
}
do (function()
local _0xB19F = game:GetService("HttpService")
local function _0xE4ED()
return (syn and syn.request) or (http and http.request) or http_request or request
or (fluxus and fluxus.request)
end
function _0x2479.valid(_0xD8C6)
_0xD8C6 = tostring(_0xD8C6 or"")
for _0xF439, host in ipairs({"discord.com","discordapp.com","ptb.discord.com","canary.discord.com"}) do
if string.sub(_0xD8C6, 1, #host + 22) =="https://".. host .."/api/webhooks/"then return true end
end
return false
endfunction _0x2479.send(_0x8B4B, _0xF5A6)
if not _0x2479.On or not _0x2479.valid(_0x2479.Url) then return end
local _0x0B90 = _0x8B4B =="test"or _0x8B4B =="report"or (_0x8B4B =="penjaga"and _0x2479.Penjaga) or (_0x8B4B =="stop"and _0x2479.Stop)
or (_0x8B4B =="full"and _0x2479.Full) or (_0x8B4B =="bonus"and _0x2479.Bonus)
or (_0x8B4B =="rejoin"and _0x2479.Rejoin) or (_0x8B4B =="pabrik"and _0x2479.Pabrik)
if not _0x0B90 or #_0x2479.Queue >= 20 then return end
table.insert(_0x2479.Queue, _0xEAC0.T(tostring(_0xF5A6)))
end
task.spawn(function()
while _0xCA76() do
local _0xF5A6 = table.remove(_0x2479.Queue, 1)
if not _0xF5A6 then
task.wait(0.5)
else
local _0x3784 = _0xE4ED()
if not _0x3784 then
_0x2479.Status ="Executor tidak punya fungsi request"else
local _0x153E = _0xB19F:JSONEncode({
username ="ziey HUB",
content = ("**[%s]** %s"):format(_0x8270.Name, _0xF5A6),
})
local _0xF64E, _0xD6CD = pcall(_0x3784, {
Url = _0x2479.Url, Method ="POST",
Headers = { ["Content-Type"] ="application/json"}, Body = _0x153E,
})
local _0xAC40 = _0xF64E and type(_0xD6CD) =="table"and tonumber(_0xD6CD.StatusCode or _0xD6CD.Status) or nil
if _0xF64E and (_0xAC40 == nil or _0xAC40 < 300) then
_0x2479.Status ="Terkirim ".. os.date("%H:%M:%S")
else
_0x2479.Status ="Gagal kirim (".. tostring(_0xAC40 or _0xD6CD) ..")"end
end
task.wait(2.5)
end
end
end)
end)() endlocal _0x29E5 = (debug and debug.getconstants) or getconstants
local _0x466Elocal function _0x7D94(_0x74A9)
if not _0x29E5 then return false end
if islclosure and not islclosure(_0x74A9) then return false end
local _0xF64E, _0x4685 = pcall(_0x29E5, _0x74A9)
if not _0xF64E or type(_0x4685) ~="table"then return false end
local _0x62DC, _0x77E1, _0x32D1 = false, false, false
for _0xF439, _0x5B56 in pairs(_0x4685) do
if _0x5B56 =="tile"or _0x5B56 =="SetTile"then _0x62DC = true
elseif _0x5B56 =="placedAt"then _0x77E1 = true
elseif _0x5B56 =="flips"then _0x32D1 = true end
end
return _0x62DC and _0x77E1 and _0x32D1
endlocal function _0x2DDB(_0x74A9)
if not _0x29E5 then return false end
if islclosure and not islclosure(_0x74A9) then return false end
local _0xF64E, _0x4685 = pcall(_0x29E5, _0x74A9)
if not _0xF64E or type(_0x4685) ~="table"then return false end
local _0x3E63, _0xBA09 = false, false
for _0xF439, _0x5B56 in pairs(_0x4685) do
if _0x5B56 =="Empty the Vending Machine first!"then _0x3E63 = true
elseif _0x5B56 =="newCrack"or _0x5B56 =="HarvestProvider"then _0xBA09 = true end
end
return _0x3E63 and _0xBA09
endfunction _0x7FB6.isArmFn(_0x74A9)
if not _0x29E5 then return false end
if islclosure and not islclosure(_0x74A9) then return false end
local _0xF64E, _0x4685 = pcall(_0x29E5, _0x74A9)
if not _0xF64E or type(_0x4685) ~="table"then return false end
local _0xE034, _0x783C, _0x5B56 = false, false, false
for _0xF439, _0xC0A8 in pairs(_0x4685) do
if _0xC0A8 =="forearm"then _0xE034 = true
elseif _0xC0A8 =="heldReach"then _0x783C = true
elseif _0xC0A8 =="punchReach"then _0x5B56 = true end
end
return _0xE034 and _0x783C and _0x5B56
endfunction _0x7FB6.bind(_0x74A9)
local _0x216F = (debug and debug.getupvalue) or getupvalue
local _0xA155 = (debug and debug.setupvalue) or setupvalue
if not (_0x216F and _0xA155) then return false end
local _0x5C82, _0xA98F = {}, 0
for _0x7180 = 1, 16 do
local _0xF64E, _0x97A1 = pcall(_0x216F, _0x74A9, _0x7180)
if not _0xF64E then break end
_0x5C82[_0x7180] = _0x97A1
if _0x97A1 ~= nil then _0xA98F = _0x7180 end
end
for _0x7180 = 1, _0xA98F - 1 do
local _0x97A1 = _0x5C82[_0x7180]
if _0x97A1 == nil or (type(_0x97A1) =="table"and rawget(_0x97A1,"t") ~= nil and rawget(_0x97A1,"facing") ~= nil) then
_0x7FB6.fn, _0x7FB6.idx, _0x7FB6.set = _0x74A9, _0x7180, _0xA155
return true
end
end
return false
end
local function _0x416E(_0x97A1)
local _0x74A9 = rawget(_0x97A1,"state")
if type(_0x74A9) ~="function"then return false end
local _0xF64E, _0x7827 = pcall(_0x74A9)
return _0xF64E and type(_0x7827) =="table"and type(_0x7827.x) =="number"and type(_0x7827.y) =="number"and _0x7827.facing ~= nil and _0x7827.vx ~= nil
endlocal function _0x2631(_0x74A9)
if _0x74A9 == _0x7D94 or _0x74A9 == _0x2DDB then return false end
if isexecutorclosure then
local _0xF64E, _0xD6CD = pcall(isexecutorclosure, _0x74A9)
if _0xF64E and _0xD6CD then return false end
endreturn true
end
function _0x1DCC.member(_0x97A1, _0x795E)
local _0xF64E, _0x09FD = pcall(function() return _0x97A1[_0x795E] end)
if _0xF64E then return _0x09FD end
end
function _0x1DCC.inventorySlots(_0x97A1)
if type(_0x97A1) ~="table"then return nil endlocal _0xC225 = _0x1DCC.member(_0x97A1,"slots")
return type(_0xC225) =="table"and _0xC225 or nil
endfunction _0x1DCC.inventoryOK(_0x97A1)
if _0x97A1 == _0xFB94 or not _0x1DCC.inventorySlots(_0x97A1) then return false end
local _0x157D = _0x1DCC.member(_0x97A1,"count")
if type(_0x157D) ~="function"then return false end
local _0xF64E, _0x2FB9 = pcall(getmetatable, _0x97A1)
if _0xF64E and type(_0x2FB9) =="table"and (_0x2FB9 == _0xFB94 or rawget(_0x2FB9,"__index") == _0xFB94) then
return true
end
if _0x157D == _0x1DCC.member(_0xFB94,"count") then return true endreturn type(_0x1DCC.member(_0x97A1,"add")) =="function"and type(_0x1DCC.member(_0x97A1,"remove")) =="function"and type(_0x1DCC.member(_0x97A1,"room")) =="function"endfunction _0x1DCC.findInventory(_0xC779, _0xF661)
_0xF661 = _0xF661 or 1200
local _0xF17A, _0xC95D, _0x2799 = {}, {}, 1
local _0xA996 = _0x1DCC.inventoryOK(_0x1DCC.Inv) and _0x1DCC.Inv or nil
local _0x6159 = _0xA996 and _0x1DCC.InvSource or nil
local _0xA947 = {"inventory","Inventory","inv","Inv","backpack","Backpack","bag","Bag","data","Data","state","State","openBackpack","ui"}
local function _0xD6E4(_0x09FD, _0xCFC0, _0x9C57)
local _0x8B4B = type(_0x09FD)
if (_0x8B4B ~="table"and _0x8B4B ~="function") or _0xC95D[_0x09FD] or #_0xF17A >= _0xF661 then return end
if _0x09FD == _0x2582 or _0x09FD == _G or _0x09FD == _0x1DCC or _0x09FD == _0x6FB2 or _0x09FD == _0x7528
or _0x09FD == _0x5D82 or _0x09FD == _0xD7DB or _0x09FD == _0xFB94 then return end
if _0x8B4B =="function"and not _0x2631(_0x09FD) then return end
_0xC95D[_0x09FD] = true
_0xF17A[#_0xF17A + 1] = { _0x09FD = _0x09FD, _0xCFC0 = _0xCFC0, _0x9C57 = _0x9C57 }
end
for _0xF439, _0x119F in ipairs(_0xC779) do _0xD6E4(_0x119F.value, 0, _0x119F.label) end
while _0x2799 <= #_0xF17A do
local _0x7ADC = _0xF17A[_0x2799]
_0x2799 = _0x2799 + 1
local _0x09FD, _0xCFC0 = _0x7ADC.value, _0x7ADC.depth
if type(_0x09FD) =="table"then
if not _0xA996 and _0x1DCC.inventoryOK(_0x09FD) then _0xA996, _0x6159 = _0x09FD, _0x7ADC.label end
if not _0x1DCC.World and type(rawget(_0x09FD,"fg")) =="table"and type(rawget(_0x09FD,"bg")) =="table"and type(rawget(_0x09FD,"w")) =="number"and type(rawget(_0x09FD,"h")) =="number"and rawget(_0x09FD,"spawn") ~= nil then
_0x1DCC.World = _0x09FD
end
if _0xA996 and _0x1DCC.World then return _0xA996, _0x6159,"objek ".. tostring(_0x2799 - 1) end
if _0xCFC0 < 5 thenfor _0xF439, _0x795E in ipairs(_0xA947) do
_0xD6E4(rawget(_0x09FD, _0x795E), _0xCFC0 + 1, _0x7ADC.label ..".".. _0x795E)
end
local _0x157D = 0
for _0x795E, child in next, _0x09FD do
_0x157D = _0x157D + 1
if _0x157D > 64 then break endif _0x795E ~="_G"and _0x795E ~="_ENV"and _0x795E ~="fg"and _0x795E ~="bg"and _0x795E ~="slots"and _0x795E ~="live"and _0x795E ~="free"then
_0xD6E4(child, _0xCFC0 + 1, _0x7ADC.label)
end
end
local _0xF64E, _0x2FB9 = pcall(getmetatable, _0x09FD)
if _0xF64E and type(_0x2FB9) =="table"then _0xD6E4(rawget(_0x2FB9,"__index"), _0xCFC0 + 1, _0x7ADC.label) end
end
elseif _0xCFC0 < 5 and _0x466E then
for _0xF439, upvalue in pairs(_0x466E(_0x09FD)) do
_0xD6E4(upvalue, _0xCFC0 + 1, _0x7ADC.label ..".upvalue")
end
end
if _0x2799 % 100 == 0 then task.wait() end
end
local _0xA858 = (debug and (type(debug.getupvalues) =="function"or type(debug.getupvalue) =="function"))
or type(getupvalues) =="function"or type(getupvalue) =="function"return _0xA996, _0x6159,"objek ".. tostring(_0x2799 - 1) .."; upvalue ".. (_0xA858 and"tersedia"or"tidak tersedia")
end
function _0x1DCC.inventoryFn(_0x74A9)
if not _0x29E5 then return true end
local _0xF64E, _0x4A54 = pcall(_0x29E5, _0x74A9)
if not _0xF64E or type(_0x4A54) ~="table"then return false end
for _0xF439, _0x795E in pairs(_0x4A54) do
if _0x795E =="slots"or _0x795E =="inventory"or _0x795E =="Inventory"or _0x795E =="backpack"or _0x795E =="Backpack"or _0x795E =="openBackpack"then return true end
end
return false
end
function _0x1DCC.inventoryEntries()
local _0xD81C = _0x1DCC.Inv
local _0xC225 = _0x1DCC.inventorySlots(_0xD81C)
if not _0x1DCC.inventoryOK(_0xD81C) or type(_0xC225) ~="table"then
_0x1DCC.InvError ="Data inventori belum ditemukan (deteksi r2); rincian pencarian ada di tab Koneksi"return {}
end
_0x1DCC.InvError = nil
local _0xDB37 = {}for _0xF439, slot in pairs(_0xC225) do
if type(slot) =="table"then
local _0x2010, _0x66F3 = tonumber(slot.id), tonumber(slot.n)
if _0x2010 and _0x2010 >= 0 and _0x2010 < math.huge and _0x2010 % 1 == 0 and _0x66F3 and _0x66F3 > 0 and _0x66F3 < math.huge then
_0xDB37[#_0xDB37 + 1] = { _0x2010 = _0x2010, _0x66F3 = _0x66F3 }
end
end
end
return _0xDB37
end
local function _0xE6B1()if type(getgc) ~="function"then
_0x1DCC.ScanErr ="Executor tidak punya getgc()"return false, _0x1DCC.ScanErr
end
local _0x143D, _0xFDAA = pcall(getgc, true)
if not _0x143D or type(_0xFDAA) ~="table"then
_0x1DCC.ScanErr ="Scan game gagal: ".. tostring(_0xFDAA)
return false, _0x1DCC.ScanErr
end
_0x1DCC.ScanErr = nil
local _0x8804 = _0x1DCC.inventoryOK(_0x1DCC.Inv) and _0x1DCC.Inv or nil
local _0x2575 = _0x1DCC.InvSource
local _0xF3C9 = {}
_0x1DCC.World, _0x1DCC.Inv, _0x1DCC.SetTile, _0x1DCC.State, _0x1DCC.Punch, _0x1DCC.Menu = nil, nil, nil, nil, nil, nil
_0x1DCC.StateOwner = nil
_0x1DCC.Input, _0x1DCC.InputSource = nil, nil
_0x1DCC.InvSource = nil
_0x1DCC.Gems = nil
_0x1DCC.Hud = nil
_0x1DCC.Others = nil
_0x1DCC.Arm = nil
_0x1DCC.Particles = {}
_0x7FB6.Particles = nil
for _0xF439, _0x97A1 in pairs(_0xFDAA) do
local _0xE8EF = type(_0x97A1)
if _0xE8EF =="table"then
if not _0x1DCC.World then
local _0xF64E, _0xA414 = pcall(function()
return type(rawget(_0x97A1,"fg")) =="table"and type(rawget(_0x97A1,"bg")) =="table"and type(rawget(_0x97A1,"w")) =="number"and type(rawget(_0x97A1,"h")) =="number"and rawget(_0x97A1,"spawn") ~= nil
end)
if _0xF64E and _0xA414 then _0x1DCC.World = _0x97A1 end
end
if not _0x1DCC.Inv then
if _0x1DCC.inventoryOK(_0x97A1) then
_0x1DCC.Inv, _0x1DCC.InvSource = _0x97A1,"getgc"elseif #_0xF3C9 < 160 and (rawget(_0x97A1,"inventory") or rawget(_0x97A1,"Inventory")
or rawget(_0x97A1,"inv") or rawget(_0x97A1,"backpack")) then
_0xF3C9[#_0xF3C9 + 1] = { _0x09FD = _0x97A1, _0x9C57 ="data game"}
end
end
if not _0x1DCC.State then
local _0xF64E, _0x55CA = pcall(_0x416E, _0x97A1)
if _0xF64E and _0x55CA then _0x1DCC.State, _0x1DCC.StateOwner = rawget(_0x97A1,"state"), _0x97A1 end
end
if not _0x1DCC.Menu then
local _0xF64E, _0xEA28 = pcall(function()
return type(_0x1DCC.member(_0x97A1,"openBackpack")) =="function"and type(_0x1DCC.member(_0x97A1,"ui")) =="table"end)
if _0xF64E and _0xEA28 then _0x1DCC.Menu = _0x97A1 end
end
if not _0x1DCC.Gems then
local _0xF64E, _0x1C6D = pcall(function() return type(rawget(_0x97A1,"addGems")) =="function"end)
if _0xF64E and _0x1C6D then _0x1DCC.Gems = _0x97A1 end
end
if not _0x1DCC.Hud then
local _0xF64E, _0x8FD7 = pcall(function()
return type(rawget(_0x97A1,"punchRange")) =="function"and type(rawget(_0x97A1,"handPower")) =="function"end)
if _0xF64E and _0x8FD7 then _0x1DCC.Hud = _0x97A1 end
end
if not _0x1DCC.Others thenlocal _0xF64E, _0x628C = pcall(function()
return type(rawget(_0x97A1,"list")) =="function"and type(rawget(_0x97A1,"where")) =="function"and type(rawget(_0x97A1,"playerAt")) =="function"end)
if _0xF64E and _0x628C then _0x1DCC.Others = _0x97A1 end
end
if _0xE6F2 then
local _0xF64E, _0x1446 = pcall(function()
return getmetatable(_0x97A1) == _0xA072 and type(rawget(_0x97A1,"live")) =="table"and type(rawget(_0x97A1,"free")) =="table"end)
if _0xF64E and _0x1446 then table.insert(_0x1DCC.Particles, _0x97A1) end
end
elseif _0xE8EF =="function"and _0x2631(_0x97A1) then
if not _0x1DCC.SetTile and _0x7D94(_0x97A1) then
_0x1DCC.SetTile = _0x97A1
elseif not _0x1DCC.Punch and _0x2DDB(_0x97A1) then
_0x1DCC.Punch = _0x97A1
end
if not _0x1DCC.Inv and #_0xF3C9 < 160 and _0x1DCC.inventoryFn(_0x97A1) then
_0xF3C9[#_0xF3C9 + 1] = { _0x09FD = _0x97A1, _0x9C57 ="fungsi game"}
end
end
if _0x1DCC.World and _0x1DCC.Inv and _0x1DCC.SetTile and _0x1DCC.State and _0x1DCC.Punch
and _0x1DCC.Menu and _0x1DCC.Gems and _0x1DCC.Hud and _0x1DCC.Others then break end
end
if not _0x1DCC.Inv then
table.insert(_0xF3C9, 1, { _0x09FD = _0x1DCC.World, _0x9C57 ="world"})
table.insert(_0xF3C9, 1, { _0x09FD = _0x1DCC.Menu, _0x9C57 ="menu"})
table.insert(_0xF3C9, 1, { _0x09FD = _0xB298 and _0x748C or nil, _0x9C57 ="WorldMenu"})
_0x1DCC.Inv, _0x1DCC.InvSource, _0x1DCC.InvScanInfo = _0x1DCC.findInventory(_0xF3C9)
end
if not _0x1DCC.Inv and _0x8804 then _0x1DCC.Inv, _0x1DCC.InvSource = _0x8804, _0x2575 end
return _0x1DCC.World ~= nil
end
local function _0xF8D8()
return"World: ".. (_0x1DCC.World and"OK"or"TIDAK")
.." | Inventori: ".. (_0x1DCC.inventoryOK(_0x1DCC.Inv) and"OK"or"TIDAK")
.." | setTile: ".. (_0x1DCC.SetTile and"OK"or"cadangan")
.." | Posisi: ".. (_0x1DCC.State and"OK"or"cadangan")
.." | Pukul: ".. (_0x1DCC.Punch and"OK"or"TIDAK")
.." | Drop: ".. (_0x2FB0.list and"OK"or"TIDAK")
.." | Pohon: ".. (_0x1DCC.Trees and"OK"or"TIDAK")
.." | Pemain: ".. (_0x1DCC.Others and"OK"or"TIDAK")
.." | Animasi: ".. (_0x7FB6.fn and"OK"or"TIDAK")
.." | Dropdown: ".. (_0x6FB2.DropErr and ("ERROR ".. tostring(_0x6FB2.DropErr))
or (not _0x1DCC.inventoryOK(_0x1DCC.Inv) and"menunggu inventori") or (_0x6FB2.DropOk and"OK"or"-"))
.."\nKontrol gerak: ".. tostring(_0x86C8 and _0x86C8.status and _0x86C8.status() or"belum diperiksa")
.."\nStartup: ".. tostring(_0xA5D7 and _0xA5D7.Status or"-")
.."\nDeteksi inventori r2: ".. tostring(_0x1DCC.InvSource or _0x1DCC.InvScanInfo or"-")
.. (_0x1DCC.InvError and ("\nInventori: ".. _0x1DCC.InvError) or"")
.. (_0x1DCC.InvWatchErr and ("\nEvent inventori: ".. _0x1DCC.InvWatchErr) or"")
.. (_0x1DCC.ScanErr and ("\nScan: ".. _0x1DCC.ScanErr) or"")
endlocal function _0x949D(_0x2010)
local _0x91CB = _0xD7DB[_0x2010]
return (_0x91CB and _0x91CB.name) or ("Item #".. tostring(_0x2010))
end
local function _0xC90B(_0x2010)
if not _0x1DCC.Inv then return 0 end
local _0xF64E, _0x66F3 = pcall(function() return _0x1DCC.Inv:count(_0x2010) end)
_0x66F3 = _0xF64E and tonumber(_0x66F3) or nil
if _0x66F3 and _0x66F3 >= 0 and _0x66F3 < math.huge then return _0x66F3 end
local _0x069C = 0
for _0xF439, slot in ipairs(_0x1DCC.inventoryEntries()) do
if slot.id == tonumber(_0x2010) then _0x069C = _0x069C + slot.n end
end
return _0x069C
end
local function _0x6A40(_0x2010)
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB then return false end
if _0x91CB.kind =="tool"or _0x91CB.kind =="cloth"or _0x91CB.kind =="clothes"or _0x91CB.kind =="consumable"then
return false
end
if _0x91CB.lock or _0x91CB.area then return false end
return true
end
local function _0xA5DD()
local _0x1D5B, _0xC95D = {}, {}
for _0xF439, slot in ipairs(_0x1DCC.inventoryEntries()) do
if not _0xC95D[slot.id] and _0x6A40(slot.id) then
_0xC95D[slot.id] = true
_0x1D5B[#_0x1D5B + 1] = slot.id
end
end
table.sort(_0x1D5B)
return _0x1D5B
end
local function _0xD35D(_0x1D5B)
local _0xDB37 = {}
for _0xF439, _0x2010 in ipairs(_0x1D5B or _0xA5DD()) do
_0xDB37[#_0xDB37 + 1] = string.format("%s [%d]", _0x949D(_0x2010), _0x2010)
end
if #_0xDB37 == 0 then _0xDB37 = {"(inventori kosong / belum terbaca)"} end
return _0xDB37
endlocal _0x31F4 = nil
local _0xA21C = false
local _0x7EC7 = nil
local _0xB6A4 = nillocal function _0x122B()
local _0x1D5B, _0xC95D = {}, {}
for _0xF439, slot in ipairs(_0x1DCC.inventoryEntries()) do
local _0x91CB = _0xD7DB[slot.id]
if _0x91CB and _0x91CB.kind =="seed"and not _0xC95D[slot.id] then
_0xC95D[slot.id] = true
_0x1D5B[#_0x1D5B + 1] = slot.id
end
end
table.sort(_0x1D5B)
return _0x1D5B
endlocal function _0x6302(_0x95E7, _0x4394, _0x2010)
if not _0x95E7 or not _0x2010 then return true end
local _0x0991 ="[".. tostring(_0x2010) .."]"for _0xF439, _0x9C57 in ipairs(_0x4394) do
if string.sub(_0x9C57, -#_0x0991) == _0x0991 then
local _0xF64E, _0x8599 = _0x6FB2.exec(function() _0x95E7:Select(_0x9C57) end)
if not _0xF64E then _0x6FB2.DropErr ="Pilih item: ".. tostring(_0x8599) end
return _0xF64E
end
end
return true
endfunction _0x6FB2.ddRefresh(_0x95E7, _0x4394)
if not _0x95E7 then return true end
local _0xF64E, _0x8599 = _0x6FB2.exec(function() _0x95E7:Refresh(_0x4394) end)
if _0xF64E then
_0x6FB2.DropOk = os.clock()
else
_0x6FB2.DropErr = ("%s (id %s/%s)"):format(tostring(_0x8599), tostring(_0x6FB2.ident()), tostring(_0x7528.Ident))
_0x6FB2.DropErrAt = os.clock()
end
return _0xF64E, _0x8599
end
local function _0xAE12(force)
_0x6FB2.DropErr = nil
if not _0x1DCC.inventoryOK(_0x1DCC.Inv) then
if _0x7FB6.quickRefs then pcall(_0x7FB6.quickRefs) end
if not _0x1DCC.inventoryOK(_0x1DCC.Inv) then _0xE6B1() end
if _0x6FB2.watchInventory then _0x6FB2.watchInventory() end
end
if _0x5F2F.refreshItems and not _0x5F2F.Running then pcall(_0x5F2F.refreshItems, false) end
local _0x1D5B = _0xA5DD()
local _0x1DA0 = table.concat(_0x1D5B,",")
if force or _0x1DA0 ~= _0x31F4 then
local _0x4394 = _0xD35D(_0x1D5B)
local _0xF64E = _0x6FB2.ddRefresh(_0x6FB2.InvDropdown, _0x4394)
if _0xF64E then _0xF64E = _0x6302(_0x6FB2.InvDropdown, _0x4394, _0x5D82.SelectedId) end
_0x31F4 = _0xF64E and _0x1DA0 or nil
end
local _0xD812 = _0x122B()
local _0xE1CC = table.concat(_0xD812,",")
if force or _0xE1CC ~= _0x7EC7 then
local _0x4394 = {}
for _0xF439, _0x2010 in ipairs(_0xD812) do
_0x4394[#_0x4394 + 1] = string.format("%s [%d]", _0x949D(_0x2010), _0x2010)
end
if #_0x4394 == 0 then _0x4394 = {"(tidak ada seed di inventori)"} end
local _0xF64E = _0x6FB2.ddRefresh(_0x6FB2.SeedDropdown, _0x4394)
if _0xF64E then _0xF64E = _0x6302(_0x6FB2.SeedDropdown, _0x4394, _0x9715.SeedId) end
if _0x6FB2.PabrikSeedDropdown then
local _0xBA17 = _0x6FB2.ddRefresh(_0x6FB2.PabrikSeedDropdown, _0x4394)
if _0xBA17 then _0xBA17 = _0x6302(_0x6FB2.PabrikSeedDropdown, _0x4394, _0xECF0.SeedId) end
_0xF64E = _0xF64E and _0xBA17
end
_0x7EC7 = _0xF64E and _0xE1CC or nil
endlocal _0xB660 = {}
for _0xF439, _0x2010 in ipairs(_0x1D5B) do
local _0x91CB = _0xD7DB[_0x2010]
if _0x91CB and _0x91CB.solid and _0x91CB.kind ~="seed"then _0xB660[#_0xB660 + 1] = _0x2010 end
end
local _0x1CA2 = table.concat(_0xB660,",")
if force or _0x1CA2 ~= _0xB6A4 then
local _0x4394 = {}
for _0xF439, _0x2010 in ipairs(_0xB660) do
_0x4394[#_0x4394 + 1] = string.format("%s [%d]", _0x949D(_0x2010), _0x2010)
end
if #_0x4394 == 0 then _0x4394 = {"(tidak ada block padat di inventori)"} end
local _0xF64E = true
for _0xF439, _0x7ADC in ipairs({
{ _0x95E7 = _0x6FB2.ClearBlockDropdown, _0x2010 = _0xD222.ScaffoldId },
{ _0x95E7 = _0x6FB2.FarmerBlockDropdown, _0x2010 = _0x9715.ScaffoldId },
{ _0x95E7 = _0x6FB2.BuildBlockDropdown, _0x2010 = _0x3F90.BlockId },
}) do
local _0x21ED = _0x6FB2.ddRefresh(_0x7ADC.dd, _0x4394)
if _0x21ED then _0x21ED = _0x6302(_0x7ADC.dd, _0x4394, _0x7ADC.id) end
_0xF64E = _0xF64E and _0x21ED
end
_0xB6A4 = _0xF64E and _0x1CA2 or nil
endif _0x6FB2.SpliceRefresh then
local _0xF64E, _0x8599 = pcall(_0x6FB2.SpliceRefresh, force)
if not _0xF64E then _0x6FB2.DropErr ="Splice: ".. tostring(_0x8599) end
end
if _0x6FB2.TrashRefresh then
local _0xF64E, _0x8599 = pcall(_0x6FB2.TrashRefresh, force)
if not _0xF64E then _0x6FB2.DropErr ="Tas: ".. tostring(_0x8599) end
end
end
function _0x6FB2.checkInventory(force, silent)
local _0xF64E, _0x8599 = pcall(_0xAE12, force)
if not _0xF64E then _0x6FB2.DropErr = tostring(_0x8599) end
if _0x6FB2.RefInfo then pcall(function() _0x6FB2.RefInfo:SetDesc(_0xF8D8()) end) end
local _0x3330 = _0x1DCC.InvError or _0x6FB2.DropErr
if _0x3330 then
warn("[ziey HUB] inventori: ".. tostring(_0x3330))
if force and not silent then _0x8021("Inventori", tostring(_0x3330), 6) end
end
return _0xF64E and _0x3330 == nil, _0x3330
end
local function _0xA747(force)
if force then _0x6FB2.InvForce = true end
if not force and _0xA21C then return end
_0xA21C = true
_0x6FB2.later("inv", function()
_0xA21C = false
local _0x509A = _0x6FB2.InvForce == true
_0x6FB2.InvForce = false
if _0xCA76() then _0x6FB2.checkInventory(_0x509A) end
end, force and 0 or 0.3)
end
local _0x80B6
local function _0x61C2()
if _0x80B6 then pcall(function() _0x80B6:Disconnect() end) end
_0x80B6 = nil
_0x1DCC.InvWatchErr = nil
if not _0x1DCC.Inv then return end
local _0xF64E, _0x8599 = pcall(function()
local _0xE434 = _0x1DCC.Inv.changed
if typeof(_0xE434) =="Instance"then _0xE434 = _0xE434.Event end
if not _0xE434 or type(_0xE434.Connect) ~="function"then
error("Event changed tidak tersedia; gunakan Refresh daftar")
end
_0x80B6 = _0xE434:Connect(function()
if _0xCA76() then _0xA747(false) end
end)
end)
if _0xF64E and _0x80B6 then
table.insert(_0x3886, _0x80B6)
elseif not _0xF64E then
_0x1DCC.InvWatchErr = tostring(_0x8599)
end
end
_0x6FB2.watchInventory = _0x61C2local function _0x3270(_0x7E30, _0x5409, _0x6665)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or _0x5409 < 0 or _0x6665 < 0 or _0x5409 >= _0x9F6E.w or _0x6665 >= _0x9F6E.h then return nil end
local _0x08ED = _0x9F6E[_0x7E30]
local _0x05DF = _0x08ED and _0x08ED[_0x6665]
return _0x05DF and (_0x05DF[_0x5409] or 0) or nil
end
local function _0x0887()
local _0x440B = _0xE807:FindFirstChild("GameGui")
local _0x8AD6 = _0x440B and _0x440B:FindFirstChild("World") and _0x440B.World:FindFirstChild("Camera")
local _0x8B34 = _0x8AD6 and _0x8AD6:FindFirstChild("Tiles")
local _0x94F2 = _0x8AD6 and _0x8AD6:FindFirstChild("PlayerView")
if not (_0x8B34 and _0x94F2) then return nil end
local _0x7A96 = _0x8B34:FindFirstChildWhichIsA("ImageLabel")
if not _0x7A96 or _0x7A96.AbsoluteSize.X <= 0 then return nil end
return { _0x8B34 = _0x8B34, _0x94F2 = _0x94F2, ts = _0x7A96.AbsoluteSize.X }
end
local function _0x22CB()
if _0x1DCC.State then
local _0xF64E, _0x7827 = pcall(_0x1DCC.State)
if _0xF64E and type(_0x7827) =="table"and type(_0x7827.x) =="number"then
if _0x7827.active == false then return nil end
return math.floor(_0x7827.x) + _0x5D82.CalibX, math.floor(_0x7827.y - 0.475) + _0x5D82.CalibY
end
end
local _0x97A1 = _0x0887()
if not _0x97A1 then return nil end
local _0xB000 = _0x97A1.pv.AbsolutePosition + _0x97A1.pv.AbsoluteSize / 2
local _0x9012 = _0xB000 - _0x97A1.tiles.AbsolutePosition
return math.floor(_0x9012.X / _0x97A1.ts) + _0x5D82.CalibX, math.floor(_0x9012.Y / _0x97A1.ts) + _0x5D82.CalibY
endlocal function _0x906C()
local _0x756B = _0x5D82.Override
return (_0x756B and _0x756B.offsets) or _0x5D82.Offsets
end
local function _0x7CED()
local _0x756B = _0x5D82.Override
if _0x756B then return _0x756B.block end
return _0x5D82.SelectedId
end
local function _0x08CF()
local _0x756B = _0x5D82.Override
return (_0x756B and _0x756B.mode) or _0x5D82.Mode
end
local function _0xC17F()
local _0x026D = {}
for _0x795E in pairs(_0x906C()) do
local _0x935C, _0x15BA = string.match(_0x795E,"^(-?%d+),(-?%d+)$")
table.insert(_0x026D, { _0x935C = tonumber(_0x935C), _0x15BA = tonumber(_0x15BA) })
end
table.sort(_0x026D, function(_0xE034, _0x783C)
if _0xE034.dy ~= _0x783C.dy then return _0xE034.dy < _0x783C.dy end
return _0xE034.dx < _0x783C.dx
end)
return _0x026D
endlocal function _0xBF1A(_0x7E30, _0x5409, _0x6665, _0x2010)
if _0x2010 ~= 0 and _0x5D82.Visual and _0x7FB6.place then _0x7FB6.place(_0x5409, _0x6665, _0x2010) end
if _0x1DCC.SetTile then
local _0xF64E, _0x8599 = pcall(_0x1DCC.SetTile, _0x7E30, _0x5409, _0x6665, _0x2010, false, false)
if _0xF64E then return true end
warn("[ziey HUB] setTile game gagal, pakai remote langsung: ".. tostring(_0x8599))
end
if _0x7025 and type(_0x5E7F) =="table"and type(_0x5E7F.tile) =="table"thenlocal _0xF64E = pcall(_0x5E7F.tile.send, {
_0x7E30 = (_0x7E30 =="bg") and 2 or 1, _0x5409 = _0x5409, _0x6665 = _0x6665, _0x2010 = _0x2010, flip = false,
})
if not _0xF64E then return false end
elseif _0x49C2 then
_0x49C2:FireServer(_0x7E30, _0x5409, _0x6665, _0x2010, false)
else
return false
end
local _0x08ED = _0x1DCC.World and _0x1DCC.World[_0x7E30]
if _0x08ED and _0x08ED[_0x6665] then _0x08ED[_0x6665][_0x5409] = _0x2010 end
return true
end
local function _0x3908(_0x5409, _0x6665)
if _0x7025 and type(_0x5E7F) =="table"and _0x5E7F.act then
pcall(_0x5E7F.act.send, { _0x5409 = _0x5409 + 0.5, _0x6665 = _0x6665 + 0.5 })
end
end
local function _0xEDFD(_0x2010)
if _0x5D82.HitsOverride > 0 then return _0x5D82.HitsOverride end
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB then return 4 end
local _0x887D = (_0x91CB.kind =="seed") and 20 or _0x91CB.hits
return tonumber(_0x887D) or 4
end
function _0x1DCC.protectedItem(_0x2010)
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB then return false end
if _0x91CB.lock or _0x91CB.area or _0x91CB.guildLock or _0x91CB.vend or _0x91CB.display then return true end
local _0x8B4B = string.lower(tostring(_0x91CB.kind or"")):gsub("[_%-%s]+","")
if _0x8B4B =="lock"or _0x8B4B =="worldlock"or _0x8B4B =="arealock"or _0x8B4B =="guildlock"then return true end
local _0xDF0A = string.lower(tostring(_0x91CB.name or"")):gsub("<.->",""):gsub("`.",""):gsub("[_%-%s]+"," ")
if _0xDF0A:find("%f[%a]lock%f[%A]") then return true end
local _0xAD7A = _0xDF0A:gsub("%s","")
return _0xAD7A =="worldlock"or _0xAD7A =="diamondlock"or _0xAD7A =="bluegemlock"or _0xAD7A =="guildlock"or _0xAD7A =="smalllock"or _0xAD7A =="biglock"or _0xAD7A =="hugelock"or _0xAD7A =="builderslock"end
local function _0x8CD6(_0x2010)
if not _0x2010 or _0x2010 == 0 or _0x1DCC.protectedItem(_0x2010) then return false end
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB then return false end
local _0x887D = (_0x91CB.kind =="seed") and 20 or _0x91CB.hits
return _0x887D == nil or _0x887D > 0
endlocal _0xB0DB = 0.32local function _0xF90D(_0x5409, _0x6665)
local _0x1C89 = _0x7CED()
if not _0x1C89 then return nil end
local _0xC8CC = _0x3270("fg", _0x5409, _0x6665)
if _0xC8CC == nil then return nil end
local _0x4D4B = _0x3270("bg", _0x5409, _0x6665)
local _0x91CB = _0xD7DB[_0x1C89]
local _0x7E30 = (_0x91CB and _0x91CB.background) and"bg"or"fg"local _0x5A8C = (_0x7E30 =="bg") and _0x4D4B or _0xC8CC
if not (_0x5A8C == 0 and (_0x7E30 =="bg"or _0xC8CC == 0)) then return nil end
if _0xC90B(_0x1C89) <= 0 then return"habis"end
_0xBF1A(_0x7E30, _0x5409, _0x6665, _0x1C89)
if _0x1DCC.Inv then pcall(function() _0x1DCC.Inv:remove(_0x1C89, 1) end) end
local _0x795E = _0x5409 ..",".. _0x6665
_0x895A[_0x795E] = nil
_0x0508[_0x795E] = os.clock()
_0x5D82.Placed += 1
_0x5D82.LastAction ="Place ".. _0x949D(_0x1C89) .." (".. _0x5409 ..",".. _0x6665 ..")"return"place"endlocal function _0x9B38(_0x5409, _0x6665)
local _0xC8CC = _0x3270("fg", _0x5409, _0x6665)
if _0xC8CC == nil then return false end
if _0xC8CC ~= 0 then return _0x8CD6(_0xC8CC) end
local _0x4D4B = _0x3270("bg", _0x5409, _0x6665)
return _0x5D82.BreakBackground and _0x4D4B ~= nil and _0x4D4B ~= 0 and _0x8CD6(_0x4D4B)
endlocal function _0xE0BA(_0x5409, _0x6665, includeBg, nativeOnly, settle)
if includeBg == nil then includeBg = _0x5D82.BreakBackground end
local _0x954B, _0x08ED = _0x1DCC.World, _0x1DCC.World and _0x1DCC.World.fg
local _0x795E = _0x5409 ..",".. _0x6665
local _0xC8CC = _0x3270("fg", _0x5409, _0x6665)
if _0xC8CC == nil then return nil end
local _0x4D4B = _0x3270("bg", _0x5409, _0x6665)
local _0x7E30, _0x2010
if _0xC8CC ~= 0 then
_0x7E30, _0x2010 ="fg", _0xC8CC
elseif includeBg and _0x4D4B ~= 0 then
_0x7E30, _0x2010 ="bg", _0x4D4B
end
if not _0x7E30 or not _0x8CD6(_0x2010) then return nil end
local _0x21B7 = _0x954B and _0x954B.spawn
if _0x21B7 and _0x5409 == _0x21B7.X and _0x6665 == _0x21B7.Y then return nil,"protected"endlocal _0x615D = _0x0508[_0x795E]
if _0x615D then
local _0x03C4 = os.clock() - _0x615D
if _0x03C4 < _0xB0DB then task.wait(_0xB0DB - _0x03C4) end
_0x0508[_0x795E] = nil
end
if _0x1DCC.World ~= _0x954B or not _0x954B or _0x954B.fg ~= _0x08ED then return nil,"world-changed"endif nativeOnly and (_0x3270("fg", _0x5409, _0x6665) ~= _0xC8CC or _0x3270(_0x7E30, _0x5409, _0x6665) ~= _0x2010) then
return nil,"tile-changed"end
if type(_0x1DCC.Punch) =="function"then
local _0xF64E, _0x8599 = pcall(_0x1DCC.Punch, _0x5409, _0x6665, _0x5D82.MutePunch or nil, nil)
if not _0xF64E then
_0x5D82.LastAction ="Error pukul: ".. tostring(_0x8599)
return nil,"punch-error"end
if settle and _0x3270(_0x7E30, _0x5409, _0x6665) == _0x2010 then
local _0xE7AB = os.clock() + settle
while _0xCA76() and _0x1DCC.World == _0x954B and _0x954B.fg == _0x08ED
and _0x3270(_0x7E30, _0x5409, _0x6665) == _0x2010 and os.clock() < _0xE7AB do task.wait(0.02) end
end
if _0x1DCC.World ~= _0x954B or _0x954B.fg ~= _0x08ED then return nil,"world-changed"end
if _0x5D82.Visual then _0x7FB6.swing(_0x5409, _0x6665,"punch") end
if _0x3270(_0x7E30, _0x5409, _0x6665) ~= _0x2010 then
_0x2FB0.brokeAt[_0x795E] = os.clock()
_0x5D82.Broken += 1
_0x5D82.LastAction ="Break ".. _0x949D(_0x2010) .." (".. _0x5409 ..",".. _0x6665 ..")"return"broke"end
_0x5D82.LastAction ="Pukul ".. _0x949D(_0x2010) .." (".. _0x5409 ..",".. _0x6665 ..")"return"hit"end
if nativeOnly then
_0x5D82.LastAction ="Fungsi pukul game terputus"return nil,"native-missing"endlocal _0x8C86 = _0x895A[_0x795E]
if not _0x8C86 or _0x8C86.id ~= _0x2010 or _0x8C86.layer ~= _0x7E30 then
_0x8C86 = { _0x2010 = _0x2010, _0x7E30 = _0x7E30, _0x66F3 = 0 }
_0x895A[_0x795E] = _0x8C86
end
_0x8C86.n += 1
_0x3908(_0x5409, _0x6665)
if _0x5D82.Visual then _0x7FB6.swing(_0x5409, _0x6665,"punch") end
local _0x5376 = _0xEDFD(_0x2010)
if _0x8C86.n >= _0x5376 then
_0xBF1A(_0x7E30, _0x5409, _0x6665, 0)
_0x895A[_0x795E] = nil
_0x2FB0.brokeAt[_0x795E] = os.clock()
_0x5D82.Broken += 1
_0x5D82.LastAction ="Break ".. _0x949D(_0x2010) .." (".. _0x5409 ..",".. _0x6665 ..")"return"broke"end
_0x5D82.LastAction ="Pukul ".. _0x949D(_0x2010) .." ".. _0x8C86.n .."/".. _0x5376
return"hit"endlocal _0x9708 = _0x84AE:FindFirstChild("TakeDrop")function _0x7FB6.findFast()
if not getconnections or _0x7FB6.fn then return _0x7FB6.fn ~= nil end
for _0xF439, _0xDF0A in ipairs({"RenderStepped","Heartbeat","PreRender","Stepped"}) do
local _0x5A8E, _0x1DA0 = pcall(function() return _0xED14[_0xDF0A] end)
if _0x5A8E and _0x1DA0 then
local _0xF64E, _0x7FAC = pcall(getconnections, _0x1DA0)
if _0xF64E and type(_0x7FAC) =="table"then
for _0xF439, _0x5B56 in ipairs(_0x7FAC) do
local _0x25D4, _0x74A9 = pcall(function() return _0x5B56.Function end)
if _0x25D4 and type(_0x74A9) =="function"then
for _0xF439, _0x5711 in pairs(_0x466E(_0x74A9)) do
if type(_0x5711) =="function"and _0x7FB6.isArmFn(_0x5711) then
_0x1DCC.Arm = _0x5711
return _0x7FB6.bind(_0x5711)
end
end
end
end
end
end
end
return false
endfunction _0x7FB6.quickRefs()
if _0x1DCC.inventoryOK(_0x1DCC.Inv) and _0x1DCC.World then return true end
local _0xC779 = {
{ _0x09FD = _0xB298 and _0x748C or nil, _0x9C57 ="WorldMenu"},
{ _0x09FD = _0x1DCC.Menu, _0x9C57 ="menu"},
{ _0x09FD = _0x1DCC.World, _0x9C57 ="world"},
}
if type(getconnections) =="function"then
for _0xF439, service in ipairs({
{ object = _0xED14, _0xFBD6 = {"RenderStepped","Heartbeat","PreRender","Stepped"} },
{ object = _0xE3CF, _0xFBD6 = {"InputBegan","InputEnded"} },
}) do
for _0xF439, _0xDF0A in ipairs(service.names) do
local _0x5A8E, _0x1DA0 = pcall(function() return service.object[_0xDF0A] end)
if _0x5A8E and _0x1DA0 then
local _0xF64E, _0x7FAC = pcall(getconnections, _0x1DA0)
if _0xF64E and type(_0x7FAC) =="table"then
for _0xF439, _0x5B56 in ipairs(_0x7FAC) do
local _0x25D4, _0x74A9 = pcall(function() return _0x5B56.Function end)
if _0x25D4 and type(_0x74A9) =="function"then
_0xC779[#_0xC779 + 1] = { _0x09FD = _0x74A9, _0x9C57 = _0xDF0A }
end
if #_0xC779 >= 100 then break end
end
end
end
end
end
end
local _0xD81C, _0x6159, _0xA07A = _0x1DCC.findInventory(_0xC779, 800)
_0x1DCC.Inv, _0x1DCC.InvSource, _0x1DCC.InvScanInfo = _0xD81C, _0x6159, _0xA07A
return _0x1DCC.inventoryOK(_0x1DCC.Inv)
end
function _0x466E(_0x74A9)
local _0x56D4 = (debug and debug.getupvalues) or getupvalues
if type(_0x56D4) =="function"then
local _0xF64E, _0x2795 = pcall(_0x56D4, _0x74A9)
if _0xF64E and type(_0x2795) =="table"then return _0x2795 end
end
local _0xDB37 = {}
local _0x216F = (debug and debug.getupvalue) or getupvalue
if type(_0x216F) =="function"then
for _0x7180 = 1, 60 do
local _0xE2E6 = table.pack(pcall(_0x216F, _0x74A9, _0x7180))
if not _0xE2E6[1] or _0xE2E6.n < 2 then break endif _0xE2E6.n >= 3 and type(_0xE2E6[2]) =="string"then _0xDB37[_0x7180] = _0xE2E6[3]
else _0xDB37[_0x7180] = _0xE2E6[2] end
end
end
return _0xDB37
end
function _0x2FB0.record(_0x2DDF)
if type(_0x2DDF) ~="table"then return false end
local _0x608D = type(_0x2DDF.uid)
if _0x608D ~="number"and _0x608D ~="string"then return false end
if (_0x608D =="number"and (_0x2DDF.uid ~= _0x2DDF.uid or math.abs(_0x2DDF.uid) == math.huge))
or (_0x608D =="string"and _0x2DDF.uid =="") then return false end
for _0xF439, _0x795E in ipairs({"id","x","y","n"}) do
local _0x09FD = _0x2DDF[_0x795E]
if type(_0x09FD) ~="number"or _0x09FD ~= _0x09FD or math.abs(_0x09FD) == math.huge then return false end
end
return _0x2DDF.n >= 0 and _0x2DDF.id >= 0 and _0x2DDF.id % 1 == 0
endfunction _0x2FB0.bindWorld()
local _0x9F6E = _0x1DCC.World
local _0x08ED = _0x9F6E and _0x9F6E.fg
if _0x2FB0.World and (_0x2FB0.World ~= _0x9F6E or _0x2FB0.Grid ~= _0x08ED) then
_0x2FB0.list, _0x2FB0.update, _0x2FB0.seen, _0x2FB0.TouchBalances, _0x2FB0.Pool = nil, nil, nil, nil, nil
_0x2FB0.Source, _0x2FB0.nextTick = nil, nil
_0x2FB0.brokeAt = {}
table.clear(_0x6663)
end
_0x2FB0.World, _0x2FB0.Grid = _0x9F6E, _0x08ED
return _0x9F6E
end
function _0x2FB0.pool()
local _0x9F6E = _0x2FB0.bindWorld()
if not _0x2FB0.Pool then _0x2FB0.Pool = { _0x954B = _0x9F6E, _0xCBC9 = 0, _0x63A7 = {} } end
return _0x2FB0.Pool
end
function _0x2FB0.room(_0x2010)
if _0x2010 == 112 then return math.huge end
local _0xD81C = _0x1DCC.Inv
if _0xD81C and type(_0xD81C.room) =="function"then
local _0xF64E, _0x66F3 = pcall(_0xD81C.room, _0xD81C, _0x2010)
if _0xF64E and type(_0x66F3) =="number"and _0x66F3 == _0x66F3 then return math.max(0, _0x66F3) end
end
return nil
end
function _0x2FB0.balance(_0x2010)
if _0x2010 == 112 then
if type(_0x2CBF.gemsNow) =="function"then
local _0xF64E, _0x66F3 = pcall(_0x2CBF.gemsNow)
if _0xF64E and type(_0x66F3) =="number"then return _0x66F3 end
end
return nil
end
if not _0x1DCC.Inv then return nil end
local _0xF64E, _0x66F3 = pcall(_0xC90B, _0x2010)
if _0xF64E and type(_0x66F3) =="number"then return _0x66F3 end
return nil
endfunction _0x2FB0.observeTouches(_0xC95D)
local _0xC242, _0xC114 = _0x2FB0.seen or {}, _0x2FB0.TouchBalances or {}
local _0x1D5B, _0xE7F9, _0x5E96 = {}, {}, {}
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot()) do _0x5E96[_0x2DDF.uid] = _0x2DDF end
for _0x2DDF, _0x66F3 in pairs(_0xC242) do
_0x1D5B[_0x2DDF.id] = true
local _0x4DD4 = _0x5E96[_0x2DDF.uid]
local _0xBE18 = _0x4DD4 and _0x4DD4.id == _0x2DDF.id and _0x4DD4.n or 0
_0xE7F9[_0x2DDF.id] = (_0xE7F9[_0x2DDF.id] or 0) + math.max(0, _0x66F3 - _0xBE18)
end
for _0x2DDF in pairs(_0xC95D) do _0x1D5B[_0x2DDF.id] = true end
for _0x2010 in pairs(_0x1D5B) do
local _0x66F3 = _0x2FB0.balance(_0x2010)
local _0x964C = _0xC114[_0x2010]
if _0x66F3 and _0x964C then
local _0xB5AC = math.min(_0xE7F9[_0x2010] or 0, math.max(0, _0x66F3 - _0x964C))
if _0xB5AC > 0 then
_0x5D82.Collected = _0x5D82.Collected + _0xB5AC
_0x2CBF.Items[_0x2010] = (_0x2CBF.Items[_0x2010] or 0) + _0xB5AC
end
end
_0xC114[_0x2010] = _0x66F3
end
_0x2FB0.TouchBalances, _0x2FB0.seen = _0xC114, _0xC95D
end
function _0x2FB0.snapshot(_0x026D)
local _0xDB37 = {}
_0x026D = _0x026D or _0x2FB0.list
if type(_0x026D) =="table"then
for _0xF439, _0x2DDF in pairs(_0x026D) do
if _0x2FB0.record(_0x2DDF) then _0xDB37[#_0xDB37 + 1] = _0x2DDF end
end
end
return _0xDB37
end
function _0x2FB0.key(_0x026D, _0x48DB)
for _0x795E, _0x09FD in pairs(_0x026D or {}) do
if rawequal(_0x09FD, _0x48DB) then return _0x795E end
end
end
function _0x2FB0.fail(_0xF55F)
_0x2FB0.Status, _0x2FB0.LastError = _0xF55F, _0xF55F
endlocal function _0x3C96(_0x615D, allowEmpty)
if type(_0x615D) ~="table"or _0x615D == _0x1DCC.World or _0x615D == _0x1DCC.Inv then return false end
if next(_0x615D) == nil then return allowEmpty == true end
for _0xF439, _0x2DDF in pairs(_0x615D) do
if _0x2FB0.record(_0x2DDF) then return true end
end
return false
endlocal function _0x1761(deep)
_0x2FB0.bindWorld()local _0x64C0 = _0x1DCC.World
local _0x2F1F = _0x64C0 and rawget(_0x64C0,"dropList")
if type(_0x2F1F) =="function"then
local _0xB0B6, _0x2586 = pcall(_0x2F1F)
if _0xB0B6 and _0x3C96(_0x2586, true) then
if _0x2FB0.list ~= _0x2586 then _0x2FB0.update = nil end
_0x2FB0.list = _0x2586
_0x2FB0.Source ="World.dropList"if not _0x2FB0.update then _0x2FB0.findUpdate() end
return true
end
end
if _0x2FB0.list and not deep then return true end_0x2FB0.list, _0x2FB0.update, _0x2FB0.Source = nil, nil, nillocal _0xB701 = _0x1DCC.World and rawget(_0x1DCC.World,"dropTaken")
if type(_0xB701) =="function"then
for _0xF439, _0x5711 in pairs(_0x466E(_0xB701)) do
if not _0x2FB0.list and _0x3C96(_0x5711) then
_0x2FB0.list = _0x5711
_0x2FB0.Source ="World.dropTaken"end
end
endlocal _0x6205 = _0x84AE:FindFirstChild("DropTaken")
if not _0x2FB0.list and _0x6205 and getconnections then
local _0xF64E, _0x7FAC = pcall(getconnections, _0x6205.OnClientEvent)
if _0xF64E and type(_0x7FAC) =="table"then
for _0xF439, _0x5B56 in ipairs(_0x7FAC) do
local _0x25D4, _0x74A9 = pcall(function() return _0x5B56.Function end)
if _0x25D4 and type(_0x74A9) =="function"then
for _0xF439, _0x5711 in pairs(_0x466E(_0x74A9)) do
if not _0x2FB0.list and _0x3C96(_0x5711) then
_0x2FB0.list = _0x5711
_0x2FB0.Source ="DropTaken event"end
end
end
if _0x2FB0.list then break end
end
end
endif not _0x2FB0.list and deep and type(getgc) =="function"then
local _0xF64E, _0xFDAA = pcall(getgc, true)
if _0xF64E and type(_0xFDAA) =="table"then
for _0xF439, _0x97A1 in pairs(_0xFDAA) do
if _0x3C96(_0x97A1) then _0x2FB0.list, _0x2FB0.Source = _0x97A1,"getgc"; break end
end
end
end
if _0x2FB0.list then _0x2FB0.findUpdate() end
return _0x2FB0.list ~= nil
endfunction _0x2FB0.findUpdate()
local _0x9F6E, _0x026D = _0x1DCC.World, _0x2FB0.list
local _0xB701 = _0x9F6E and rawget(_0x9F6E,"dropTaken")
if type(_0xB701) ~="function"or not _0x026D then return false end
for _0xF439, _0x5711 in pairs(_0x466E(_0xB701)) do
if type(_0x5711) =="function"then
for _0xF439, uu in pairs(_0x466E(_0x5711)) do
if rawequal(uu, _0x026D) then
_0x2FB0.update = _0x5711
return true
end
end
end
end
return false
endfunction _0x2FB0.applyTaken(_0x2DDF, _0xBE18)
local _0x026D = _0x2FB0.list
if not _0x026D or _0x2FB0.key(_0x026D, _0x2DDF) == nil then return end
if not _0x2FB0.update then _0x2FB0.findUpdate() end
if _0x2FB0.update then
local _0xF64E = pcall(_0x2FB0.update, _0x2DDF, _0xBE18)
if _0xF64E then
if _0xBE18 > 0 then
_0x2DDF.flown = nil
if typeof(_0x2DDF.frame) =="Instance"then pcall(function() _0x2DDF.frame.Visible = not _0x2DDF.culled end) end
end
return
end
end_0x2DDF.n = _0xBE18
if _0xBE18 > 0 then
pcall(function()
if _0x2DDF.setGem then _0x2DDF.setGem(_0xBE18) elseif _0x2DDF.count then _0x2DDF.count:set(_0xBE18 > 1 and tostring(_0xBE18) or"") end
end)
_0x2DDF.flown = nil
if typeof(_0x2DDF.frame) =="Instance"then pcall(function() _0x2DDF.frame.Visible = not _0x2DDF.culled end) end
else
local _0x7180 = _0x2FB0.key(_0x026D, _0x2DDF)
if type(_0x7180) =="number"and _0x7180 >= 1 and _0x7180 % 1 == 0 and _0x7180 <= #_0x026D then table.remove(_0x026D, _0x7180)
elseif _0x7180 ~= nil then _0x026D[_0x7180] = nil end
if typeof(_0x2DDF.frame) =="Instance"then pcall(function() _0x2DDF.frame:Destroy() end) end
end
end
local function _0xA761(_0x2DDF)
if not _0x2FB0.record(_0x2DDF) then return false end
local _0x8EE8 = _0x2FB0.pool()
local _0x954B, _0x2176, _0x08ED = _0x1DCC.World, _0x1DCC.Inv, _0x1DCC.World and _0x1DCC.World.fg
if _0x8EE8.busy >= 4 then return false end
local _0x6D57 = _0x1DCC.World and rawget(_0x1DCC.World,"takeDrop")
if type(_0x6D57) ~="function"and not _0x9708 then
_0x2FB0.fail("Fungsi ambil drop game belum ditemukan; tekan Hubungkan ke game")
return false
end
if not _0x2FB0.list or _0x2FB0.key(_0x2FB0.list, _0x2DDF) == nil then return false end
if _0x2DDF.taking or _0x2DDF.pending or _0x2DDF.display or (_0x2DDF.n or 0) <= 0 then return false endif _0x2DDF.armed == false and _0x2DDF.id ~= 112 then return false end
local _0x4DD4 = os.clock()
if _0x6663[_0x2DDF.uid] and _0x4DD4 < _0x6663[_0x2DDF.uid] then return false end
local _0x92FD = _0x2DDF.n
if _0x2DDF.id ~= 112 and _0x1DCC.Inv thenlocal _0xD955, _0x63A7 = pcall(function() return _0x1DCC.Inv:room(_0x2DDF.id) end)
if _0xD955 and type(_0x63A7) =="number"then _0x92FD = math.min(_0x92FD, math.max(0, _0x63A7 - (_0x8EE8.room[_0x2DDF.id] or 0))) end
end
if _0x92FD <= 0 then_0x2FB0.fail("Inventori penuh untuk ".. _0x949D(_0x2DDF.id))
_0x6663[_0x2DDF.uid] = _0x4DD4 + 1
local _0xA98F = _0x2479.LastFull[_0x2DDF.id]
if not _0xA98F or _0x4DD4 - _0xA98F > 120 then
_0x2479.LastFull[_0x2DDF.id] = _0x4DD4
_0x2479.send("full","Inventori penuh: ".. _0x949D(_0x2DDF.id) .." tidak bisa diambil lagi")
end
return false
end
_0x8EE8.busy = _0x8EE8.busy + 1
if _0x2DDF.id ~= 112 then _0x8EE8.room[_0x2DDF.id] = (_0x8EE8.room[_0x2DDF.id] or 0) + _0x92FD end
_0x2DDF.taking = trueif typeof(_0x2DDF.frame) =="Instance"then pcall(function() _0x2DDF.frame.Visible = false end) end
local _0xF64E, _0x87E9
if type(_0x6D57) =="function"then
_0xF64E, _0x87E9 = pcall(_0x6D57, _0x2DDF.uid, _0x92FD)else
_0xF64E, _0x87E9 = pcall(_0x9708.InvokeServer, _0x9708, _0x2DDF.uid, _0x92FD)
end
_0x2DDF.taking = false
_0x8EE8.busy = math.max(0, _0x8EE8.busy - 1)
if _0x2DDF.id ~= 112 then _0x8EE8.room[_0x2DDF.id] = math.max(0, (_0x8EE8.room[_0x2DDF.id] or 0) - _0x92FD) end
if _0x1DCC.World ~= _0x954B or _0x1DCC.Inv ~= _0x2176 or not _0x954B or _0x954B.fg ~= _0x08ED then return false end
if not (_0xF64E and type(_0x87E9) =="number"and _0x87E9 > 0 and _0x87E9 <= _0x92FD) then
_0x5D82.CollectFail = _0x5D82.CollectFail + 1
_0x2FB0.fail(_0xF64E and"Pengambilan drop ditolak / belum dikonfirmasi server"or ("Gagal ambil drop: ".. string.sub(tostring(_0x87E9), 1, 180)))
_0x2DDF.refused = os.clock()_0x2DDF.failN = (_0x2DDF.failN or 0) + 1
_0x6663[_0x2DDF.uid] = os.clock() + math.min(8, _0x2DDF.failN)_0x2DDF.flown = nil
if typeof(_0x2DDF.frame) =="Instance"then pcall(function() _0x2DDF.frame.Visible = not _0x2DDF.culled end) end
return false
end
_0x6663[_0x2DDF.uid] = nil
if _0x2DDF.id == 112 then
if _0x1DCC.Gems then pcall(_0x1DCC.Gems.addGems, _0x87E9) end
elseif _0x1DCC.Inv then
pcall(function() _0x1DCC.Inv:add(_0x2DDF.id, _0x87E9) end)
end
_0x2FB0.applyTaken(_0x2DDF, math.max(0, (_0x2DDF.n or 0) - _0x87E9))_0x5D82.Collected = _0x5D82.Collected + _0x87E9
_0x2CBF.Items[_0x2DDF.id] = (_0x2CBF.Items[_0x2DDF.id] or 0) + _0x87E9
_0x5D82.LastAction ="Collect ".. _0x949D(_0x2DDF.id) .." x".. _0x87E9
_0x2FB0.Status ="Terambil ".. _0x949D(_0x2DDF.id) .." x".. _0x87E9
_0x2FB0.LastError = nil
return true
end
local function _0x250A(_0x615D, _0x5409, _0x6665)
return _0x5409 >= _0x615D.x - 0.15 and _0x5409 < _0x615D.x + 1.15 and _0x6665 >= _0x615D.y - 0.15 and _0x6665 < _0x615D.y + 1.15
endlocal _0x92ED = {}
local _0x2F15 = 0
local function _0x4B2E(_0x2DDF, _0x4DD4)
if not _0x2FB0.record(_0x2DDF) or _0x2DDF.taking or _0x2DDF.pending or _0x2DDF.display or _0x2DDF.n <= 0 then return false end
if _0x2DDF.armed == false and _0x2DDF.id ~= 112 then return false end
local _0xF377 = _0x6663[_0x2DDF.uid]
return not (_0xF377 and _0x4DD4 < _0xF377)
endfunction _0x2FB0.remoteTick(_0x026D, _0x7827)
local _0x954B = _0x1DCC.World
local _0x566B = _0x906C()
local _0x0C18 = (_0x5D82.AutoCollect or _0x5D82.Override ~= nil) and next(_0x566B) ~= nil
local _0x32F0 = _0x5D82.CollectAround or (_0xD222.Running and _0xD222.Collect) or (_0x9715.Running and _0x9715.Collect)
or _0xECF0.Running or _0x3F90.Running or _0xD808.Roaming
if not _0x0C18 and not _0x32F0 then
_0x2FB0.Status ="Pilih tile Grid atau aktifkan Collect di sekitar karakter"return 0
end
local _0x1700, _0x212D = _0x7827.x, _0x7827.y - 0.475
local _0xB96E, _0xAD4E = _0x22CB()
local _0x4DD4 = os.clock()
local _0xDD5D = (_0x5D82.CollectRadius or 3) + 0.2
local _0x0826 = _0xECF0.Zoneif _0x0826 and _0x0826.world ~= (_0x1DCC.World and rawget(_0x1DCC.World,"name")) then _0x0826 = nil end
local _0x78E8 = 0for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot(_0x026D)) do
if _0x1DCC.World ~= _0x954B or not _0xCA76() or _0x2FB0.pool().busy >= 4 then break end
if _0x4B2E(_0x2DDF, _0x4DD4) and not (_0x0826 and math.abs(_0x2DDF.x - _0x0826.x) <= 2.5 and math.abs(_0x2DDF.y - _0x0826.y) <= 2.5) then
local _0x568F = _0x32F0 and math.abs(_0x2DDF.x - _0x1700) <= _0xDD5D and math.abs(_0x2DDF.y - _0x212D) <= _0xDD5D
if not _0x568F and _0x0C18 and _0xB96E then
for _0x795E in pairs(_0x566B) do
local _0x756B = _0x92ED[_0x795E]
if not _0x756B then
local _0x935C, _0x15BA = string.match(_0x795E,"^(-?%d+),(-?%d+)$")
_0x756B = { tonumber(_0x935C), tonumber(_0x15BA) }
_0x92ED[_0x795E] = _0x756B
end
if _0x756B[1] and math.abs(math.floor(_0x2DDF.x) - (_0xB96E + _0x756B[1])) <= 1
and math.abs(math.floor(_0x2DDF.y) - (_0xAD4E + _0x756B[2])) <= 1 then
_0x568F = true
break
end
end
end
if _0x568F and math.abs(_0x2DDF.x - _0x1700) <= _0xDD5D and math.abs(_0x2DDF.y - _0x212D) <= _0xDD5D then _0x78E8 = _0x78E8 + 1; task.spawn(_0xA761, _0x2DDF) end
end
end
if _0x78E8 == 0 then _0x2FB0.Status ="Menunggu drop dalam area collect"end
return _0x78E8
end
local function _0xA729()
_0x2FB0.bindWorld()
if _0x5D82.DropPause or _0xECF0.Traveling then
_0x2FB0.seen, _0x2FB0.TouchBalances = nil, nil
_0x2FB0.Status ="Collect dijeda saat mengantar drop"return
end
local _0xCBC9 = _0x5D82.AutoCollect or _0x5D82.CollectAround or _0x5D82.Override ~= nil or (_0xD222.Running and _0xD222.Collect)
or (_0x9715.Running and _0x9715.Collect) or _0xECF0.Running or _0x3F90.Running or _0xD808.Roaming or _0x5F2F.Running
if not _0xCBC9 then _0x2FB0.Status ="Mati"; return end
local _0x0F19 = os.clock()
if _0x0F19 < (_0x2FB0.nextTick or 0) then return end_0x2FB0.nextTick = _0x0F19 + ((_0x5D82.CollectMode =="Remote") and 0.1 or 0.2)
local _0x026D = _0x2FB0.list
if not _0x026D then
_0x2FB0.Status ="Daftar drop belum ditemukan; coba Hubungkan ke game saat ada drop"local _0x4DD4 = os.clock()
if _0x4DD4 >= _0x2F15 then_0x2F15 = _0x4DD4 + 5
_0x1761()
end
return
end
local _0xF64E, _0x7827 = false, nil
if _0x1DCC.State then _0xF64E, _0x7827 = pcall(_0x1DCC.State) end
if not (_0xF64E and type(_0x7827) =="table"and type(_0x7827.x) =="number"and type(_0x7827.y) =="number") then
_0x2FB0.Status ="Posisi karakter belum terbaca"return
end
if _0x5D82.CollectMode =="Remote"then
_0x2FB0.seen, _0x2FB0.TouchBalances = nil, nil
_0x2FB0.remoteTick(_0x026D, _0x7827)return
end
_0x2FB0.Status = _0x86C8.Menu and"Sentuhan: drop diambil saat badan menyentuhnya"or"Kontrol gerak game belum terhubung; tekan Hubungkan ke game"if _0x5D82.CollectAround then _0x2FB0.Status = _0x2FB0.Status .."; untuk radius gunakan mode Remote"end
local _0x1700, _0x212D = _0x7827.x, _0x7827.y - 0.475
local _0xC95D = {}
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot(_0x026D)) do
if type(_0x2DDF) =="table"and type(_0x2DDF.x) =="number"and math.abs(_0x2DDF.x - _0x1700) <= 1.5 and math.abs(_0x2DDF.y - _0x212D) <= 1.5 then
_0xC95D[_0x2DDF] = _0x2DDF.n or 0
end
end
_0x2FB0.observeTouches(_0xC95D)
end
table.insert(_0x3886, _0xED14.Heartbeat:Connect(function()
if _0xCA76() then
local _0xF64E, _0x8599 = pcall(_0xA729)
if not _0xF64E then _0x2FB0.fail("Error collect: ".. string.sub(tostring(_0x8599), 1, 180)) end
end
end))local function _0x6CAA(_0x615D, maxSec)
local _0x954B = _0x1DCC.World
if not _0x2FB0.list then return false end
local _0x4B13 = os.clock() + maxSec
repeat
if not _0xCA76() or _0x1DCC.World ~= _0x954B then return false end
local _0xCBC9 = false
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot()) do
if _0x2DDF.n > 0 and not _0x2DDF.display and _0x250A(_0x615D, _0x2DDF.x, _0x2DDF.y) then _0xCBC9 = true; break end
end
if not _0xCBC9 then return true end
task.wait()
until os.clock() >= _0x4B13
return false
endlocal function _0x9A9F(maxSec)
local _0x026D = _0x2FB0.list
if not _0x026D then return end
task.wait(0.15)local _0x1981 = os.clock()
while os.clock() - _0x1981 < maxSec and _0xCA76() do
local _0xF64E, _0x7827 = false, nil
if _0x1DCC.State then _0xF64E, _0x7827 = pcall(_0x1DCC.State) end
if not (_0xF64E and type(_0x7827) =="table"and type(_0x7827.x) =="number") then return end
local _0x1700, _0x212D = _0x7827.x, _0x7827.y - 0.475
local _0xCBC9 = false
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot(_0x026D)) doif type(_0x2DDF) =="table"and type(_0x2DDF.x) =="number"and (_0x2DDF.n or 0) > 0 and _0x2DDF.armed ~= false
and math.abs(_0x2DDF.x - _0x7827.x) < 0.6 and _0x2DDF.y + 0.3 > _0x7827.y - 0.95 and _0x2DDF.y - 0.3 < _0x7827.y then
local _0x63A7 = true
if _0x2DDF.id ~= 112 and _0x1DCC.Inv thenlocal _0xD955, _0x2DAE = pcall(function() return _0x1DCC.Inv:room(_0x2DDF.id) end)
if _0xD955 and type(_0x2DAE) =="number"and _0x2DAE <= 0 then _0x63A7 = false end
end
if _0x63A7 then
_0xCBC9 = true
break
end
end
end
if not _0xCBC9 then return end
task.wait()
end
endlocal function _0xA9C5()
local _0x026D = {}
for _0xF439, _0x756B in ipairs(_0xC17F()) do
table.insert(_0x026D,"(".. _0x756B.dx ..",".. _0x756B.dy ..")")
end
return #_0x026D > 0 and table.concat(_0x026D," ") or"-"end
local _0x93B3 = nil
local function _0xBD39()
if not _0x6FB2.Status then return end
local _0x50CF, _0x789A = _0x22CB()
local _0x1C89 = _0x5D82.SelectedId
local _0x3E00 ="Status   : ".. (_0x5D82.Running and"JALAN"or"BERHENTI")
.."\nBlock    : ".. (_0x1C89 and (_0x949D(_0x1C89) .." x".. _0xC90B(_0x1C89)) or"-")
.."\nKarakter : ".. (_0x50CF and ("(".. _0x50CF ..",".. _0x789A ..")") or"tidak di world")
.."\nTile     : ".. _0xA9C5()
.."\nPlace/Break/Collect : ".. _0x5D82.Placed .." / ".. _0x5D82.Broken .." / ".. _0x5D82.Collected
.. (_0x5D82.CollectFail > 0 and (" (ditolak ".. _0x5D82.CollectFail ..")") or"")
.."\nCollect r3 [".. tostring(_0x5D82.CollectMode) .."]: ".. tostring(_0x2FB0.Status or"menunggu koneksi")
.."\nDaftar drop: ".. tostring(#_0x2FB0.snapshot()) .." | sumber: ".. tostring(_0x2FB0.Source or"belum ditemukan")
.. (_0x2FB0.LastError and ("\nAlasan collect: ".. _0x2FB0.LastError) or"")
.. (_0x5D82.Dropped > 0 and ("\nDrop seed: di-drop ".. _0x5D82.Dropped) or"")
.."\nAksi     : ".. _0x5D82.LastAction
.. (_0x5D82.WorkReason and ("\nCollect sebelum break: ".. _0x5D82.WorkReason) or"")
.. (_0x5D82.DropError and ("\nDrop seed: ".. _0x5D82.DropError) or"")
if _0x3E00 == _0x93B3 then return end
_0x93B3 = _0x3E00
task.defer(function()
pcall(function() _0x6FB2.Status:SetDesc(_0x3E00) end)
end)
endlocal _0x32BF = setmetatable({}, { __index = function() return 0 end, __newindex = function() end })
local _0xB784 = setmetatable({ _0x2586 = _0x32BF, _0xC0A8 = {} }, { __index = function() return 0 end, __newindex = function() end })
local _0x8D5D
_0x8D5D = setmetatable({}, {
__index = function() return _0x8D5D end,
__newindex = function() end,
__call = function() return _0x8D5D end,
})
local _0xD9EA = {}
local function _0xB9CD(tbl, _0x795E, repl)
if type(tbl) =="table"and type(rawget(tbl, _0x795E)) =="function"then
table.insert(_0xD9EA, { tbl, _0x795E, rawget(tbl, _0x795E) })
tbl[_0x795E] = repl
end
end
local function _0xE522(_0x4A01)
_0x5D82.LiteMode = _0x4A01
if _0x4A01 then
if #_0xD9EA == 0 then
if _0xE6F2 then _0xB9CD(_0xA072,"spawn", function() return _0xB784 end) end
if _0xF5DC then
_0xB9CD(_0x9220,"play", function() return _0x8D5D end)
_0xB9CD(_0x9220,"playAt", function() return _0x8D5D end)
end
end
for _0xF439, _0xBFDC in ipairs(_0x1DCC.Particles) do
pcall(function()
for _0xF439, _0x7BA0 in ipairs(_0xBFDC.live) do
if typeof(_0x7BA0.l) =="Instance"then _0x7BA0.l.Visible = false end
end
end)
end
else
for _0xF439, _0x7827 in ipairs(_0xD9EA) do
pcall(function() _0x7827[1][_0x7827[2]] = _0x7827[3] end)
end
table.clear(_0xD9EA)
end
endlocal _0xAA28 = nil
local function _0xDE0D(_0x2010, ...)if _0xFA1E.InfJump and _0x2010 == 4992 and not _0x86C8.active then
return true
end
if _0xAA28 then return _0xAA28(_0x2010, ...) end
return false
end
local function _0xE9A3()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return end
local _0x5A8C = rawget(_0x9F6E,"jammerOn")
if _0x5A8C == _0xDE0D or type(_0x5A8C) ~="function"then return end
_0xAA28 = _0x5A8C
_0x9F6E.jammerOn = _0xDE0D
end
local function _0x6642()
local _0x9F6E = _0x1DCC.World
if _0x9F6E and rawget(_0x9F6E,"jammerOn") == _0xDE0D and _0xAA28 then
_0x9F6E.jammerOn = _0xAA28
end
end
local function _0xAC70(_0x4A01)
_0xFA1E.InfJump = _0x4A01
if _0x4A01 then _0xE9A3() else _0x6642() end
end
local function _0x2623(_0x4A01)
_0xFA1E.Ghost = _0x4A01
if not _0x4A01 then
_0xFA1E.UpHeld, _0xFA1E.DownHeld = false, false
if _0x1DCC.World then _0x1DCC.World.ghost = false end
end
if _0x6FB2.FlyPad then _0x6FB2.FlyPad.Enabled = _0x4A01 end
end
local function _0x3A57(pct)
_0xFA1E.Speed = math.clamp(math.floor(tonumber(pct) or 100), 50, 500)
if _0xFA1E.Speed == 100 and _0x1DCC.World then _0x1DCC.World.speedScale = 1 end
endlocal _0x4CD3 = nil
function _0x86C8.member(_0x09FD, _0x795E)
local _0xF64E, _0xE2E6 = pcall(function() return _0x09FD[_0x795E] end)
if _0xF64E then return _0xE2E6 end
end
function _0x86C8.method(_0x09FD)
if type(_0x09FD) ~="table"then return nil end
for _0xF439, _0x795E in ipairs({"isDown","isKeyDown"}) do
local _0x74A9 = _0x86C8.member(_0x09FD, _0x795E)
if type(_0x74A9) =="function"then return _0x74A9, _0x795E end
end
end
function _0x86C8.key(_0x25C5, _0x4561)
local _0x795E = _0x4561 ~= nil and _0x4561 or _0x25C5
if type(_0x795E) ~="string"then _0x795E = _0x86C8.member(_0x795E,"Name") end
if type(_0x795E) ~="string"then return nil end
_0x795E = string.lower(_0x795E)
if _0x795E =="keyleft"or _0x795E =="left"or _0x795E =="a"then return"left"end
if _0x795E =="keyright"or _0x795E =="right"or _0x795E =="d"then return"right"end
if _0x795E =="keyjump"or _0x795E =="jump"or _0x795E =="space"or _0x795E =="up"or _0x795E =="w"then return"jump"end
if _0x795E =="keydown"or _0x795E =="down"or _0x795E =="s"then return"down"end
end
local function _0xA080(...)
local _0x25C5, _0x4561 = ...
local _0x795E = _0x86C8.key(_0x25C5, _0x4561)
if _0x795E then
_0x86C8.Reads = (_0x86C8.Reads or 0) + 1
_0x86C8.LastRead = os.clock()
if _0x86C8.active then return _0x86C8[_0x795E] == true end
if _0xFA1E.Ghost then
if _0x795E =="down"and _0xFA1E.DownHeld then return true end
if _0x795E =="jump"and _0xFA1E.UpHeld then return true end
end
end
if _0x4CD3 then return _0x4CD3(...) end
return false
end
function _0x86C8.findInput()
local _0x0E6E, _0x8F5B, _0x0DDF, _0x122C, _0x7CF6 = nil, nil, nil, nil, -1
local function _0x8285(_0x09FD, _0x6159, _0xC51B)
local _0x74A9, _0x795E = _0x86C8.method(_0x09FD)
if not _0x74A9 then return end
local _0x5FC4 = _0x09FD == _0x86C8.Menu and (_0x74A9 == _0xA080 or _0x74A9 == _0x86C8.Function)
if not _0x5FC4 and type(isexecutorclosure) =="function"and _0x09FD ~= _0x748C and _0x09FD ~= _0x1DCC.Menu then
local _0xF64E, _0x883A = pcall(isexecutorclosure, _0x74A9)
if _0xF64E and _0x883A then return end
end
if type(_0x86C8.member(_0x09FD,"openBackpack")) =="function"then _0xC51B = _0xC51B + 25 end
if type(_0x86C8.member(_0x09FD,"ui")) =="table"then _0xC51B = _0xC51B + 10 end
if _0x5FC4 and _0x86C8.World ~= _0x1DCC.World then
_0xC51B = _0xC51B - 30
elseif _0x5FC4 and (_0x86C8.Reads or 0) > 0 and os.clock() - (_0x86C8.LastRead or 0) < 2 then
_0xC51B = _0xC51B + 35
end
if _0xC51B > _0x7CF6 then
_0x0E6E, _0x8F5B, _0x0DDF, _0x122C, _0x7CF6 = _0x09FD, _0x74A9, _0x795E, _0x6159, _0xC51B
end
end
local _0xC779 = {}
for _0xF439, _0x7ADC in ipairs({ { _0x86C8.World == _0x1DCC.World and _0x1DCC.Input or false,"kontrol sebelumnya", 15 }, { _0x1DCC.Menu,"menu game", 65 },
{ _0x1DCC.StateOwner,"pemilik posisi", 60 }, { _0x1DCC.World,"world", 45 },
{ _0xB298 and _0x748C or false,"modul WorldMenu", 10 } }) do
if type(_0x7ADC[1]) =="table"then
_0x8285(_0x7ADC[1], _0x7ADC[2], _0x7ADC[3])
_0xC779[#_0xC779 + 1] = { _0x09FD = _0x7ADC[1], _0x6159 = _0x7ADC[2], _0xC51B = _0x7ADC[3], _0xCFC0 = 0 }
end
end
if type(getconnections) =="function"then
for _0xF439, _0x7ADC in ipairs({
{ _0xED14, {"RenderStepped","Heartbeat","PreRender","PreSimulation","Stepped"} },
{ _0xE3CF, {"InputBegan","InputEnded"} },
}) do
for _0xF439, _0xDF0A in ipairs(_0x7ADC[2]) do
local _0xE434 = _0x86C8.member(_0x7ADC[1], _0xDF0A)
if _0xE434 then
local _0xF64E, _0x024D = pcall(getconnections, _0xE434)
if _0xF64E and type(_0x024D) =="table"then
for _0xF439, connection in pairs(_0x024D) do
local _0x74A9 = _0x86C8.member(connection,"Function")
if type(_0x74A9) =="function"and #_0xC779 < 120 then
_0xC779[#_0xC779 + 1] = { _0x09FD = _0x74A9, _0x6159 ="callback ".. _0xDF0A, _0xC51B = 85, _0xCFC0 = 0 }
end
end
end
end
end
end
end
local _0xF17A, _0xC95D, _0x2799 = _0xC779, {}, 1
local function _0xD6E4(_0x09FD, _0x6159, _0xC51B, _0xCFC0)
if #_0xF17A >= 1200 or _0xC95D[_0x09FD] or (type(_0x09FD) ~="table"and type(_0x09FD) ~="function") then return end
if _0x09FD == _0x2582 or _0x09FD == _G or _0x09FD == _0x5D82 or _0x09FD == _0x6FB2 or _0x09FD == _0x86C8
or _0x09FD == _0x1DCC or _0x09FD == _0xD7DB or _0x09FD == _0x7528 then return end
_0xC95D[_0x09FD] = true
_0xF17A[#_0xF17A + 1] = { _0x09FD = _0x09FD, _0x6159 = _0x6159, _0xC51B = _0xC51B, _0xCFC0 = _0xCFC0 }
end
if type(getgc) =="function"then
local _0xF64E, _0xC245 = pcall(getgc, true)
if _0xF64E and type(_0xC245) =="table"then
local _0x66F3 = 0
for _0xF439, _0x09FD in pairs(_0xC245) do
if type(_0x09FD) =="table"then
_0x8285(_0x09FD,"getgc", _0x09FD == _0x748C and 10 or 50)
elseif type(_0x09FD) =="function"and type(_0x466E) =="function"then
local _0x77F9 = false
if type(isexecutorclosure) =="function"then
local _0x123C, _0xE2E6 = pcall(isexecutorclosure, _0x09FD)
_0x77F9 = _0x123C and _0xE2E6
end
if not _0x77F9 then
local _0xB5AC, _0x2795 = pcall(_0x466E, _0x09FD)
if _0xB5AC and type(_0x2795) =="table"then
for _0xF439, child in pairs(_0x2795) do
if type(child) =="table"then
_0x8285(child,"getgc.upvalue", 50)
if _0x86C8.method(child) or _0x86C8.member(child,"input")
or _0x86C8.member(child,"Input") or _0x86C8.member(child,"controls")
or _0x86C8.member(child,"Controller") then
_0xD6E4(child,"getgc.upvalue", 45, 0)
end
end
end
end
end
end
_0x66F3 = _0x66F3 + 1
if _0x66F3 % 300 == 0 then task.wait() end
end
end
end
while _0x2799 <= #_0xF17A do
local _0x7ADC = _0xF17A[_0x2799]
_0x2799 = _0x2799 + 1
local _0x09FD = _0x7ADC.value
if type(_0x09FD) =="table"then
_0x8285(_0x09FD, _0x7ADC.source, _0x7ADC.score)
if _0x7ADC.depth < 4 then
for _0xF439, _0x795E in ipairs({"input","Input","controls","Controls","keys","Keys","menu","Menu","controller","Controller","worldMenu","state","State"}) do
_0xD6E4(_0x86C8.member(_0x09FD, _0x795E), _0x7ADC.source ..".".. _0x795E, _0x7ADC.score, _0x7ADC.depth + 1)
end
local _0x66F3 = 0
for _0x795E, child in next, _0x09FD do
_0x66F3 = _0x66F3 + 1
if _0x66F3 > 40 then break end
if _0x795E ~="fg"and _0x795E ~="bg"and _0x795E ~="slots"and _0x795E ~="_G"and _0x795E ~="_ENV"then
_0xD6E4(child, _0x7ADC.source, _0x7ADC.score - 1, _0x7ADC.depth + 1)
end
end
local _0xF64E, _0x2FB9 = pcall(getmetatable, _0x09FD)
if _0xF64E and type(_0x2FB9) =="table"then _0xD6E4(rawget(_0x2FB9,"__index"), _0x7ADC.source, _0x7ADC.score - 5, _0x7ADC.depth + 1) end
end
elseif type(_0x09FD) =="function"and _0x7ADC.depth < 4 and type(_0x466E) =="function"then
local _0xC51B = _0x7ADC.score
if type(_0x29E5) =="function"then
local _0xF64E, _0x4A54 = pcall(_0x29E5, _0x09FD)
if _0xF64E and type(_0x4A54) =="table"then
local _0xA947 = 0
for _0xF439, constant in pairs(_0x4A54) do
if constant =="keyLeft"or constant =="keyRight"or constant =="keyJump"then _0xA947 = _0xA947 + 1 end
end
if _0xA947 >= 2 then _0xC51B = _0xC51B + 30 end
end
end
local _0xF64E, _0xC245 = pcall(_0x466E, _0x09FD)
if _0xF64E and type(_0xC245) =="table"then
for _0xF439, child in pairs(_0xC245) do _0xD6E4(child, _0x7ADC.source ..".upvalue", _0xC51B, _0x7ADC.depth + 1) end
end
end
if _0x2799 % 120 == 0 then task.wait() end
end
_0x86C8.ScanInfo ="objek ".. tostring(_0x2799 - 1) .." | skor ".. tostring(_0x7CF6)
return _0x0E6E, _0x8F5B, _0x0DDF, _0x122C
end
function _0x86C8.unbindMenu()
local _0x638E, _0x795E = _0x86C8.Menu, _0x86C8.Key
if _0x86C8.Hooked and _0x4CD3 then
local _0x67EC = false
if type(hookfunction) =="function"then _0x67EC = pcall(hookfunction, _0x86C8.Function, _0x4CD3) end
if not _0x67EC and type(restorefunction) =="function"then _0x67EC = pcall(restorefunction, _0x86C8.Function) end
if not _0x67EC then
_0x86C8.active, _0xFA1E.UpHeld, _0xFA1E.DownHeld = false, false, false
_0x86C8.Error ="Kontrol lama belum bisa dilepas; kontrol manual dipertahankan"return false
end
elseif _0x638E and _0x795E and rawget(_0x638E, _0x795E) == _0xA080 then
pcall(rawset, _0x638E, _0x795E, _0x86C8.OwnValue)
end
if _0x1DCC.Input == _0x638E then _0x1DCC.Input, _0x1DCC.InputSource = nil, nil end
_0x86C8.Menu, _0x86C8.Key, _0x86C8.Function, _0x86C8.Hooked = nil, nil, nil, nil
_0x86C8.OwnValue, _0x86C8.World, _0x86C8.Source, _0x86C8.Error, _0x4CD3 = nil, nil, nil, nil, nil
_0x86C8.Reads = 0
return true
end
function _0x86C8.bindMenu(quick)
local _0x638E, _0x74A9, _0x795E, _0x6159
if quick then
_0x638E, _0x6159 = _0x1DCC.Menu,"menu game"_0x74A9, _0x795E = _0x86C8.method(_0x638E)
if not _0x74A9 then
_0x638E, _0x6159 = _0xB298 and _0x748C or nil,"modul WorldMenu"_0x74A9, _0x795E = _0x86C8.method(_0x638E)
end
else
_0x638E, _0x74A9, _0x795E, _0x6159 = _0x86C8.findInput()
end
if _0x638E == _0x86C8.Menu and _0x638E and _0x795E == _0x86C8.Key
and (_0x74A9 == _0xA080 or (_0x86C8.Hooked and _0x74A9 == _0x86C8.Function)) then
_0x86C8.World = _0x1DCC.World
_0x1DCC.Input, _0x1DCC.InputSource = _0x638E, _0x86C8.Source
return true
end
if _0x86C8.unbindMenu() == false then return false end
if not _0x638E then
_0x86C8.Source, _0x86C8.Error = nil,"Pembaca tombol gerak belum ditemukan (".. tostring(_0x86C8.ScanInfo) ..")"return false
end
_0x4CD3 = _0x74A9
local _0x77F9 = rawget(_0x638E, _0x795E)
local _0xF64E = pcall(rawset, _0x638E, _0x795E, _0xA080)
if not _0xF64E or _0x86C8.member(_0x638E, _0x795E) ~= _0xA080 then
if type(hookfunction) =="function"then
local _0xDD68 = _0xA080
if type(newcclosure) =="function"then
local _0xEC31, _0xD9E1 = pcall(newcclosure, _0xA080)
if _0xEC31 and type(_0xD9E1) =="function"then _0xDD68 = _0xD9E1 end
end
local _0xAF70, _0x8D78 = pcall(hookfunction, _0x74A9, _0xDD68)
if _0xAF70 and type(_0x8D78) =="function"then
_0x4CD3, _0x86C8.Hooked = _0x8D78, true
else
_0x4CD3 = nil
end
else
_0x4CD3 = nil
end
if not _0x4CD3 then
_0x86C8.Error ="Kontrol ditemukan tetapi tidak bisa dipasang: ".. tostring(_0x6159) ..".".. _0x795E
return false
end
end
_0x86C8.Menu, _0x86C8.Key, _0x86C8.OwnValue = _0x638E, _0x795E, _0x77F9
_0x86C8.Function, _0x86C8.Source, _0x86C8.Error = _0x74A9, _0x6159 ..".".. _0x795E, nil
_0x86C8.World = _0x1DCC.World
_0x86C8.Reads = 0
_0x1DCC.Input, _0x1DCC.InputSource = _0x638E, _0x86C8.Source
return true
end
function _0x86C8.status()
return _0x86C8.Error or ((_0x86C8.Source or"belum terhubung") .." | bacaan ".. tostring(_0x86C8.Reads or 0))
end_0x7528.UnbindInput = _0x86C8.unbindMenu
_0x86C8.bindMenu(true)table.insert(_0x3886, _0xED14.Heartbeat:Connect(function()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or not _0xCA76() then return end
if _0xFA1E.Speed ~= 100 then _0x9F6E.speedScale = _0xFA1E.Speed / 100 end
if _0xFA1E.Ghost and _0x9F6E.ghost ~= true then _0x9F6E.ghost = true end
end))local _0xF604
local function _0xD552(ms)
task.wait(math.max(ms or 0, 10) / 1000)
return _0x5D82.Running and _0xCA76()
end
local function _0x7D77()
if _0x7528.DoorTravel and _0x7528.DoorTravel.Busy then return"Tunggu Teleport ID Door selesai dulu"end
local _0xFEF9 = _0x08CF() ~="Break saja"if not _0x1DCC.World then return"Data world belum ketemu. Tekan 'Hubungkan ke game'"end
if next(_0x906C()) == nil then return"Pilih tile dulu di Grid Tile"end
if not _0x22CB() then return"Kamu belum masuk world"end
if _0xFEF9 and not _0x7CED() then return"Pilih block dari inventori"end
return nil
endlocal function _0xA421()
local _0x9F6E = _0x1DCC.World
local _0x509A = _0x9F6E and rawget(_0x9F6E,"raymanOn")
if type(_0x509A) ~="function"then return false end
local _0xF64E, _0x4A01 = pcall(_0x509A)
return _0xF64E and _0x4A01 == true
endlocal _0xA3C2 = { { 1, 0 }, { -1, 0 }, { 0, 1 }, { 0, -1 }, { 1, 1 }, { 1, -1 }, { -1, 1 }, { -1, -1 } }
local function _0x6E03(_0x50CF, _0x789A, _0x2D30)
local _0xFB07 = {}
for _0xF439, _0xE034 in ipairs(_0x2D30) do _0xFB07[_0xE034.x ..",".. _0xE034.y] = _0xE034 end
local _0x0E6E, _0xBF45 = nil, nil
for _0xF439, _0x2DDF in ipairs(_0xA3C2) do
local _0x93E0 = {}
for _0x7180 = 1, 3 do
local _0xE034 = _0xFB07[(_0x50CF + _0x2DDF[1] * _0x7180) ..",".. (_0x789A + _0x2DDF[2] * _0x7180)]
if _0xE034 then _0x93E0[#_0x93E0 + 1] = _0xE034 end
end
if #_0x93E0 >= 2 and #_0x93E0 > (_0x0E6E and #_0x0E6E or 0) then _0x0E6E, _0xBF45 = _0x93E0, _0x2DDF end
end
return _0x0E6E, _0xBF45
endlocal function _0x1DD1(_0xEC2F)
local _0xF64E, _0x7827 = pcall(_0x1DCC.State)
if not _0xF64E or type(_0x7827) ~="table"or not _0x7827.x then return end
if _0x7025 and type(_0x5E7F) =="table"and _0x5E7F.act then
pcall(_0x5E7F.act.send, { _0x8B4B = 4, _0x5409 = _0x7827.x + _0xEC2F[1], _0x6665 = _0x7827.y - 0.475 + _0xEC2F[2] })
end
end
local function _0x286D(_0x5431)
local _0x5FEE, _0x4D0B = 0, {}
local _0x954B = _0x1DCC.World
local _0xE3B2, _0x08ED = _0x954B and rawget(_0x954B,"name"), _0x954B and _0x954B.fg
local _0x2F2E = false
local function _0x962E()
return _0x5D82.Running and _0xCA76() and _0x5D82.RunId == _0x5431 and _0x1DCC.World == _0x954B
and _0x954B.fg == _0x08ED and rawget(_0x954B,"name") == _0xE3B2 and not _0x5D82.DropPause
end
while _0x5D82.Running and _0xCA76() and _0x5D82.RunId == _0x5431 do
if _0x5D82.DropPause then _0x2F2E = true; task.wait(0.2); continue end
if _0x1DCC.World ~= _0x954B or not _0x954B or _0x954B.fg ~= _0x08ED or rawget(_0x954B,"name") ~= _0xE3B2 then
local _0x5E96 = _0x1DCC.World
if _0x2F2E and type(_0xE3B2) =="string"and _0xE3B2 ~=""and _0x5E96 and rawget(_0x5E96,"name") == _0xE3B2 then
_0x954B, _0x08ED, _0x4D0B = _0x5E96, _0x5E96.fg, {}
_0x2FB0.bindWorld()
else _0xF604("World berubah; mulai Auto Farm lagi di world tujuan"); return end
end
_0x2F2E = false
local _0xFEF9, _0x3252 = _0x08CF() ~="Break saja", _0x08CF() ~="Place saja"local _0x50CF, _0x789A = _0x22CB()
if not _0x50CF then _0xF604("Karakter tidak ditemukan (keluar world?)"); return end
local _0x8B34 = {}
for _0xF439, _0x756B in ipairs(_0xC17F()) do _0x8B34[#_0x8B34 + 1] = { _0x5409 = _0x50CF + _0x756B.dx, _0x6665 = _0x789A + _0x756B.dy } end
if _0x3252 then
local _0xEE48, _0x3B8B = _0x2FB0.prepareWork(_0x8B34, _0x50CF, _0x789A, _0x962E)
_0x5D82.WorkReason, _0x5D82.WaitingDrops = _0x3B8B, #_0xEE48 == 0
_0x8B34 = _0xEE48
if not _0x962E() then continue end
if #_0x8B34 == 0 then
_0x5D82.LastAction = _0x3B8B or"Menunggu tile bersih sebelum break"_0xBD39()
task.wait(0.25)
continue
end
else
_0x5D82.WorkReason, _0x5D82.WaitingDrops = nil, false
end
local _0xC220, _0x4920 = false, false
if _0xFEF9 then
for _0xF439, _0x615D in ipairs(_0x8B34) do
if not _0x962E() then break end
local _0x795E = _0x615D.x ..",".. _0x615D.y
if _0x4D0B[_0x795E] and (_0x3270("fg", _0x615D.x, _0x615D.y) ~= 0 or not _0x8CD6(_0x3270("bg", _0x615D.x, _0x615D.y))) then
_0x4D0B[_0x795E] = nil
endif not _0x4D0B[_0x795E] and (not _0x3252 or _0x2FB0.tileReady(_0x615D)) then
local _0x2DAE = _0xF90D(_0x615D.x, _0x615D.y)
if _0x2DAE =="habis"then _0x4920 = true; break end
if _0x2DAE =="place"then _0xC220 = true; if not _0xD552(_0x5D82.PlaceMs) then break end end
end
end
end
if _0x3252 and _0x962E() then
local _0x29CA, _0xF48F, _0x2D30 = math.clamp(math.floor(_0x5D82.MultiTarget or 1), 1, 5), 1, {}
while _0x962E() do
while #_0x2D30 < _0x29CA and _0xF48F <= #_0x8B34 do
local _0x615D = _0x8B34[_0xF48F]
_0xF48F = _0xF48F + 1
if _0x2FB0.tileReady(_0x615D) then _0x2D30[#_0x2D30 + 1] = { _0x5409 = _0x615D.x, _0x6665 = _0x615D.y, _0x66F3 = 0 } end
end
if #_0x2D30 == 0 then break end
local _0x3677, _0x5A9E
if _0x29CA > 1 and _0xA421() then _0x3677, _0x5A9E = _0x6E03(_0x50CF, _0x789A, _0x2D30) end
if not _0x5A9E then _0x3677 = { _0x2D30[1] } end
local _0x56E9 = true
for _0xF439, _0xE034 in ipairs(_0x3677) do if not _0x2FB0.tileReady(_0xE034) then _0x56E9 = false; _0xE034.done = true end end
if not _0x56E9 then _0x5A9E = nil end
local _0x1981, _0x568F, _0x32A3 = os.clock(), false, false
if _0x5A9E then _0x1DD1(_0x5A9E) end
for _0x7180, _0xE034 in ipairs(_0x3677) do
if not _0x962E() then break end
if _0x7180 > 1 then task.wait(0.05) end
local _0x505C, _0x0197 = _0x2FB0.tileReady(_0xE034)
if not _0x505C then
_0xE034.done = true
_0x5D82.WorkReason, _0x5D82.LastAction = _0x2FB0.blockReason(_0x0197), _0x2FB0.blockReason(_0x0197)
else
local _0x2DAE, _0x3330 = _0xE0BA(_0xE034.x, _0xE034.y, nil, true, 0.18)
if _0x3330 =="native-missing"then _0xF604("Fungsi pukul game terputus; tekan Hubungkan ke game"); return end
if _0x2DAE then _0xE034.n = _0xE034.n + 1; _0x568F, _0xC220 = true, true end
if _0x2DAE =="broke"then
_0x32A3, _0xE034.done = true, truelocal _0x795E = _0xE034.x ..",".. _0xE034.y
_0x4D0B[_0x795E] = _0x5D82.BreakBackground and _0x3270("fg", _0xE034.x, _0xE034.y) == 0
and _0x8CD6(_0x3270("bg", _0xE034.x, _0xE034.y)) or nil
elseif _0x2DAE == nil or _0xE034.n > 80 then _0xE034.done = true end
end
_0xE034.used = true
end
local _0x13BE = {}
for _0xF439, _0xE034 in ipairs(_0x2D30) do if not _0xE034.done and not _0xE034.used then _0x13BE[#_0x13BE + 1] = _0xE034 end end
for _0xF439, _0xE034 in ipairs(_0x3677) do
_0xE034.used = nil
if not _0xE034.done then _0x13BE[#_0x13BE + 1] = _0xE034 end
end
_0x2D30 = _0x13BE
if _0x568F then
local _0x2FE7 = ((_0x5D82.Override and _0x5D82.Override.breakMs) or _0x5D82.BreakMs) / 1000
if _0x5A9E then _0x2FE7 = math.max(_0x2FE7, 0.35) end
local _0x75B3 = _0x2FE7 - (os.clock() - _0x1981)
if _0x75B3 > 0.005 then task.wait(_0x75B3) end
end
if _0x32A3 and _0x5D82.AfterBreakMs > 0 then task.wait(_0x5D82.AfterBreakMs / 1000) end
end
end
if not _0x5D82.Running or not _0xCA76() then break end
if _0x5D82.DropPause then continue end
if not _0xC220 then
local _0x1C89 = _0x7CED()
if _0x4920 or (_0xFEF9 and _0x1C89 and _0xC90B(_0x1C89) <= 0) then
_0xF604("Block ".. _0x949D(_0x1C89) .." di inventori habis"); return
end
if not _0xD552((_0x5D82.Override and _0x5D82.Override.breakMs) or _0x5D82.BreakMs) then break end
end
_0x5D82.Cycles = _0x5D82.Cycles + 1
if os.clock() - _0x5FEE > 1 then _0x5FEE = os.clock(); _0xBD39() end
end
_0xBD39()
end
local function _0xAE6C()
if _0x5D82.Override then return endif _0x6FB2.FarmToggle then pcall(function() _0x6FB2.FarmToggle:Set(_0x5D82.Running) end) end
if _0x6FB2.GridStart and _0x6FB2.GridMode =="farm"then
_0x6FB2.GridStart.Text = _0x5D82.Running and"STOP"or"START"_0x6FB2.GridStart.BackgroundColor3 = _0x5D82.Running and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(46, 160, 90)
end
end
_0xF604 = function(_0x3B8B)
_0x5D82.Running = false
_0xAE6C()
if _0x3B8B and not _0x5D82.Quiet then
_0x8021("Auto Farm berhenti", _0x3B8B, 4)
_0x2479.send("stop","Auto Farm berhenti: ".. _0x3B8B)
end
_0xBD39()
endlocal _0xD467, _0x34F2
local function _0x9F71()
if _0x5D82.Running then return end
local _0x8599 = _0x7D77()
if _0x8599 then
_0xF604(_0x8599)
return
end
if _0xD808.Running and _0xD808.stop then _0xD808.stop("Dihentikan karena Auto Farm dimulai") end
if _0xECF0.Running and _0xECF0.stop then _0xECF0.stop("Dihentikan karena Auto Farm dimulai") end
if _0x3F90.Running and _0x3F90.stop then _0x3F90.stop("Dihentikan karena Auto Farm dimulai") end
if _0xD222.Running and _0xD467 then _0xD467("Dihentikan karena Auto Farm dimulai") end
if _0x9715.Running and _0x34F2 then _0x34F2("Dihentikan karena Auto Farm dimulai") end
table.clear(_0x895A)
table.clear(_0x0508)
_0x5D82.DropPause, _0x5D82.WaitingDrops, _0x5D82.WorkReason = false, false, nil
_0x5D82.DropError, _0x5D82.DropOffUntil = nil, 0
_0x5D82.Running = true
_0x5D82.RunId = (_0x5D82.RunId or 0) + 1
_0xAE6C()
_0xBD39()
task.spawn(_0x286D, _0x5D82.RunId)
endlocal _0x927E = {}
do (function()local _0x4748, _0xFE2A = math.floor, math.abs
local _0x38E9 = { Placed = 0 }local _0x43C8 = {}local _0x9F72, _0x4D85 = {}, {}
local _0xBA5B = {}local _0x9929 = nillocal function _0x8C3E()
return (_0xD222.Running or _0x9715.Running or _0xD808.Roaming or _0xECF0.Running or _0x3F90.Running or _0x38E9.Homing
or _0x5F2F.Running or _0x38E9.WorkCollect) and _0xCA76()
end
local function _0x7C5D(_0xF5A6)
if _0xD222.Running then
_0xD222.Status = _0xF5A6
elseif _0x9715.Running then
_0x9715.Status = _0xF5A6
elseif _0xD808.Roaming then
_0xD808.Status = _0xF5A6
elseif _0x3F90.Running then
_0x3F90.Status = _0xF5A6
elseif _0xECF0.Running then
_0xECF0.Status = _0xF5A6
elseif _0x5F2F.Running then
_0x5F2F.Status = _0xF5A6
end
end
local function _0xED30(tbl, _0xB9E8, _0x804A)
tbl[_0xB9E8] = os.clock() + (_0x804A or 30)
end
local function _0x7188(tbl, _0xB9E8, _0x4DD4)
local _0x615D = tbl[_0xB9E8]
if not _0x615D then return false end
if (_0x4DD4 or os.clock()) >= _0x615D then
tbl[_0xB9E8] = nil
return false
end
return true
end
local function _0xEA50(tbl)
local _0x66F3, _0x4DD4 = 0, os.clock()
for _0xF439, _0x615D in pairs(tbl) do
if _0x615D > _0x4DD4 then _0x66F3 += 1 end
end
return _0x66F3
end
local function _0x1B1C(_0xDF0A, def)
local _0x509A = _0x1DCC.Hud and _0x1DCC.Hud[_0xDF0A]
if type(_0x509A) =="function"then
local _0xF64E, _0x2DAE = pcall(_0x509A)
if _0xF64E and type(_0x2DAE) =="number"and _0x2DAE > 0 then return _0x2DAE end
end
return def
end
local function _0xF04B() return _0x1B1C("punchRange", 2.5) end
local function _0xA3B7() return _0x1B1C("buildRange", 2.5) end
local function _0x4C2C()
if not _0x1DCC.State then return nil end
local _0xF64E, _0x7827 = pcall(_0x1DCC.State)
if _0xF64E and type(_0x7827) =="table"and type(_0x7827.x) =="number"and type(_0x7827.y) =="number"and _0x7827.active ~= false then
return _0x7827
end
return nil
end
local function _0xD509(_0x5409, _0x6665)
local _0x9F6E = _0x1DCC.World
local _0x05DF = _0x9F6E and _0x9F6E.fg[_0x6665]
return (_0x05DF and _0x05DF[_0x5409]) or 0
end
local function _0x4601(_0x5409, _0x6665)
local _0x2010 = _0xD509(_0x5409, _0x6665)
if _0x2010 ~= 0 then return _0xD7DB[_0x2010] end
return nil
endlocal function _0x03ED(_0x5409, _0x6665)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return true end
if _0x5409 < 0 or _0x5409 >= _0x9F6E.w or _0x6665 >= _0x9F6E.h then return true end
if _0x6665 < 0 then return false end
local _0x91CB = _0x4601(_0x5409, _0x6665)
if not _0x91CB then return false end
if _0x91CB.combiner then
local _0xF64E, _0x1927 = pcall(_0x9F6E.combinerShut, _0x5409, _0x6665)
return (not _0xF64E) or (_0x1927 and true or false)
end
if _0x91CB.vip thenlocal _0xF64E, _0x24E9 = pcall(_0x9F6E.vipMay, _0x5409, _0x6665)
return not (_0xF64E and _0x24E9)
end
if _0x91CB.entrance then
local _0x91E5 = _0x9F6E.switches and _0x9F6E.switches[_0x6665 * _0x9F6E.w + _0x5409]
if _0x91CB.gate then
return not (_0x91E5 and _0x91E5.off == true)
end
if _0x91E5 and _0x91E5.public then return false end
local _0xF64E, _0x24E9 = pcall(function() return _0x9F6E.areas.mayBuild(_0x9F6E.lock, _0x5409, _0x6665) end)
return not (_0xF64E and _0x24E9)
end
return _0x91CB.solid and true or false
endlocal function _0x52E5(_0x5409, _0x6665)
local _0x91CB = _0x4601(_0x5409, _0x6665)
return _0x91CB ~= nil and (_0x91CB.deadly or _0x91CB.hurts or _0x91CB.laser) and true or false
end
local function _0xABCE(_0x5409, _0x6665)
local _0x91CB = _0x4601(_0x5409, _0x6665)
return _0x91CB ~= nil and _0x91CB.platform and true or false
end
local function _0x99A4(_0x5409, _0x6665)
return not _0x03ED(_0x5409, _0x6665) and not _0x52E5(_0x5409, _0x6665)
endlocal function _0xBE6D(_0x5409, _0x6665)
return not _0x52E5(_0x5409, _0x6665 + 1) and (_0x03ED(_0x5409, _0x6665 + 1) or _0xABCE(_0x5409, _0x6665 + 1))
endfunction _0x38E9.los(_0xC43D, _0x2351, _0x574E, _0x6912)
if _0x6912 - _0x2351 >= 2 then
for _0x6665 = _0x2351 + 1, _0x6912 - 1 do
if _0x03ED(_0x574E, _0x6665) then return false end
end
elseif _0x2351 - _0x6912 >= 2 then
for _0x6665 = _0x6912 + 1, _0x2351 - 1 do
if _0x03ED(_0x574E, _0x6665) then return false end
end
end
return true
endlocal function _0xF81F(_0x7827, _0x574E, _0x6912, _0xDD5D)
return _0xFE2A(_0x574E + 0.5 - _0x7827.x) <= _0xDD5D and _0xFE2A(_0x6912 + 0.5 - (_0x7827.y - 0.475)) <= _0xDD5D
endlocal function _0xFA64(_0x5409, _0x6665, nativeOnly)
if nativeOnly then return type(_0x1DCC.Punch) =="function"end
local _0x9F6E = _0x1DCC.World
local _0xF64E, _0xD6CD = pcall(function()
if _0x9F6E.areas and type(_0x9F6E.areas.mayBuild) =="function"and not _0x9F6E.areas.mayBuild(_0x9F6E.lock, _0x5409, _0x6665) then
return false
end
if type(_0x9F6E.builderOk) =="function"and not _0x9F6E.builderOk(_0x5409, _0x6665, false) then
return false
end
return true
end)
return (not _0xF64E) or _0xD6CD
endlocal function _0x3AE9()
local _0x2010, _0x8CC4
if _0xD222.Running then
_0x2010, _0x8CC4 = _0xD222.ScaffoldId, _0xD222.UseBlock
elseif _0x9715.Running then
_0x2010, _0x8CC4 = _0x9715.ScaffoldId, _0x9715.UseBlock
endif _0x8CC4 and _0x2010 and _0xC90B(_0x2010) > 0 then return _0x2010 end
return nil
endlocal function _0xB36B(_0x5409, _0x6665)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or _0x5409 < 0 or _0x6665 < 0 or _0x5409 >= _0x9F6E.w or _0x6665 >= _0x9F6E.h then return false end
if _0xD509(_0x5409, _0x6665) ~= 0 then return false end
local _0xF64E, _0xD6CD = pcall(function()
if _0x9F6E.areas and type(_0x9F6E.areas.canEdit) =="function"and not _0x9F6E.areas.canEdit(_0x5409, _0x6665) then return false end
if type(_0x9F6E.builderOk) =="function"and not _0x9F6E.builderOk(_0x5409, _0x6665, true) then return false end
return true
end)
return (not _0xF64E) or _0xD6CD
end
local function _0xC1E7(_0x5409, _0x6665)
local _0x2010 = _0x3AE9()
if not _0x2010 or not _0xB36B(_0x5409, _0x6665) then return false end
local _0x7827 = _0x4C2C()
if not _0x7827 or not _0xF81F(_0x7827, _0x5409, _0x6665, _0xA3B7() - 0.05) then return false end
_0xBF1A("fg", _0x5409, _0x6665, _0x2010)if _0x1DCC.Inv then pcall(function() _0x1DCC.Inv:remove(_0x2010, 1) end) end
_0x38E9.Placed += 1
return true
end
local function _0x1E37()return _0xD222.Broken + _0x9715.Harvested + _0x9715.Planted + _0x38E9.Placed + _0xD808.Planted
+ _0xECF0.Harvested + _0xECF0.Planted + _0x3F90.Placed + _0x3F90.Harvested + _0x3F90.Planted + _0x3F90.Dug
+ _0x5D82.Placed + _0x5D82.Broken
end
local function _0x6B94(_0x7827)
local _0x2351 = _0x4748(_0x7827.y - 0.475)
local _0xC43D = _0x4748(_0x7827.x)
if _0xBE6D(_0xC43D, _0x2351) then return _0xC43D, _0x2351 end
local _0xE034, _0x783C = _0x4748(_0x7827.x - 0.3), _0x4748(_0x7827.x + 0.3 - 0.0001)
for _0xF439, _0x5B56 in ipairs({ _0xE034, _0x783C }) do
if _0x5B56 ~= _0xC43D and _0xBE6D(_0x5B56, _0x2351) then return _0x5B56, _0x2351 end
end
return _0xC43D, _0x2351
endlocal function _0x5CEC(_0xD58D, _0x4012, _0x66F3, _0x509A, _0x7180)
_0x66F3 += 1
local _0xC0A8 = _0x66F3
while _0xC0A8 > 1 do
local _0xBFDC = _0xC0A8 // 2
if _0xD58D[_0xBFDC] <= _0x509A then break end
_0xD58D[_0xC0A8], _0x4012[_0xC0A8] = _0xD58D[_0xBFDC], _0x4012[_0xBFDC]
_0xC0A8 = _0xBFDC
end
_0xD58D[_0xC0A8], _0x4012[_0xC0A8] = _0x509A, _0x7180
return _0x66F3
end
local function _0x7655(_0xD58D, _0x4012, _0x66F3)
local _0x5AB5 = _0x4012[1]
local _0xD35C, _0x5B39 = _0xD58D[_0x66F3], _0x4012[_0x66F3]
_0xD58D[_0x66F3], _0x4012[_0x66F3] = nil, nil
_0x66F3 -= 1
if _0x66F3 > 0 then
local _0xC0A8 = 1
while true do
local _0x5B56 = _0xC0A8 * 2
if _0x5B56 > _0x66F3 then break end
if _0x5B56 < _0x66F3 and _0xD58D[_0x5B56 + 1] < _0xD58D[_0x5B56] then _0x5B56 += 1 end
if _0xD35C <= _0xD58D[_0x5B56] then break end
_0xD58D[_0xC0A8], _0x4012[_0xC0A8] = _0xD58D[_0x5B56], _0x4012[_0x5B56]
_0xC0A8 = _0x5B56
end
_0xD58D[_0xC0A8], _0x4012[_0xC0A8] = _0xD35C, _0x5B39
end
return _0x5AB5, _0x66F3
endlocal _0x85C4 = 8000
local _0x2B42 = 2
local function _0x7DC4(_0xDD5D)
return _0x4748(_0xDD5D), math.ceil(-_0xDD5D + 0.025), _0x4748(_0xDD5D + 0.025)
end
local function _0x251E(_0x6D99, _0x79D3, _0x1636, gx, _0x2209, _0xDD5D, _0x4BC0)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return nil, false, {} end
local _0xAEA8, _0x9EEB = _0x9F6E.w, _0x9F6E.h
local _0xCCA0 = _0xAEA8 * _0x9EEB
local _0x6C16, _0x8CE5, _0xF148 = _0x7DC4(_0xDD5D)
local _0x037B, _0x71B2, _0xFFCC = {}, {}, {}
local function _0xC670(_0x5409, _0x6665)
if _0x5409 < 0 or _0x5409 >= _0xAEA8 or _0x6665 >= _0x9EEB then return false end
if _0x6665 < 0 then return true end
local _0x7180 = _0x6665 * _0xAEA8 + _0x5409
local _0x97A1 = _0x037B[_0x7180]
if _0x97A1 == nil then
_0x97A1 = _0x99A4(_0x5409, _0x6665)
_0x037B[_0x7180] = _0x97A1
end
return _0x97A1
end
local function _0x573F(_0x5409, _0x6665)
if _0x5409 < 0 or _0x5409 >= _0xAEA8 or _0x6665 < 0 or _0x6665 >= _0x9EEB then return false end
local _0x7180 = _0x6665 * _0xAEA8 + _0x5409
local _0x97A1 = _0x71B2[_0x7180]
if _0x97A1 == nil then
_0x97A1 = _0xBE6D(_0x5409, _0x6665)
_0x71B2[_0x7180] = _0x97A1
end
return _0x97A1
end
local function _0x1C28(_0x5409, _0x6665)
if not _0x4BC0 or _0x5409 < 0 or _0x5409 >= _0xAEA8 or _0x6665 < 0 or _0x6665 >= _0x9EEB then return false end
local _0x7180 = _0x6665 * _0xAEA8 + _0x5409
local _0x97A1 = _0xFFCC[_0x7180]
if _0x97A1 == nil then
_0x97A1 = _0xB36B(_0x5409, _0x6665)
_0xFFCC[_0x7180] = _0x97A1
end
return _0x97A1
end
local function _0x887D(_0x5409, _0x6665)
local _0x935C = _0xFE2A(gx - _0x5409) - _0xDD5D
local _0x319C = _0x2209 - _0x6665
local _0x15BA = _0xFE2A(_0x319C) - _0xDD5D
local _0xE57B = (_0x319C < 0) and 1.5 or 0.5
return (_0x935C > 0 and _0x935C or 0) + _0xE57B * (_0x15BA > 0 and _0x15BA or 0)
end
local function _0xA895(_0xC43D, _0x2351)if _0x1636.maxY and _0x2351 > _0x1636.maxY then return false end
for _0x6912 = _0x2351 + _0x8CE5, _0x2351 + _0xF148 do
if _0x6912 >= 0 and _0x6912 < _0x9EEB then
local _0xF2D3 = _0x6912 * _0xAEA8
for _0x574E = _0xC43D - _0x6C16, _0xC43D + _0x6C16 doif _0x574E >= 0 and _0x574E < _0xAEA8 and _0x1636[_0xF2D3 + _0x574E] and not (_0x574E == _0xC43D and _0x6912 == _0x2351 + 1)
and not (_0x1636.noSelf and _0x574E == _0xC43D and _0x6912 == _0x2351)
and not (_0x1636.los and _0x6912 - _0x2351 >= 2 and not _0xC670(_0x574E, _0x2351 + 1))
and not (_0x1636.los and _0x2351 - _0x6912 >= 2 and not _0xC670(_0x574E, _0x2351 - 1)) then
return true
end
end
end
end
return false
end
local _0x806D, _0x2354, _0x97E3, _0x81EB, _0xA606 = {}, {}, {}, {}, {}
local _0x66F3 = 0
local function _0x548B(_0x5409, _0x6665, _0x8B4B, cost, build)
_0x66F3 += 1
_0x806D[_0x66F3], _0x2354[_0x66F3], _0x97E3[_0x66F3], _0x81EB[_0x66F3], _0xA606[_0x66F3] = _0x5409, _0x6665, _0x8B4B, cost, build
end
local function _0xD85B(_0x5409, _0x6665)
_0x66F3 = 0
for _0x7827 = -1, 1, 2 do
local _0xB7D7 = _0x5409 + _0x7827
if _0xC670(_0xB7D7, _0x6665) then
if _0x573F(_0xB7D7, _0x6665) then
_0x548B(_0xB7D7, _0x6665,"walk", 1, false)
else
if _0x1C28(_0xB7D7, _0x6665 + 1) then
_0x548B(_0xB7D7, _0x6665,"walk", 1 + _0x2B42, true)
endlocal _0x8A2C = _0x6665 + 1
while _0x8A2C < _0x9EEB and _0x8A2C - _0x6665 <= 40 and _0xC670(_0xB7D7, _0x8A2C) and not _0x573F(_0xB7D7, _0x8A2C) do
_0x8A2C += 1
end
if _0x8A2C < _0x9EEB and _0xC670(_0xB7D7, _0x8A2C) and _0x573F(_0xB7D7, _0x8A2C) then
_0x548B(_0xB7D7, _0x8A2C,"fall", 1 + 0.5 * (_0x8A2C - _0x6665), false)
endif _0xC670(_0x5409, _0x6665 - 1) and _0xC670(_0x5409, _0x6665 - 2) then
for dist = 2, 3 do
local _0xA68C = _0x5409 + (dist - 1) * _0x7827
if not (_0xC670(_0xA68C, _0x6665) and _0xC670(_0xA68C, _0x6665 - 1) and _0xC670(_0xA68C, _0x6665 - 2)) then break end
if dist == 3 and _0x573F(_0xA68C, _0x6665) then break end
local _0x7799 = _0x5409 + dist * _0x7827
if _0xC670(_0x7799, _0x6665 - 1) and _0xC670(_0x7799, _0x6665 - 2) then
for _0xC0A8 = 0, 2 do
if not _0xC670(_0x7799, _0x6665 + _0xC0A8) then break end
if _0x573F(_0x7799, _0x6665 + _0xC0A8) then
_0x548B(_0x7799, _0x6665 + _0xC0A8,"gap", dist + 0.5 + 0.5 * _0xC0A8, false)
break
end
end
end
end
end
end
endfor _0x15BA = 1, 3 do
if not _0xC670(_0x5409, _0x6665 - _0x15BA) then break end
if _0xC670(_0x5409, _0x6665 - _0x15BA - 1) and _0xC670(_0xB7D7, _0x6665 - _0x15BA) and _0x573F(_0xB7D7, _0x6665 - _0x15BA) and _0xC670(_0xB7D7, _0x6665 - _0x15BA - 1) then
_0x548B(_0xB7D7, _0x6665 - _0x15BA,"jump", 1 + 1.5 * _0x15BA, false)
end
endfor _0x15BA = 1, 2 do
if _0xC670(_0x5409, _0x6665 - 1) and (_0x15BA == 1 or _0xC670(_0x5409, _0x6665 - 2)) and _0xC670(_0xB7D7, _0x6665 - _0x15BA) and _0x573F(_0xB7D7, _0x6665 - _0x15BA)
and not (_0xC670(_0x5409, _0x6665 - _0x15BA - 1) and _0xC670(_0xB7D7, _0x6665 - _0x15BA - 1)) then
_0x548B(_0xB7D7, _0x6665 - _0x15BA,"stair", 3 + 1.5 * _0x15BA, false)
end
end
endif _0x4BC0 and _0xC670(_0x5409, _0x6665 - 1) and _0xC670(_0x5409, _0x6665 - 2) and _0xC670(_0x5409, _0x6665 - 3) and _0x1C28(_0x5409, _0x6665) then
_0x548B(_0x5409, _0x6665 - 1,"pillar", 2 + _0x2B42, true)
end
return _0x66F3
end
local _0x1DDC = _0x79D3 * _0xAEA8 + _0x6D99
local _0x7F8F, _0xE20B, _0x8B4B, _0x277D, _0x991A = { [_0x1DDC] = 0 }, {}, {}, {}, {}
local _0xD58D, _0x4012, _0x9F57 = {}, {}, 0
_0x9F57 = _0x5CEC(_0xD58D, _0x4012, _0x9F57, _0x887D(_0x6D99, _0x79D3), _0x1DDC)
local _0x4EF1 = 0
local _0x4DD4 = os.clock()
while _0x9F57 > 0 do
local _0x5A8C
_0x5A8C, _0x9F57 = _0x7655(_0xD58D, _0x4012, _0x9F57)
if not _0x991A[_0x5A8C] then
_0x991A[_0x5A8C] = true
local _0x1700, _0x212D = _0x5A8C % _0xAEA8, _0x5A8C // _0xAEA8
if _0xA895(_0x1700, _0x212D) then
local _0x715C = {}
local _0x7180 = _0x5A8C
while _0x7180 ~= _0x1DDC do
local _0xBFDC = _0xE20B[_0x7180]
table.insert(_0x715C, 1, {
fx = _0xBFDC % _0xAEA8, _0x8A2C = _0xBFDC // _0xAEA8, _0x5409 = _0x7180 % _0xAEA8, _0x6665 = _0x7180 // _0xAEA8,
_0x8B4B = _0x8B4B[_0x7180], build = _0x277D[_0x7180], _0x795E = _0xBFDC * _0xCCA0 + _0x7180,
})
_0x7180 = _0xBFDC
end
return _0x715C, false, _0x991A
end
_0x4EF1 += 1
if _0x4EF1 > (_0x1636.maxExpand or _0x85C4) then return nil, false, _0x991A end
if _0x4EF1 % 400 == 0 then
task.wait()
if not _0x8C3E() then return nil, false, _0x991A end
end
local _0xEAC7 = _0x7F8F[_0x5A8C]
local _0x5F17 = _0xD85B(_0x1700, _0x212D)
for _0xC0A8 = 1, _0x5F17 do
local _0x6079 = _0x2354[_0xC0A8] * _0xAEA8 + _0x806D[_0xC0A8]
if not _0x991A[_0x6079] then
local _0x82BA = _0x43C8[_0x5A8C * _0xCCA0 + _0x6079]
if not (_0x82BA and _0x82BA > _0x4DD4) then
local _0x2979 = _0xEAC7 + _0x81EB[_0xC0A8]
local _0xFDF4 = _0x7F8F[_0x6079]
if _0xFDF4 == nil or _0x2979 < _0xFDF4 then
_0x7F8F[_0x6079], _0xE20B[_0x6079], _0x8B4B[_0x6079], _0x277D[_0x6079] = _0x2979, _0x5A8C, _0x97E3[_0xC0A8], _0xA606[_0xC0A8]
_0x9F57 = _0x5CEC(_0xD58D, _0x4012, _0x9F57, _0x2979 + _0x887D(_0x806D[_0xC0A8], _0x2354[_0xC0A8]), _0x6079)
end
end
end
end
end
end
return nil, true, _0x991Aendlocal function _0x50B8(_0x991A, _0xAEA8, _0xDD5D)
local _0x365A = {}
local _0x6C16, _0x8CE5, _0xF148 = _0x7DC4(_0xDD5D)
local _0x66F3 = 0
for _0x7180 in pairs(_0x991A) do
local _0x5409, _0x6665 = _0x7180 % _0xAEA8, _0x7180 // _0xAEA8
for _0x15BA = _0x8CE5, _0xF148 do
local _0x6912 = _0x6665 + _0x15BA
if _0x6912 >= 0 then
local _0xF2D3 = _0x6912 * _0xAEA8
for _0x935C = -_0x6C16, _0x6C16 do
local _0x574E = _0x5409 + _0x935C
if _0x574E >= 0 and _0x574E < _0xAEA8 then _0x365A[_0xF2D3 + _0x574E] = true end
end
end
end
_0x66F3 += 1
if _0x66F3 % 500 == 0 then task.wait() end
end
return _0x365A
endlocal function _0x8DF8(_0x1DDC, _0xDD5D, _0x4BC0)
local _0x5B56 = _0x9929
if _0x5B56 and _0x5B56.world == _0x1DCC.World and _0x5B56.start == _0x1DDC and _0x5B56.R == _0xDD5D and _0x5B56.block == _0x4BC0
and _0x5B56.ver == _0x1E37() and os.clock() - _0x5B56.at < 30 then
return _0x5B56.set
end
return nil
end
local function _0x1E97(_0x1DDC, _0xDD5D, _0x4BC0, _0x991A)
_0x9929 = {
_0x954B = _0x1DCC.World, _0x57E7 = _0x1DDC, _0xDD5D = _0xDD5D, _0x9D38 = _0x4BC0, ver = _0x1E37(), _0xC4F6 = os.clock(),
_0x365A = _0x50B8(_0x991A, _0x1DCC.World.w, _0xDD5D),
}
endlocal function _0x0D00()
_0x86C8.left, _0x86C8.right, _0x86C8.jump, _0x86C8.down = false, false, false, false
end
local function _0x35B0()
task.wait()
return _0x8C3E()
end
local function _0x3422(ms)
task.wait(math.max(ms or 0, 30) / 1000)
return _0x8C3E()
endfunction _0x7FB6.swing(_0x5409, _0x6665, _0x8B4B)
if not (_0x7FB6.fn and _0x7FB6.idx and _0x7FB6.set) then return end
local _0x7827 = _0x4C2C()
local _0xD855 = (_0x7827 and _0x5409 + 0.5 < _0x7827.x) and -1 or 1
pcall(_0x7FB6.set, _0x7FB6.fn, _0x7FB6.idx, { _0x615D = os.clock(), _0x5409 = _0x5409 + 0.5, _0x6665 = _0x6665 + 0.5, _0xD855 = _0xD855, _0x8B4B = _0x8B4B })
endfunction _0x7FB6.puff(_0x5409, _0x6665)
local _0x026D = _0x1DCC.Particles
if not _0x026D or #_0x026D == 0 then return end
local _0xA6BA = _0x7FB6.Particles
if not _0xA6BA then
local _0x6D5D = _0xE807:FindFirstChild("GameGui")
_0x6D5D = _0x6D5D and _0x6D5D:FindFirstChild("World")
for _0xF439, _0xBFDC in ipairs(_0x026D) do
local _0xF64E, _0x13A7 = pcall(function()
return _0x6D5D ~= nil and typeof(_0xBFDC.parent) =="Instance"and _0xBFDC.parent:IsDescendantOf(_0x6D5D)
end)
if _0xF64E and _0x13A7 then
_0xA6BA = _0xBFDC
break
end
end
_0xA6BA = _0xA6BA or _0x026D[1]
_0x7FB6.Particles = _0xA6BA
end
pcall(function() _0xA6BA:place(_0x5409 + 0.5, _0x6665 + 0.5) end)
end
function _0x7FB6.place(_0x5409, _0x6665, _0x2010)
local _0x91CB = _0xD7DB[_0x2010]
local _0xE60E = _0x91CB and _0x91CB.kind =="seed"_0x7FB6.swing(_0x5409, _0x6665,"build")
if not _0xE60E then _0x7FB6.puff(_0x5409, _0x6665) end
endlocal function _0x2DCC(_0x7827, targetX, tol)
local _0x935C = targetX - _0x7827.x
local _0xCE67 = _0x7827.vx or 0
local _0x985D = _0x7827.grounded and 48 or 17
local _0xEC2F = 0
if _0xFE2A(_0x935C) > tol then
_0xEC2F = _0x935C > 0 and 1 or -1
if _0xCE67 * _0xEC2F > 0 and (_0xCE67 * _0xCE67) / (2 * _0x985D) >= _0xFE2A(_0x935C) - tol * 0.5 then
_0xEC2F = 0
end
end
_0x86C8.left = _0xEC2F < 0
_0x86C8.right = _0xEC2F > 0
endlocal function _0xB4B6(_0x574E, _0x6912)
local _0x1700 = _0x574E + 0.5
local _0x4382 = _0x4C2C()
if not _0x4382 then return false end
local _0xF661 = 1.5 + _0xFE2A(_0x1700 - _0x4382.x) * 0.35
local _0x1981 = os.clock()
while _0x35B0() do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
local _0xC43D, _0x2351 = _0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475)
if _0x7827.grounded and _0x2351 ~= _0x6912 then return false end
_0x2DCC(_0x7827, _0x1700, 0.1)
if _0xC43D == _0x574E and _0xFE2A(_0x7827.x - _0x1700) <= 0.2 and _0x7827.grounded and _0xFE2A(_0x7827.vx or 0) < 2 then
_0x86C8.left, _0x86C8.right = false, false
return true
end
if os.clock() - _0x1981 > _0xF661 then return false end
end
return false
endlocal function _0x938A(_0x7BA0)
local _0x1700 = _0x7BA0.x + 0.5
local _0xF661 = 1.5 + 0.3 * (_0x7BA0.y - _0x7BA0.fy)
local _0x1981 = os.clock()
while _0x35B0() do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
_0x2DCC(_0x7827, _0x1700, 0.1)
if _0x7827.grounded then
local _0xC43D, _0x2351 = _0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475)
if _0x2351 == _0x7BA0.y then
if _0xC43D == _0x7BA0.x and _0xFE2A(_0x7827.x - _0x1700) <= 0.25 then return true end
elseif _0x2351 ~= _0x7BA0.fy then
return false
end
end
if os.clock() - _0x1981 > _0xF661 then return false end
end
return false
endlocal function _0x11F2(_0x7BA0)
if not _0xB4B6(_0x7BA0.fx, _0x7BA0.fy) then return false end
local _0x15BA = _0x7BA0.fy - _0x7BA0.y
local _0x5AB5 = _0x7BA0.y + 1local _0xB08E = _0x5AB5 - ((_0x15BA == 1) and 0 or 0.4)local _0x1700 = _0x7BA0.x + 0.5
_0x0D00()
if not _0x35B0() then return false end_0x86C8.jump = true
local _0x1981 = os.clock()
local _0x3271 = false
while _0x35B0() do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
if not _0x7827.grounded then _0x3271 = true end
if _0x86C8.jump and (_0x7827.y <= _0xB08E or (_0x3271 and (_0x7827.vy or 0) >= 0)) then
_0x86C8.jump = false
end
if _0x7827.y <= _0x5AB5 + 0.25 then
_0x2DCC(_0x7827, _0x1700, 0.1)
else
_0x2DCC(_0x7827, _0x7BA0.fx + 0.5, 0.15)
end
if _0x3271 and _0x7827.grounded then
local _0xC43D, _0x2351 = _0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475)
if _0x2351 == _0x7BA0.y then
if _0xC43D == _0x7BA0.x and _0xFE2A(_0x7827.x - _0x1700) <= 0.25 then
_0x86C8.jump = false
return true
end
else
return false
end
end
if not _0x3271 and os.clock() - _0x1981 > 0.35 then return false end
if os.clock() - _0x1981 > 1.8 then return false end
end
return false
endlocal function _0x1C1E(_0x7BA0)
if not _0xB4B6(_0x7BA0.fx, _0x7BA0.fy) then return false end
local _0x4382 = _0x4C2C()
if not _0x4382 then return false end
local _0xEC2F = (_0x7BA0.x > _0x7BA0.fx) and 1 or -1
local _0x52DB = _0x7BA0.fx + 0.5 + _0xEC2F * 0.6
local _0x3C4A = _0x4382.y
local _0x1700 = _0x7BA0.x + 0.5
_0x0D00()
local _0x1981 = os.clock()
local _0x9BBD, _0x3271, _0xB5DD = false, false, 0
while _0x35B0() do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
if not _0x9BBD then
_0x86C8.left, _0x86C8.right = _0xEC2F < 0, _0xEC2F > 0
if (_0x7827.x - _0x52DB) * _0xEC2F >= 0 or not _0x7827.grounded then
_0x9BBD, _0xB5DD = true, os.clock()
_0x86C8.jump = _0x7827.grounded
end
else
if not _0x7827.grounded then _0x3271 = true end
if _0x86C8.jump and (_0x7827.y <= _0x3C4A - 1 or (_0x3271 and (_0x7827.vy or 0) >= 0)) then
_0x86C8.jump = false
end
_0x2DCC(_0x7827, _0x1700, 0.1)
if _0x3271 and _0x7827.grounded then
local _0xC43D, _0x2351 = _0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475)
if _0x2351 == _0x7BA0.y then
if _0xC43D == _0x7BA0.x and _0xFE2A(_0x7827.x - _0x1700) <= 0.25 then return true end
else
return false
end
end
if not _0x3271 and os.clock() - _0xB5DD > 0.35 then return false end
end
if os.clock() - _0x1981 > 2.2 then return false end
end
return false
endfunction _0x38E9.execStair(_0x7BA0)
if not _0xB4B6(_0x7BA0.fx, _0x7BA0.fy) then return false end
local _0xEC2F = (_0x7BA0.x > _0x7BA0.fx) and 1 or -1
local _0x5AB5 = _0x7BA0.y + 1local _0xD511 = _0x7BA0.fx + 0.5 + _0xEC2F * 0.17
for try = 1, 3 dolocal _0x1981 = os.clock()
while _0x35B0() do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
_0x2DCC(_0x7827, _0xD511, 0.03)
if _0xFE2A(_0x7827.x - _0xD511) <= 0.06 and _0xFE2A(_0x7827.vx or 0) < 1 then break end
if os.clock() - _0x1981 > 0.8 then break end
end
_0x0D00()
if not _0x35B0() then return false end
local _0x4382 = _0x4C2C()
if not _0x4382 then return false end
local _0xA7F4 = _0x4382.y
_0x86C8.jump = true
_0x1981 = os.clock()
local _0x3271, _0x9044 = false, nil
while _0x35B0() do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
if not _0x7827.grounded then _0x3271 = true end
if _0x86C8.jump and (_0x7827.y <= _0x5AB5 - 0.1 or (_0x3271 and (_0x7827.vy or 0) >= 0)) then
_0x86C8.jump = falseendlocal _0x6C93 = (try == 1 and _0x7827.y <= _0x5AB5 + 0.02) or (try == 2 and _0x7827.y <= _0xA7F4 - 0.15) or (try == 3 and _0x7827.y <= _0x5AB5 + 0.25)
if _0x3271 and _0x6C93 then
_0x86C8.right, _0x86C8.left = _0xEC2F > 0, _0xEC2F < 0
else
_0x2DCC(_0x7827, _0xD511, 0.03)
end
if _0x3271 and _0x7827.grounded then
_0x9044 = _0x4748(_0x7827.y - 0.475)
break
end
if not _0x3271 and os.clock() - _0x1981 > 0.35 then break end
if os.clock() - _0x1981 > 1.8 then break end
end
_0x0D00()
if _0x9044 == _0x7BA0.y then
return _0xB4B6(_0x7BA0.x, _0x7BA0.y)end
if _0x9044 ~= nil and _0x9044 ~= _0x7BA0.fy then return false endif not _0xB4B6(_0x7BA0.fx, _0x7BA0.fy) then return false end
end
return false
endlocal function _0x1E52(_0x7BA0)
if not _0xB4B6(_0x7BA0.fx, _0x7BA0.fy) then return false end
if _0xD509(_0x7BA0.fx, _0x7BA0.fy) ~= 0 then return false end
_0x0D00()
if not _0x35B0() then return false end
_0x86C8.jump = true
local _0x1981 = os.clock()
local _0xBF69, _0x3271 = false, false
while _0x35B0() do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
if not _0x7827.grounded then _0x3271 = true end
_0x2DCC(_0x7827, _0x7BA0.fx + 0.5, 0.12)
if _0x86C8.jump and (_0x7827.y < _0x7BA0.fy - 0.9 or (_0x3271 and (_0x7827.vy or 0) >= 0)) then
_0x86C8.jump = false
end
if not _0xBF69 and _0x3271 and _0x7827.y < _0x7BA0.fy - 0.25 and ((_0x7827.vy or 0) > -6 or _0x7827.y < _0x7BA0.fy - 0.8) then
_0xBF69 = _0xC1E7(_0x7BA0.fx, _0x7BA0.fy)
if not _0xBF69 then return false end
end
if _0x7827.grounded and _0x3271 then
local _0xC43D, _0x2351 = _0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475)
return _0xBF69 and _0xC43D == _0x7BA0.x and _0x2351 == _0x7BA0.y
end
if not _0x3271 and os.clock() - _0x1981 > 0.35 then return false end
if os.clock() - _0x1981 > 1.8 then return false end
end
return false
end
local function _0x0ADD(_0x715C, _0x4C8B)
local _0x7180 = 1
while _0x7180 <= #_0x715C do
if not _0x8C3E() then return false end
if _0x4C8B and _0x4C8B() then _0x0D00(); return false,"cancelled"end
local _0x7BA0 = _0x715C[_0x7180]
local _0xA98F, _0xF64E = _0x7180, false
if _0x7BA0.kind =="walk"thenlocal _0xEC2F = _0x7BA0.x - _0x7BA0.fx
while not _0x4C8B and _0x715C[_0xA98F + 1] and _0x715C[_0xA98F + 1].kind =="walk"and (_0x715C[_0xA98F + 1].x - _0x715C[_0xA98F + 1].fx) == _0xEC2F do
_0xA98F += 1
end
local _0x1DCB = false
for j = _0x7180, _0xA98F do
if _0x715C[j].build then
_0x1DCB = true
break
end
end
if _0x1DCB then_0xF64E = true
for j = _0x7180, _0xA98F do
local _0xE35E = _0x715C[j]
if _0xE35E.build and not _0xBE6D(_0xE35E.x, _0xE35E.y) then
_0x7C5D(("Taruh block pijakan (%d,%d)"):format(_0xE35E.x, _0xE35E.y + 1))
if not _0xC1E7(_0xE35E.x, _0xE35E.y + 1) or not _0x3422(120) then
_0xF64E = false
break
end
end
if not _0xB4B6(_0xE35E.x, _0xE35E.y) then
_0xF64E = false
break
end
end
else
_0x7C5D(("Jalan ke (%d,%d)"):format(_0x715C[_0xA98F].x, _0x715C[_0xA98F].y))
_0xF64E = _0xB4B6(_0x715C[_0xA98F].x, _0x715C[_0xA98F].y)
end
elseif _0x7BA0.kind =="pillar"then
_0x7C5D(("Naik pakai block ke (%d,%d)"):format(_0x7BA0.x, _0x7BA0.y))
_0xF64E = _0x1E52(_0x7BA0)
elseif _0x7BA0.kind =="fall"then
_0x7C5D(("Turun ke (%d,%d)"):format(_0x7BA0.x, _0x7BA0.y))
_0xF64E = _0x938A(_0x7BA0)
elseif _0x7BA0.kind =="jump"then
_0x7C5D(("Lompat ke (%d,%d)"):format(_0x7BA0.x, _0x7BA0.y))
_0xF64E = _0x11F2(_0x7BA0)
elseif _0x7BA0.kind =="gap"then
_0x7C5D(("Lompati lubang ke (%d,%d)"):format(_0x7BA0.x, _0x7BA0.y))
_0xF64E = _0x1C1E(_0x7BA0)
elseif _0x7BA0.kind =="stair"then
_0x7C5D(("Naik tangga ke (%d,%d)"):format(_0x7BA0.x, _0x7BA0.y))
_0xF64E = _0x38E9.execStair(_0x7BA0)
end
_0x0D00()
if _0x4C8B and _0x4C8B() then return false,"cancelled"end
if not _0xF64E then_0x43C8[_0x7BA0.key] = os.clock() + ((_0x7BA0.kind =="stair") and 5 or 20)
return false
end
_0x7180 = _0xA98F + 1
end
return true
endlocal function _0x958B(_0x6D99, _0x79D3, _0x418F, _0xDD5D, _0x4BC0, skipTbl, failTbl)
local _0x9F6E = _0x1DCC.World
local _0x1636 = {}
_0x1636.maxY = _0x418F.maxY
_0x1636.los = _0x418F.los
for _0xF439, _0x615D in ipairs(_0x418F) do _0x1636[_0x615D.idx] = true end
local _0x25C5 = _0x418F[1]
_0x7C5D(("Cari jalan A* ke (%d,%d)"):format(_0x25C5.x, _0x25C5.y))
local _0x715C, _0x2410, _0x991A = _0x251E(_0x6D99, _0x79D3, _0x1636, _0x25C5.x, _0x25C5.y, _0xDD5D, _0x4BC0)
if _0x418F.cancel and _0x418F.cancel() then _0x0D00(); return false,"cancelled"end
if _0x715C then
if #_0x715C == 0 then
for _0xF439, _0x615D in ipairs(_0x418F) do _0xED30(skipTbl, _0x615D.idx, 20) end
else
local _0xF64E, _0x3330 = _0x0ADD(_0x715C, _0x418F.cancel)
if _0x3330 =="cancelled"then return false, _0x3330 end
if not _0xF64E then
failTbl[_0x25C5.idx] = (failTbl[_0x25C5.idx] or 0) + 1
if failTbl[_0x25C5.idx] >= 3 then
for _0xF439, _0x615D in ipairs(_0x418F) do _0xED30(skipTbl, _0x615D.idx, 40) end
end
end
end
_0x0D00()
return true
endfor _0xF439, _0x615D in ipairs(_0x418F) do _0xED30(skipTbl, _0x615D.idx, _0x2410 and 60 or 30) end
if _0x2410 and _0x9F6E then _0x1E97(_0x79D3 * _0x9F6E.w + _0x6D99, _0xDD5D, _0x4BC0, _0x991A) end
_0x0D00()
return false
endfunction _0x2FB0.touchAll(_0x8B34, _0xF3CD, _0x3A74, _0x962E)
local _0x954B = _0x1DCC.World
_0x962E = _0x962E or function() return _0xCA76() end
local function _0x44B7() return _0xCA76() and _0x962E() and _0x1DCC.World == _0x954B end
local _0x026D = _0x2FB0.list
if not _0x026D or not _0x4CD3 then return false end
local function _0x8111(_0x615D)
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot(_0x026D)) do
if _0x4B2E(_0x2DDF, os.clock()) and _0x2FB0.room(_0x2DDF.id) ~= 0
and not _0x2DDF.taking and _0x250A(_0x615D, _0x2DDF.x, _0x2DDF.y) then
return true
end
end
return false
end
local _0x4A56 = {}
for _0xF439, _0x615D in ipairs(_0x8B34) do
if not _0x03ED(_0x615D.x, _0x615D.y) and _0x8111(_0x615D) then _0x4A56[#_0x4A56 + 1] = _0x615D end
end
if #_0x4A56 == 0 then return false end
local _0x4382 = _0x4C2C()
if not _0x4382 or _0x4382.dead or not _0x4382.grounded then return false end
local function _0x3EAA(_0x5B56) return _0x99A4(_0x5B56, _0x3A74) and _0xBE6D(_0x5B56, _0x3A74) end
local function _0xC8A0(_0xE034, _0x783C)
local _0xE35E = (_0x783C >= _0xE034) and 1 or -1
for _0x5B56 = _0xE034, _0x783C, _0xE35E do
if not _0x3EAA(_0x5B56) then return false end
end
return true
end
local _0x4943 = _0x86C8.active
_0x86C8.active = true
local function _0x412B(_0x1700, maxT)
local _0x1981 = os.clock()
while _0x44B7() and os.clock() - _0x1981 < (maxT or 1.2) do
task.wait()
local _0x5B56 = _0x4C2C()
if not _0x5B56 or _0x5B56.dead then break end
_0x2DCC(_0x5B56, _0x1700, 0.1)
if _0x5B56.grounded and _0xFE2A(_0x5B56.x - _0x1700) <= 0.15 and _0xFE2A(_0x5B56.vx or 0) < 1.5 then
_0x86C8.left, _0x86C8.right = false, false
return true
end
end
_0x86C8.left, _0x86C8.right = false, false
return false
endlocal function _0x723A(toX)
_0x86C8.left, _0x86C8.right = false, false
local _0xA0B9 = _0x4C2C()
if not _0xA0B9 then return end
local _0xA7F4 = _0xA0B9.y
_0x86C8.jump = true
local _0x1981, _0xEBF5 = os.clock(), false
while _0x44B7() and os.clock() - _0x1981 < 1.4 do
task.wait()
local _0x5B56 = _0x4C2C()
if not _0x5B56 or _0x5B56.dead then break end
if not _0x5B56.grounded then
_0xEBF5 = true
_0x86C8.jump = falseend
if toX and _0xEBF5 and _0x5B56.y <= _0xA7F4 - 0.25 then _0x2DCC(_0x5B56, toX, 0.1) else _0x86C8.left, _0x86C8.right = false, false end
if _0xEBF5 and _0x5B56.grounded then break end
if not _0xEBF5 and os.clock() - _0x1981 > 0.35 then break end
end
_0x86C8.jump, _0x86C8.left, _0x86C8.right = false, false, false
endlocal _0x590D, _0x4012 = _0xF3CD, _0xF3CD
for _0xF439, _0x615D in ipairs(_0x4A56) do
if _0x615D.y == _0x3A74 and _0xFE2A(_0x615D.x - _0xF3CD) <= 4 then
if _0x615D.x < _0x590D then _0x590D = _0x615D.x end
if _0x615D.x > _0x4012 then _0x4012 = _0x615D.x end
end
end
if _0x590D < _0xF3CD and _0xC8A0(_0xF3CD - 1, _0x590D) then _0x412B(_0x590D + 0.5) end
if _0x4012 > _0xF3CD and _0xC8A0(_0xF3CD + 1, _0x4012) then _0x412B(_0x4012 + 0.5) endfor _0xF439 = 1, 4 do
local _0xAFDF = _0x4C2C()
if not _0xAFDF or not _0x44B7() then break end
local _0x5A8C = _0x4748(_0xAFDF.x)
local _0xD279 = {}
for _0xF439, _0x615D in ipairs(_0x4A56) do
if _0x615D.y == _0x3A74 - 1 and _0xFE2A(_0x615D.x - _0xF3CD) <= 3 and _0x3EAA(_0x615D.x) and _0xC8A0(_0x5A8C, _0x615D.x)
and not _0x03ED(_0x615D.x, _0x615D.y) and _0x8111(_0x615D) then
_0xD279[#_0xD279 + 1] = _0x615D.x
end
end
if #_0xD279 == 0 then break end
table.sort(_0xD279, function(_0xBFDC, _0x784F) return _0xFE2A(_0xBFDC - _0x5A8C) < _0xFE2A(_0x784F - _0x5A8C) end)
local _0xE034 = _0xD279[1]
if _0xE034 ~= _0x5A8C then _0x412B(_0xE034 + 0.5) end
_0x723A(_0xD279[2] and (_0xD279[2] + 0.5) or nil)endlocal _0xF64E = _0x44B7() and _0x412B(_0xF3CD + 0.5, 2)
_0x86C8.left, _0x86C8.right, _0x86C8.jump = false, false, false
_0x86C8.active = _0x4943
_0x9A9F(0.2)
return _0xF64E
endfunction _0x2FB0.tileReady(_0x615D)
if not _0x2FB0.list then return false,"Daftar drop belum terbaca; jeda break"end
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot()) do
if _0x2DDF.n > 0 and not _0x2DDF.display and _0x250A(_0x615D, _0x2DDF.x, _0x2DDF.y) then return false, _0x2DDF end
end
return true
end
function _0x2FB0.blockReason(_0x2DDF)
if type(_0x2DDF) ~="table"then return tostring(_0x2DDF or"Menunggu tile bersih") end
if _0x2FB0.room(_0x2DDF.id) == 0 then return"Tas penuh: ".. _0x949D(_0x2DDF.id) .."; jeda break"end
if _0x2DDF.armed == false and _0x2DDF.id ~= 112 then return"Item di tile belum boleh diambil; jeda break"end
if _0x2DDF.pending or _0x2DDF.taking then return"Menunggu konfirmasi collect sebelum break"end
return"Masih ada ".. _0x949D(_0x2DDF.id) .." di tile; collect dahulu"end
function _0x2FB0.workTiles(_0x8B34)
local _0xDB37, _0xC95D, _0x9F6E = {}, {}, _0x1DCC.World
if not _0x9F6E then return _0xDB37 end
for _0xF439, _0x615D in ipairs(_0x8B34) do
for _0x6665 = math.max(0, _0x615D.y - 1), math.min(_0x9F6E.h - 1, _0x615D.y + 1) do
for _0x5409 = math.max(0, _0x615D.x - 1), math.min(_0x9F6E.w - 1, _0x615D.x + 1) do
local _0x795E = _0x5409 ..",".. _0x6665
if not _0xC95D[_0x795E] then _0xDB37[#_0xDB37 + 1], _0xC95D[_0x795E] = { _0x5409 = _0x5409, _0x6665 = _0x6665 }, true end
end
end
end
return _0xDB37
end
function _0x2FB0.visitForWork(_0x2DDF, _0xF3CD, _0x3A74, _0x962E)
local _0x954B, _0x4943, _0xE7AB = _0x1DCC.World, _0x86C8.active, os.clock() + 5
_0x38E9.WorkCollect, _0x86C8.active = true, true
local _0xF64E, _0x8599 = pcall(function()
_0x38E9.visitDrop(_0x2DDF, function() return not _0x962E() or os.clock() >= _0xE7AB end)
if _0x962E() and _0x1DCC.World == _0x954B then
if not _0x927E.walkTo(_0xF3CD, _0x3A74, 8, function() return not _0x962E() end) then
error("Gagal kembali ke posisi farm setelah collect", 0)
end
end
end)
_0x38E9.WorkCollect = false
_0x0D00()
_0x86C8.active = _0x4943 and _0x962E() and _0x1DCC.World == _0x954B
return _0xF64E, _0x8599
end
function _0x2FB0.prepareWork(_0x8B34, _0xF3CD, _0x3A74, _0x962E, options)
options = options or {}
local _0x954B, _0x4943 = _0x2FB0.bindWorld(), _0x86C8.active
_0x2FB0.WorkBusy = true
local _0xF64E, _0xEE48, _0x3B8B = pcall(function()
if not _0x954B or not _0x962E() then return {},"Collect dibatalkan"end
if not _0x2FB0.list then _0x1761() end
if not _0x2FB0.list then return {},"Daftar drop belum terbaca; tekan Hubungkan ke game"end
local _0x14EE = options.collect or _0x5D82.AutoCollect or _0x5D82.Override ~= nil
local _0x5219 = _0x2FB0.workTiles(_0x8B34)
_0x2FB0.waitSpawn(_0x5219)
if not _0x962E() then return {},"Collect dibatalkan"end
if _0x14EE then
if _0x5D82.CollectMode =="Remote"then
local _0xE7AB = os.clock() + 1.5
repeat
local _0x78E8 = 0
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead or not _0x962E() then break end
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot()) do
if _0x78E8 >= 4 or _0x2FB0.pool().busy >= 4 then break end
if _0x4B2E(_0x2DDF, os.clock()) then
local _0x568F = false
for _0xF439, _0x615D in ipairs(_0x5219) do if _0x250A(_0x615D, _0x2DDF.x, _0x2DDF.y) then _0x568F = true; break end end
local _0xDD5D = (_0x5D82.CollectRadius or 3) + 0.2
if _0x568F and math.abs(_0x2DDF.x - _0x7827.x) <= _0xDD5D and math.abs(_0x2DDF.y - (_0x7827.y - 0.475)) <= _0xDD5D then
_0x78E8 = _0x78E8 + 1
task.spawn(_0xA761, _0x2DDF)
end
end
end
local _0x505C = true
for _0xF439, _0x615D in ipairs(_0x8B34) do if not _0x2FB0.tileReady(_0x615D) then _0x505C = false; break end end
if _0x505C and _0x2FB0.pool().busy == 0 then break end
task.wait(0.05)
until not _0x962E() or os.clock() >= _0xE7AB
else
_0x2FB0.touchAll(_0x5219, _0xF3CD, _0x3A74, _0x962E)
if not _0x962E() then return {},"Collect dibatalkan"end
local _0x7827 = _0x4C2C()
if not _0x7827 or math.abs(_0x7827.x - (_0xF3CD + 0.5)) > 0.3 or _0x4748(_0x7827.y - 0.475) ~= _0x3A74 then
return {},"Gagal kembali ke posisi farm setelah collect"endfor _0xF439, _0x615D in ipairs(_0x8B34) do
local _0x505C, _0x2DDF = _0x2FB0.tileReady(_0x615D)
if not _0x505C and type(_0x2DDF) =="table"and _0x4B2E(_0x2DDF, os.clock())
and _0x2FB0.room(_0x2DDF.id) ~= 0 and not _0x03ED(_0x4748(_0x2DDF.x), _0x4748(_0x2DDF.y)) then
local _0x2216, _0x3330 = _0x2FB0.visitForWork(_0x2DDF, _0xF3CD, _0x3A74, _0x962E)
if not _0x2216 then return {}, tostring(_0x3330) end
break
end
end
end
end
if not _0x962E() or _0x1DCC.World ~= _0x954B then return {},"Collect dibatalkan"end
local _0xE60E = options.seed or (_0x7CED() and _0x927E.seedOfBlock(_0x7CED()))
if _0xE60E and _0x2FB0.room(_0xE60E) == 0 then
return {},"Tas seed penuh; menunggu auto drop / ruang inventori"end
local _0xDB37, _0x3330 = {}, nil
for _0xF439, _0x615D in ipairs(_0x8B34) do
local _0x505C, _0x0197 = _0x2FB0.tileReady(_0x615D)
if _0x505C then _0xDB37[#_0xDB37 + 1] = _0x615D else _0x3330 = _0x3330 or _0x2FB0.blockReason(_0x0197) end
end
return _0xDB37, _0x3330
end)
_0x2FB0.WorkBusy, _0x38E9.WorkCollect = false, false
_0x0D00()
_0x86C8.active = _0x4943 and _0x962E() and _0x1DCC.World == _0x954B
if not _0xF64E then return {},"Collect gagal: ".. tostring(_0xEE48) end
return _0xEE48, _0x3B8B
end
function _0x2FB0.touch(_0x615D, _0xF3CD, _0x3A74)
return _0x2FB0.touchAll({ _0x615D }, _0xF3CD, _0x3A74)
endfunction _0x2FB0.waitSpawn(_0x8B34)
local _0x92C2 = 0.1
pcall(function() _0x92C2 = _0x8270:GetNetworkPing() end)
local _0xF661 = math.clamp(0.7 + 4 * _0x92C2, 0.9, 2)
local _0xC601 = nil
for _0xF439, _0x615D in ipairs(_0x8B34) do
local _0x783C = _0x2FB0.brokeAt[_0x615D.x ..",".. _0x615D.y]
if _0x783C and os.clock() - _0x783C < _0xF661 and (not _0xC601 or _0x783C > _0xC601) then _0xC601 = _0x783C end
end
if not _0xC601 then return end
local _0x026D = _0x2FB0.list
while os.clock() - _0xC601 < _0xF661 and _0xCA76() do
if _0x026D then
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot(_0x026D)) do
if type(_0x2DDF) =="table"and type(_0x2DDF.x) =="number"and (_0x2DDF.born or 0) >= _0xC601 then
for _0xF439, _0x615D in ipairs(_0x8B34) do
if _0x250A(_0x615D, _0x2DDF.x, _0x2DDF.y) then
task.wait(0.05)return
end
end
end
end
end
task.wait()
end
endfunction _0x38E9.visitDrop(_0x2DDF, _0x4C8B)
if _0x4C8B and _0x4C8B() then return false,"cancelled"end
local _0x9F6E = _0x1DCC.World
local _0x7827 = _0x4C2C()
if not _0x9F6E or not _0x7827 then return false,"nopath"end
local _0xAEA8 = _0x9F6E.w
local _0x574E, _0x6912 = _0x4748(_0x2DDF.x), _0x4748(_0x2DDF.y)
if _0x03ED(_0x574E, _0x6912) then return false,"nopath"endlocal _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0xC527 = { [_0x6912 * _0xAEA8 + _0x574E] = true }
local _0x715C = _0x251E(_0x6D99, _0x79D3, _0xC527, _0x574E, _0x6912, 0.5, false)
if not _0x715C and _0x6912 + 1 < _0x9F6E.h then
_0x715C = _0x251E(_0x6D99, _0x79D3, { [(_0x6912 + 1) * _0xAEA8 + _0x574E] = true }, _0x574E, _0x6912 + 1, 0.5, false)
end
if not _0x715C then _0x715C = _0x251E(_0x6D99, _0x79D3, _0xC527, _0x574E, _0x6912, 1.2, false) end
if not _0x715C then return false,"nopath"end
if _0x4C8B and _0x4C8B() then return false,"cancelled"end
if #_0x715C > 0 then
local _0xF64E, _0x3330 = _0x0ADD(_0x715C, _0x4C8B)
_0x0D00()
if not _0xF64E then return false, _0x3330 =="cancelled"and"cancelled"or"nopath"end
end
local _0x92C2 = 0.1
pcall(function() _0x92C2 = _0x8270:GetNetworkPing() end)
_0x9A9F(math.clamp(0.6 + 3 * _0x92C2, 1, 2.5))
if _0x4C8B and _0x4C8B() then return false,"cancelled"end
local function _0xBE18() return (_0x2DDF.n or 0) > 0 and _0x2FB0.key(_0x2FB0.list, _0x2DDF) ~= nil end
local _0x5A8C = _0x4C2C()
if _0xBE18() and _0x5A8C and _0x5A8C.grounded and _0xFE2A(_0x2DDF.x - _0x5A8C.x) <= 0.9 and _0x2DDF.y < _0x5A8C.y - 0.9 and _0x2DDF.y > _0x5A8C.y - 2.6 then_0x86C8.active = true
_0x86C8.jump = true
task.wait(0.25)
_0x86C8.jump = false
local _0x1981 = os.clock()
repeat
task.wait(0.05)
local _0x5B56 = _0x4C2C()
until not _0x5B56 or _0x5B56.grounded or os.clock() - _0x1981 > 1.5
_0x9A9F(0.5)
end
if _0xBE18() then return false,"left"end
return true
endfunction _0x38E9.walkRow(_0xD6EA, _0xF646, _0xD3DA)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return false end
for _0xF439, _0x574E in ipairs({ _0xF646, _0xD3DA }) do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
if not (_0x6D99 == _0x574E and _0x79D3 == _0xD6EA) then
local _0xC527 = { [_0xD6EA * _0x9F6E.w + _0x574E] = true }
local _0x715C = _0x251E(_0x6D99, _0x79D3, _0xC527, _0x574E, _0xD6EA, 0.5, false) or _0x251E(_0x6D99, _0x79D3, _0xC527, _0x574E, _0xD6EA, 1.2, false)
if not _0x715C then
_0x0D00()
return false
end
if #_0x715C > 0 and not _0x0ADD(_0x715C) then
_0x0D00()
return false
end
end
end
_0x0D00()
return true
end_0x38E9.FetchFail = {}
function _0x38E9.fetchDrops(_0x962E, maxDist, _0xEFC3, maxSec)
local _0x026D = _0x2FB0.list
local _0x9F6E = _0x1DCC.World
if not _0x026D or not _0x9F6E then return 0 end
maxDist = maxDist or 8
local _0xB5AC, _0x1981 = 0, os.clock()
local function _0x0991(_0x2DDF, _0x4DD4)
if not (_0x4B2E(_0x2DDF, _0x4DD4) and _0x2DDF.id) then return false end
if _0x38E9.FetchFail[_0x2DDF.uid] and _0x4DD4 < _0x38E9.FetchFail[_0x2DDF.uid] then return false end
if _0x03ED(_0x4748(_0x2DDF.x), _0x4748(_0x2DDF.y)) then_0x38E9.FetchFail[_0x2DDF.uid] = _0x4DD4 + 300
return false
end
local _0x0826 = _0xECF0.Zone
if _0x0826 and not _0x38E9.NoZone and _0x0826.world == rawget(_0x9F6E,"name") and _0xFE2A(_0x2DDF.x - _0x0826.x) <= 2.5 and _0xFE2A(_0x2DDF.y - _0x0826.y) <= 2.5 then
return false
end
if _0xEFC3 and not _0xEFC3(_0x2DDF) then return false end
if _0x2DDF.id ~= 112 and _0x1DCC.Inv thenlocal _0xD955, _0x2DAE = pcall(function() return _0x1DCC.Inv:room(_0x2DDF.id) end)
if _0xD955 and type(_0x2DAE) =="number"and _0x2DAE <= 0 then return false end
end
return true
end
while _0x962E() and _0xCA76() and os.clock() - _0x1981 < (maxSec or 20) do
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then break end
if not _0x7827.grounded then
task.wait(0.05)
continue
end
local _0x1700, _0x212D = _0x7827.x, _0x7827.y - 0.475
local _0x4DD4 = os.clock()
local _0x0E6E, _0xFFDE = nil, nil
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot(_0x026D)) do
if _0x0991(_0x2DDF, _0x4DD4) then
local _0x935C, _0x15BA = _0x2DDF.x - _0x1700, _0x2DDF.y - _0x212D
if _0xFE2A(_0x935C) <= maxDist and _0xFE2A(_0x15BA) <= maxDist and (_0xFE2A(_0x935C) >= 0.6 or _0xFE2A(_0x15BA) >= 0.75) then
local _0x95E7 = _0x935C * _0x935C + 9 * _0x15BA * _0x15BAif not _0xFFDE or _0x95E7 < _0xFFDE then _0x0E6E, _0xFFDE = _0x2DDF, _0x95E7 end
end
end
end
if not _0x0E6E then break end
local _0xD6EA = _0x4748(_0x0E6E.y)
if _0x0E6E.x < 0 or _0xD6EA < 0 or _0x0E6E.x >= _0x9F6E.w or _0xD6EA >= _0x9F6E.h then
_0x38E9.FetchFail[_0x0E6E.uid] = _0x4DD4 + 30
elselocal _0xEFEB, _0x590D, _0x4012 = {}, _0x0E6E.x, _0x0E6E.x
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot(_0x026D)) do
if _0x4748(_0x2DDF.y) == _0xD6EA and _0xFE2A(_0x2DDF.x - _0x1700) <= maxDist and _0x0991(_0x2DDF, _0x4DD4) then
_0xEFEB[#_0xEFEB + 1] = _0x2DDF
if _0x2DDF.x < _0x590D then _0x590D = _0x2DDF.x end
if _0x2DDF.x > _0x4012 then _0x4012 = _0x2DDF.x end
end
end
local _0xF646, _0xD3DA = _0x4748(_0x590D), _0x4748(_0x4012)
if _0xFE2A(_0x4012 - _0x1700) < _0xFE2A(_0x590D - _0x1700) then _0xF646, _0xD3DA = _0xD3DA, _0xF646 end
_0x7C5D(("Ambil drop baris y %d (x %d-%d)"):format(_0xD6EA, math.min(_0xF646, _0xD3DA), math.max(_0xF646, _0xD3DA)))
local _0xF64E = _0x38E9.walkRow(_0xD6EA, _0xF646, _0xD3DA)local _0x92C2 = 0.1
pcall(function() _0x92C2 = _0x8270:GetNetworkPing() end)
local _0x07F2 = os.clock()
repeat
task.wait(0.05)
local _0xCBC9 = false
for _0xF439, _0x2DDF in ipairs(_0xEFEB) do
if _0x2DDF.taking then
_0xCBC9 = true
break
end
end
until not _0xCBC9 or os.clock() - _0x07F2 > math.clamp(0.3 + 3 * _0x92C2, 0.5, 2.5)
_0xB5AC += 1
_0x38E9.FetchTry = _0x38E9.FetchTry or {}
for _0xF439, _0x2DDF in ipairs(_0xEFEB) do
if (_0x2DDF.n or 0) > 0 and _0x2FB0.key(_0x026D, _0x2DDF) ~= nil then
local _0xE663, _0x3330 = false,"nopath"if _0xF64E then _0xE663, _0x3330 = _0x38E9.visitDrop(_0x2DDF) end
if not _0xE663 then
local _0x0F33 = (_0x38E9.FetchTry[_0x2DDF.uid] or 0) + 1
_0x38E9.FetchTry[_0x2DDF.uid] = _0x0F33
if _0x3330 =="left"and _0x0F33 < 4 then
_0x38E9.FetchFail[_0x2DDF.uid] = os.clock() + 1.5else
_0x38E9.FetchFail[_0x2DDF.uid] = os.clock() + 30end
else
_0x38E9.FetchTry[_0x2DDF.uid] = nil
end
end
end
end
end
_0x0D00()
return _0xB5AC
end
local function _0x433F()
_0x86C8.active = true
_0x0D00()
_0x9929 = nil
if _0xFA1E.Ghost then
_0x2623(false)if _0x6FB2.GhostToggle then pcall(function() _0x6FB2.GhostToggle:Set(false) end) end
end
end
local function _0x7C3D()
if _0xD222.Running or _0x9715.Running or _0xD808.Roaming or _0xECF0.Running or _0x3F90.Running or _0x38E9.Homing
or _0x5F2F.Running or _0x38E9.WorkCollect then
return
end
_0x86C8.active = false
_0x0D00()
end
local function _0x48F7(_0x4BC0, _0x2010)
if not _0x4BC0 then return"mati"end
if not _0x2010 then return"belum dipilih"end
local _0x66F3 = _0xC90B(_0x2010)
return _0x949D(_0x2010) .." x".. _0x66F3 .. (_0x66F3 <= 0 and" (habis)"or"")
endlocal function _0x759C(_0x2010)
if not _0x2010 or _0x2010 == 0 then return false end
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB or _0x1DCC.protectedItem(_0x2010) then return false end
local _0x887D = (_0x91CB.kind =="seed") and 20 or _0x91CB.hits
if type(_0x887D) =="number"and _0x887D > 0 then return true end
local _0x9F6E = _0x1DCC.World
return (_0x91CB.staffHits and _0x9F6E and _0x9F6E.areas and _0x9F6E.areas.staff) and true or false
endlocal function _0x2A76(_0x5409, _0x6665)
local _0x9F6E = _0x1DCC.World
local _0xA21E = _0x9F6E and _0x9F6E.spawn
if _0xA21E ~= nil and (typeof(_0xA21E) =="Vector2"or type(_0xA21E) =="table") and _0x5409 == _0xA21E.X and _0x6665 == _0xA21E.Y then
return nil
end
local _0xC8CC = _0x3270("fg", _0x5409, _0x6665)
if _0xC8CC == nil then return nil end
if _0xC8CC ~= 0 then
if _0x759C(_0xC8CC) then return"fg", _0xC8CC end
return nilend
if _0xD222.IncludeBg then
local _0x4D4B = _0x3270("bg", _0x5409, _0x6665)
if _0x4D4B and _0x4D4B ~= 0 and _0x759C(_0x4D4B) then return"bg", _0x4D4B end
end
return nil
endlocal function _0xBF28()
local _0x9F6E = _0x1DCC.World
local _0xAEA8, _0x9EEB = _0x9F6E.w, _0x9F6E.h
local _0x4DD4 = os.clock()
for _0x6665 = 0, _0x9EEB - 1 do
local _0x8159, _0x61AB = _0x9F6E.fg[_0x6665], _0x9F6E.bg[_0x6665]
for _0x5409 = 0, _0xAEA8 - 1 do
local _0xAB84 = _0x8159 and _0x8159[_0x5409] or 0
local _0x18FE = _0x61AB and _0x61AB[_0x5409] or 0
if (_0xAB84 ~= 0 or (_0xD222.IncludeBg and _0x18FE ~= 0)) and _0x2A76(_0x5409, _0x6665)
and not _0x7188(_0xD222.Skip, _0x6665 * _0xAEA8 + _0x5409, _0x4DD4) then
return _0x6665
end
end
end
return nil
end
local function _0xF4F9()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return -1 end
local _0xAEA8, _0x9EEB = _0x9F6E.w, _0x9F6E.h
local _0x66F3, _0x8BE9 = 0, 0
for _0x6665 = 0, _0x9EEB - 1 do
local _0x8159, _0x61AB = _0x9F6E.fg[_0x6665], _0x9F6E.bg[_0x6665]
for _0x5409 = 0, _0xAEA8 - 1 do
local _0xAB84 = _0x8159 and _0x8159[_0x5409] or 0
local _0x18FE = _0x61AB and _0x61AB[_0x5409] or 0
if (_0xAB84 ~= 0 or (_0xD222.IncludeBg and _0x18FE ~= 0)) and _0x2A76(_0x5409, _0x6665) then _0x66F3 += 1 end
end
_0x8BE9 += _0xAEA8
if _0x8BE9 >= 8000 then
_0x8BE9 = 0
task.wait()
end
end
return _0x66F3
endlocal function _0x20AB(_0x1AEC, _0x7827)
if _0xD222.Sweep ~="Zig-zag"then return 1 end
if _0xD222.DirRow == _0x1AEC and _0xD222.Dir then return _0xD222.Dir end
local _0x9F6E = _0x1DCC.World
local _0x4DD4 = os.clock()
local _0x401B, _0x2827
for _0x6665 = _0x1AEC, math.min(_0x1AEC + 1, _0x9F6E.h - 1) do
for _0x5409 = 0, _0x9F6E.w - 1 do
if _0x2A76(_0x5409, _0x6665) and not _0x7188(_0xD222.Skip, _0x6665 * _0x9F6E.w + _0x5409, _0x4DD4) then
if not _0x401B or _0x5409 < _0x401B then _0x401B = _0x5409 end
if not _0x2827 or _0x5409 > _0x2827 then _0x2827 = _0x5409 end
end
end
end
local _0xEC2F = 1
if _0x401B and _0x2827 and _0xFE2A(_0x7827.x - _0x2827) < _0xFE2A(_0x7827.x - _0x401B) then _0xEC2F = -1 end
_0xD222.DirRow, _0xD222.Dir = _0x1AEC, _0xEC2F
return _0xEC2F
endlocal function _0x338C(_0x5AB5, _0x8590, _0xEC2F, _0xEFC3)
local _0x9F6E = _0x1DCC.World
local _0xAEA8 = _0x9F6E.w
local _0x026D = {}
local _0x4DD4 = os.clock()
for _0x6665 = _0x5AB5, math.min(_0x8590, _0x9F6E.h - 1) do
for _0x5409 = 0, _0xAEA8 - 1 do
local _0xB9E8 = _0x6665 * _0xAEA8 + _0x5409
if _0x2A76(_0x5409, _0x6665) and not _0x7188(_0xD222.Skip, _0xB9E8, _0x4DD4) then
if _0xEFC3 and not _0xEFC3[_0xB9E8] then
_0xED30(_0xD222.Skip, _0xB9E8, 60)else_0x026D[#_0x026D + 1] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0xB9E8 }
end
end
end
end
table.sort(_0x026D, function(_0xE034, _0x783C)
if _0xE034.x ~= _0x783C.x then return _0xE034.x * _0xEC2F < _0x783C.x * _0xEC2F end
return _0xE034.y < _0x783C.y
end)
return _0x026D
endlocal function _0x6802(_0x7827, _0x8590, _0xEC2F)
local _0x9F6E = _0x1DCC.World
local _0xAEA8 = _0x9F6E.w
local _0xDD5D = _0xF04B() - 0.08
local _0x1700, _0x212D = _0x7827.x, _0x7827.y - 0.475
local _0xAF03 = _0x4748(_0x7827.y + 0.01)
local _0x278B, _0x7FAF = _0x4748(_0x7827.x - 0.3), _0x4748(_0x7827.x + 0.3 - 0.0001)
local _0x4DD4 = os.clock()
local _0x026D = {}
for _0x6912 = math.max(0, _0x4748(_0x212D - _0xDD5D - 0.5)), math.min(_0x4748(_0x212D + _0xDD5D + 0.5), _0x8590, _0x9F6E.h - 1) do
for _0x574E = math.max(0, _0x4748(_0x1700 - _0xDD5D - 0.5)), math.min(_0x4748(_0x1700 + _0xDD5D + 0.5), _0xAEA8 - 1) do
if _0xF81F(_0x7827, _0x574E, _0x6912, _0xDD5D) then
local _0xB9E8 = _0x6912 * _0xAEA8 + _0x574E
if not _0x7188(_0xD222.Skip, _0xB9E8, _0x4DD4) and _0x2A76(_0x574E, _0x6912) then
_0x026D[#_0x026D + 1] = {
_0x5409 = _0x574E, _0x6665 = _0x6912, _0xB9E8 = _0xB9E8,
support = (_0x6912 == _0xAF03 and _0x574E >= _0x278B and _0x574E <= _0x7FAF),
}
end
end
end
end
table.sort(_0x026D, function(_0xE034, _0x783C)
if _0xE034.support ~= _0x783C.support then return not _0xE034.support end
if _0xE034.x ~= _0x783C.x then return _0xE034.x * _0xEC2F < _0x783C.x * _0xEC2F end
return _0xE034.y < _0x783C.y
end)
return _0x026D
endlocal function _0x018F(_0x7827, _0x5409, _0xAF03)
local _0x278B, _0x7FAF = _0x4748(_0x7827.x - 0.3), _0x4748(_0x7827.x + 0.3 - 0.0001)
for _0x5B56 = _0x278B, _0x7FAF do
if _0x5B56 ~= _0x5409 and (_0x03ED(_0x5B56, _0xAF03) or _0xABCE(_0x5B56, _0xAF03)) then return 0 endend
local _0x9F6E = _0x1DCC.World
for _0x6665 = _0xAF03 + 1, math.min(_0x9F6E.h - 1, _0xAF03 + 60) do
if _0x52E5(_0x5409, _0x6665) then return nil end
if _0x03ED(_0x5409, _0x6665) or _0xABCE(_0x5409, _0x6665) then return _0x6665 - _0xAF03 end
end
return 60
endlocal function _0xA84F(_0x615D)
local _0x5409, _0x6665, _0xB9E8 = _0x615D.x, _0x615D.y, _0x615D.idx
local _0x7E30, _0x2010 = _0x2A76(_0x5409, _0x6665)
if not _0x7E30 then return end
local _0x3677, _0x2A68 = 0, _0xEDFD(_0x2010) * 3 + 6
while _0xD222.Running and _0xCA76() do
_0x7E30, _0x2010 = _0x2A76(_0x5409, _0x6665)
if not _0x7E30 then return end
local _0x2DAE, _0x3B8B = _0xE0BA(_0x5409, _0x6665, _0xD222.IncludeBg, true)
if _0x3B8B =="native-missing"then
_0xD467("Fungsi pukul game terputus. Tekan 'Hubungkan ke game', lalu mulai lagi")
return
end
if _0x2DAE == nil then
if _0x3B8B =="tile-changed"then
_0xD222.Status = ("Tile (%d,%d) berubah, periksa ulang"):format(_0x5409, _0x6665)
return
end
_0xD222.Status = ("Lewati (%d,%d): %s"):format(_0x5409, _0x6665,
_0x3B8B =="punch-error"and _0x5D82.LastAction or"tile belum bisa dipukul")
_0xED30(_0xD222.Skip, _0xB9E8, 60)
return
end
if _0x2DAE =="broke"then
_0xD222.Broken += 1
_0xD222.Status ="Pecah ".. _0x949D(_0x2010) .." (".. _0x5409 ..",".. _0x6665 ..")"_0xBA5B[_0xB9E8] = (_0xBA5B[_0xB9E8] or 0) + 1
if _0xBA5B[_0xB9E8] > 6 then_0xED30(_0xD222.Skip, _0xB9E8, 120)
return
end
_0x3677 = 0
local _0xF439, _0x7F9A = _0x2A76(_0x5409, _0x6665)
if _0x7F9A then _0x2A68 = _0xEDFD(_0x7F9A) * 3 + 6 end
else
_0x3677 += 1
_0xD222.Status ="Pukul ".. _0x949D(_0x2010) .." (".. _0x5409 ..",".. _0x6665 ..")"if _0x3677 > _0x2A68 then
_0xD222.Status = ("Lewati (%d,%d): tile belum berubah setelah %d pukulan"):format(_0x5409, _0x6665, _0x3677)
_0xED30(_0xD222.Skip, _0xB9E8, 45)
return
end
end
if not _0x3422(_0x5D82.BreakMs) then return end
if _0x2DAE =="broke"then
local _0x7827 = _0x4C2C()
if not _0x7827 or not _0x7827.grounded then return endend
end
end
local function _0xD184(_0x026D, _0x4382)
local _0xFED1 = _0x4748(_0x4382.y - 0.475)
local _0xDD5D = _0xF04B() - 0.08
local _0xC49C = 0
for _0xF439, _0x615D in ipairs(_0x026D) do
if not _0xD222.Running or not _0xCA76() then break end
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead or not _0xF81F(_0x7827, _0x615D.x, _0x615D.y, _0xDD5D) then break end
if not _0x7827.grounded or _0x4748(_0x7827.y - 0.475) ~= _0xFED1 then break end
local _0x8085 = false
if _0x615D.support then
local _0x2DDF = _0x018F(_0x7827, _0x615D.x, _0x4748(_0x7827.y + 0.01))
if _0x2DDF == nil then
_0x8085 = true
_0xD222.Status = ("Lewati (%d,%d): di bawahnya berbahaya"):format(_0x615D.x, _0x615D.y)
elseif _0x2DDF > 3 then_0x8085 = true
_0xD222.Status = ("Lewati pijakan (%d,%d): di bawahnya jurang"):format(_0x615D.x, _0x615D.y)
end
end
if _0x8085 then
_0xED30(_0xD222.Skip, _0x615D.idx, 20)
else
_0xA84F(_0x615D)
_0xC49C += 1
end
end
return _0xC49C
end
local _0x8789 = nil
local function _0xA037()
if not _0x6FB2.ClearStatus then return end
local _0x3E00 ="Status   : ".. (_0xD222.Running and"JALAN"or"BERHENTI")
.."\nBaris    : ".. (_0xD222.TopRow >= 0 and (_0xD222.TopRow .."-".. (_0xD222.TopRow + 1)) or"-")
.."  | arah: ".. ((_0xD222.Dir == -1 and _0xD222.Sweep =="Zig-zag") and"kanan→kiri"or"kiri→kanan")
.."\nDipecah  : ".. _0xD222.Broken .."  | collect: ".. _0x5D82.Collected
.."\nSisa     : ".. (_0xD222.Remaining >= 0 and tostring(_0xD222.Remaining) or"-")
.."  | dilewati: ".. _0xEA50(_0xD222.Skip)
.."\nPijakan  : ".. _0x48F7(_0xD222.UseBlock, _0xD222.ScaffoldId) .."  | dipasang: ".. _0x38E9.Placed
.."\nAksi     : ".. _0xD222.Status
if _0x3E00 == _0x8789 then return end
_0x8789 = _0x3E00
task.defer(function()
pcall(function() _0x6FB2.ClearStatus:SetDesc(_0x3E00) end)
end)
end
local function _0x7D55()
local _0xA7A7, _0xCB93, _0xC56B = 0, 0, -10
while _0xD222.Running and _0xCA76() do
task.wait()
local _0x4DD4 = os.clock()
if _0x4DD4 - _0xC56B > 3 then
_0xC56B = _0x4DD4
_0xD222.Remaining = _0xF4F9()
if not _0xD222.Running or not _0xCA76() then break end
end
if _0x4DD4 - _0xCB93 > 0.5 then
_0xCB93 = _0x4DD4
_0xA037()
end
local _0x9F6E = _0x1DCC.World
local _0x7827 = _0x4C2C()
if not _0x9F6E or not _0x7827 or _0x7827.dead then
_0x0D00()
_0xD222.Status ="Menunggu karakter / world..."task.wait(0.5)
continue
end
if not _0x7827.grounded then
_0x0D00()continue
end
_0x0D00()
local _0x1AEC = _0xBF28()
if not _0x1AEC then
local _0x4276 = _0xF4F9()
_0xD222.Remaining = _0x4276
if _0x4276 == 0 then
_0xD467("World sudah bersih!")
return
end
_0xA7A7 += 1
if _0xA7A7 >= 3 then
_0xD467(("Selesai. Sisa %d tile tidak bisa dijangkau / dipecah"):format(_0x4276))
return
end
_0xD222.Status = ("Sisa %d tile dilewati, coba ulang (%d/3)..."):format(_0x4276, _0xA7A7)
_0xA037()
table.clear(_0xD222.Skip)
table.clear(_0x9F72)
table.clear(_0x43C8)
_0x9929 = nil
if not _0x3422(2000) then break end
continue
end
_0xD222.TopRow = _0x1AEC
local _0x8590 = _0x1AEC + 1local _0xEC2F = _0x20AB(_0x1AEC, _0x7827)local _0x026D = _0x6802(_0x7827, _0x8590, _0xEC2F)
if #_0x026D > 0 then
if _0xD184(_0x026D, _0x7827) > 0 then _0xA7A7 = 0 end
continue
endif _0xD222.Collect then
local _0x88E0 = _0x1AEC - 1
if _0x38E9.fetchDrops(function() return _0xD222.Running end, 5, function(_0x2DDF)
return _0x2DDF.y >= _0x88E0 and _0x2DDF.y < _0x8590 + 2
end, 8) > 0 then
continue
end
end
local _0xDD5D = _0xF04B() - 0.35
local _0x4BC0 = _0x3AE9() ~= nil
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0x31D1 = _0x338C(_0x1AEC, _0x8590, _0xEC2F, _0x8DF8(_0x79D3 * _0x9F6E.w + _0x6D99, _0xDD5D, _0x4BC0))
if #_0x31D1 > 0 thenlocal _0x418F = {}
for _0xF439, _0x615D in ipairs(_0x31D1) do
if (_0x615D.x - _0x31D1[1].x) * _0xEC2F <= 4 then _0x418F[#_0x418F + 1] = _0x615D end
end
_0x958B(_0x6D99, _0x79D3, _0x418F, _0xDD5D, _0x4BC0, _0xD222.Skip, _0x9F72)
end
end
_0x0D00()
end
local function _0x7B42()
if _0x6FB2.ClearToggle then pcall(function() _0x6FB2.ClearToggle:Set(_0xD222.Running) end) end
end
_0xD467 = function(_0x3B8B)
_0xD222.Running = false
_0x7C3D()
_0x7B42()
_0xD222.Status = _0x3B8B or"Dihentikan"if _0x3B8B then
_0x8021("Auto Clear", _0x3B8B, 5)
if not string.find(_0x3B8B,"^Dihentikan") then _0x2479.send("stop","Auto Clear berhenti: ".. _0x3B8B) end
end
_0xA037()
end
local function _0x77C5()
if _0x7528.DoorTravel and _0x7528.DoorTravel.Busy then return"Tunggu Teleport ID Door selesai dulu"end
if not _0x1DCC.World then return"Data world belum ketemu. Tekan 'Hubungkan ke game'"end
if not _0x1DCC.Punch then return"Fungsi pukul game belum ketemu. Tekan 'Hubungkan ke game'"end
if not _0x4CD3 then _0x86C8.bindMenu() end
if not _0x4CD3 then return _0x86C8.Error or"Kontrol gerak game belum terhubung"end
if not _0x4C2C() then return"Kamu belum masuk world"end
return nil
end
local function _0xFB67()
if _0xD222.Running then return end
local _0x8599 = _0x77C5()
if _0x8599 then
_0x8021("Auto Clear", _0x8599, 4)
_0x7B42()
return
end
if _0xD222.UseBlock and (not _0xD222.ScaffoldId or _0xC90B(_0xD222.ScaffoldId) <= 0) then
_0x8021("Auto Clear","Block pijakan belum dipilih / habis: jalan tanpa block pijakan", 5)
end
if _0xD808.Running and _0xD808.stop then _0xD808.stop("Dihentikan karena Auto Clear dimulai") end
if _0xECF0.Running and _0xECF0.stop then _0xECF0.stop("Dihentikan karena Auto Clear dimulai") end
if _0x3F90.Running and _0x3F90.stop then _0x3F90.stop("Dihentikan karena Auto Clear dimulai") end
if _0x5D82.Running then _0xF604("Dihentikan karena Auto Clear dimulai") end
if _0x9715.Running then _0x34F2("Dihentikan karena Auto Clear dimulai") end
table.clear(_0xD222.Skip)
table.clear(_0x9F72)
table.clear(_0x43C8)
table.clear(_0xBA5B)
_0xD222.Broken = 0
_0xD222.Remaining = -1
_0xD222.TopRow = -1
_0xD222.DirRow, _0xD222.Dir = nil, nil
_0xD222.Status ="Mulai..."_0xD222.Running = true
_0x433F()
_0x7B42()
_0xA037()
task.spawn(function()
local _0xF64E, _0x7BA0 = pcall(_0x7D55)
if not _0xF64E then
warn("[ziey HUB] Auto Clear error: ".. tostring(_0x7BA0))
if _0xD222.Running then _0xD467("Error: ".. tostring(_0x7BA0)) end
end
end)
endlocal function _0x525C()
_0x1DCC.Trees, _0x1DCC.TreeMode, _0x1DCC.TreeP = nil, nil, nillocal _0x5A8E, _0x3E29 = pcall(function() return _0x927E.findTreesStruct and _0x927E.findTreesStruct() end)
if _0x5A8E and _0x3E29 == true then return true end
_0x1DCC.Trees, _0x1DCC.TreeMode, _0x1DCC.TreeP = nil, nil, nillocal _0x6205 = _0x84AE:FindFirstChild("TreeChanged")
if _0x6205 and _0x6205:IsA("RemoteEvent") and getconnections then
local _0xF64E, _0x7FAC = pcall(getconnections, _0x6205.OnClientEvent)
if _0xF64E and type(_0x7FAC) =="table"then
for _0xF439, _0x5B56 in ipairs(_0x7FAC) do
local _0x25D4, _0x74A9 = pcall(function() return _0x5B56.Function end)
if _0x25D4 and type(_0x74A9) =="function"then
for _0xF439, _0x5711 in pairs(_0x466E(_0x74A9)) do
if type(_0x5711) =="table"and _0x5711 ~= _0x1DCC.World and rawget(_0x5711,"fg") == nil then
local _0xF439, _0x97A1 = next(_0x5711)
if type(_0x97A1) =="table"and type(rawget(_0x97A1,"p")) =="number"then
_0x1DCC.Trees, _0x1DCC.TreeMode, _0x1DCC.TreeP = _0x5711,"idx","p"break
end
end
end
end
if _0x1DCC.Trees then return true end
end
end
endif _0x927E.findTreesDeep then pcall(_0x927E.findTreesDeep) end
return _0x1DCC.Trees ~= nil
endfunction _0x927E.treeTableOk(_0x615D)
local _0x9F6E = _0x1DCC.World
if type(_0x615D) ~="table"or _0x615D == _0x9F6E or getmetatable(_0x615D) ~= nil or rawget(_0x615D,"fg") ~= nil then return false end
local _0x66F3 = 0
for _0xC0A8, _0x97A1 in pairs(_0x615D) do
_0x66F3 += 1
if _0x66F3 > 6 then break end
if type(_0xC0A8) ~="number"or type(_0x97A1) ~="table"or type(rawget(_0x97A1,"p")) ~="number"then return false end
if _0x9F6E and type(_0x9F6E.w) =="number"and type(_0x9F6E.h) =="number"and (_0xC0A8 < 0 or _0xC0A8 >= _0x9F6E.w * _0x9F6E.h) then return false end
end
return true
endfunction _0x927E.findTreesStruct()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or not _0x466E then return false end
local _0xC779 = {}
for _0xF439, _0xDF0A in ipairs({"tileChanged","treeChanged","setTree"}) do
local _0x509A = rawget(_0x9F6E, _0xDF0A)
if type(_0x509A) =="function"then _0xC779[#_0xC779 + 1] = _0x509A end
end
for _0xF439, _0x119F in ipairs(_0xC779) do
local _0x2795 = _0x466E(_0x119F)
local _0xACA9 = {}
for _0xF439, _0x5711 in pairs(_0x2795) do
if type(_0x5711) =="table"and _0x5711 ~= _0x9F6E then _0xACA9[_0x5711] = true end
end
for _0xF439, _0x7F8F in pairs(_0x2795) do
if type(_0x7F8F) =="function"then
local _0x216F = _0x466E(_0x7F8F)
local _0xFB39, _0x186A, _0xE25C = false, 0, {}
for _0xF439, _0x97A1 in pairs(_0x216F) do
if rawequal(_0x97A1, _0x9F6E) then
_0xFB39 = true
elseif type(_0x97A1) =="table"then
_0x186A += 1
if _0xACA9[_0x97A1] then _0xE25C[#_0xE25C + 1] = _0x97A1 end
end
endif _0xFB39 and _0x186A <= 3 and #_0xE25C == 1 and _0x927E.treeTableOk(_0xE25C[1]) then
_0x1DCC.Trees, _0x1DCC.TreeMode, _0x1DCC.TreeP = _0xE25C[1],"idx","p"return true
end
end
endfor _0x615D in pairs(_0xACA9) do
if next(_0x615D) ~= nil and _0x927E.treeTableOk(_0x615D) and _0x927E.treeShape(_0x615D) =="idx"then
_0x1DCC.Trees, _0x1DCC.TreeMode, _0x1DCC.TreeP = _0x615D,"idx","p"return true
end
end
end
return false
endfunction _0x927E.treeEntry(_0x5409, _0x6665)
local _0x615D, _0x9F6E = _0x1DCC.Trees, _0x1DCC.World
if not _0x615D or not _0x9F6E then return nil end
local _0xB364 = _0x1DCC.TreeMode or"idx"local _0x7BA0
if _0xB364 =="xy"then
_0x7BA0 = _0x615D[_0x5409 ..",".. _0x6665]
elseif _0xB364 =="rows"then
local _0x2DAE = _0x615D[_0x6665]
_0x7BA0 = type(_0x2DAE) =="table"and _0x2DAE[_0x5409] or nil
else
_0x7BA0 = _0x615D[_0x6665 * _0x9F6E.w + _0x5409]
end
if type(_0x7BA0) =="number"then return { _0xBFDC = _0x7BA0 } end
if type(_0x7BA0) ~="table"then return nil end
local _0xEA87 = _0x1DCC.TreeP or"p"if _0xEA87 ~="p"then return { _0xBFDC = rawget(_0x7BA0, _0xEA87), _0x7827 = rawget(_0x7BA0,"s") } end
return _0x7BA0
endfunction _0x927E.treeShape(_0x615D)
local _0x9F6E = _0x1DCC.World
if type(_0x615D) ~="table"or not _0x9F6E or _0x615D == _0x9F6E or rawget(_0x615D,"fg") ~= nil then return nil end
local _0xAEA8, _0x9EEB = _0x9F6E.w, _0x9F6E.h
local _0x475C, _0xE35E = pcall(function() return workspace:GetServerTimeNow() end)
if not _0x475C then _0xE35E = os.time() end
local function _0xECE5(_0x7BA0)
if type(_0x7BA0) =="number"then
return (math.abs(_0x7BA0 - _0xE35E) < 86400 * 90) and"#"or nil
end
if type(_0x7BA0) ~="table"then return nil end
local _0x94F2 = rawget(_0x7BA0,"p")
if type(_0x94F2) =="number"and math.abs(_0x94F2 - _0xE35E) < 86400 * 90 then return"p"end
for fk, fv in pairs(_0x7BA0) do
if type(fv) =="number"and math.abs(fv - _0xE35E) < 86400 * 90 then return fk end
end
return nil
end
local function _0x2B41(_0x5409, _0x6665)
local _0x05DF = _0x9F6E.fg[_0x6665]
local _0x2010 = _0x05DF and _0x05DF[_0x5409]
local _0x91CB = _0x2010 and _0xD7DB[_0x2010]
return _0x91CB ~= nil and _0x91CB.kind =="seed"end
local _0x123C, _0x0416, _0x82BA, _0xB364, _0xEA87 = 0, 0, 0, nil, nil
for _0xC0A8, _0x97A1 in pairs(_0x615D) do
_0x123C += 1
if _0x123C > 10 then break end
local _0x5409, _0x6665, _0x7BA0, _0xBF65 = nil, nil, nil, nil
if type(_0xC0A8) =="number"and _0xC0A8 % 1 == 0 and _0xC0A8 >= 0 then
if type(_0x97A1) =="table"and _0xC0A8 < _0x9EEB and _0xECE5(_0x97A1) == nil thenlocal _0x1E73, _0x323D = next(_0x97A1)
if type(_0x1E73) =="number"and _0x1E73 >= 0 and _0x1E73 < _0xAEA8 then _0x5409, _0x6665, _0x7BA0, _0xBF65 = _0x1E73, _0xC0A8, _0x323D,"rows"end
elseif _0xC0A8 < _0xAEA8 * _0x9EEB then
_0x5409, _0x6665, _0x7BA0, _0xBF65 = _0xC0A8 % _0xAEA8, _0xC0A8 // _0xAEA8, _0x97A1,"idx"end
elseif type(_0xC0A8) =="string"then
local _0xE034, _0x783C = string.match(_0xC0A8,"^(%d+),(%d+)$")
if _0xE034 then _0x5409, _0x6665, _0x7BA0, _0xBF65 = tonumber(_0xE034), tonumber(_0x783C), _0x97A1,"xy"end
end
if not _0x5409 then return nil end
if _0xB364 and _0xB364 ~= _0xBF65 then return nil end
_0xB364 = _0xBF65
local _0xD72A = _0xECE5(_0x7BA0)
if _0xD72A and _0x2B41(_0x5409, _0x6665) then
_0x0416 += 1
_0xEA87 = (_0xD72A =="#") and"p"or _0xD72A
else
_0x82BA += 1end
end
if _0x0416 == 0 or _0x82BA > _0x0416 then return nil end
return _0xB364, _0xEA87
endfunction _0x927E.findTreesDeep()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or not _0x466E then return false end
local _0xF17A, _0x4A95, _0xC820, _0xD79F = {}, {}, {}, 0
local function _0x81A7(_0x74A9)
if type(_0x74A9) =="function"and not _0x4A95[_0x74A9] then _0xF17A[#_0xF17A + 1] = _0x74A9 end
end
local function _0xAB4A(_0x615D)
if _0xC820[_0x615D] then return false end
_0xC820[_0x615D] = true
local _0xB364, _0xEA87 = _0x927E.treeShape(_0x615D)
if _0xB364 then
_0x1DCC.Trees, _0x1DCC.TreeMode, _0x1DCC.TreeP = _0x615D, _0xB364, _0xEA87
return true
end
return false
endfor _0xF439, _0x97A1 in pairs(_0x9F6E) do
if type(_0x97A1) =="table"then
if _0xAB4A(_0x97A1) then return true end
elseif type(_0x97A1) =="function"then
_0x81A7(_0x97A1)
end
endif getconnections then
for _0xF439, _0x6205 in ipairs(_0x84AE:GetChildren()) do
if _0x6205:IsA("RemoteEvent") then
local _0xF64E, _0x7FAC = pcall(getconnections, _0x6205.OnClientEvent)
if _0xF64E and type(_0x7FAC) =="table"then
for _0xF439, _0x5B56 in ipairs(_0x7FAC) do
local _0x25D4, _0x74A9 = pcall(function() return _0x5B56.Function end)
if _0x25D4 then _0x81A7(_0x74A9) end
end
end
end
end
for _0xF439, _0xDF0A in ipairs({"RenderStepped","Heartbeat","Stepped"}) do
local _0x5A8E, _0x1DA0 = pcall(function() return _0xED14[_0xDF0A] end)
local _0xF64E, _0x7FAC = pcall(getconnections, _0x1DA0)
if _0x5A8E and _0xF64E and type(_0x7FAC) =="table"then
for _0xF439, _0x5B56 in ipairs(_0x7FAC) do
local _0x25D4, _0x74A9 = pcall(function() return _0x5B56.Function end)
if _0x25D4 then _0x81A7(_0x74A9) end
end
end
end
endlocal _0x7180 = 1
while _0x7180 <= #_0xF17A and _0xD79F < 1500 do
local _0x74A9 = _0xF17A[_0x7180]
_0x7180 += 1
if not _0x4A95[_0x74A9] then
_0x4A95[_0x74A9] = true
_0xD79F += 1
for _0xF439, _0x5711 in pairs(_0x466E(_0x74A9)) do
if type(_0x5711) =="table"then
if _0xAB4A(_0x5711) then return true end
elseif type(_0x5711) =="function"then
_0x81A7(_0x5711)
end
end
end
end
return false
end
local function _0x9D4A()
return math.min(_0xF04B(), _0xA3B7())
end
local function _0x4EC7()
return _0x9715.SeedId and _0xC90B(_0x9715.SeedId) or 0
endlocal function _0x0FC9(_0x5409, _0x6665, _0x2010)
if not _0x1DCC.Trees or not _0x1DCC.World then return nil end
local _0x91CB = _0xD7DB[_0x2010]
if not (_0x91CB and _0x91CB.kind =="seed") then return nil end
local _0x615D = _0x927E.treeEntry(_0x5409, _0x6665)
if type(_0x615D) ~="table"or type(_0x615D.p) ~="number"then return nil end
return _0x615D.p + (_0x91CB.grow or 0)
endlocal function _0x0BE0(_0x5409, _0x6665, seedId)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or _0x5409 < 0 or _0x6665 < 0 or _0x5409 >= _0x9F6E.w or _0x6665 + 1 >= _0x9F6E.h then return false end
if _0xD509(_0x5409, _0x6665) ~= 0 then return false end
local _0xB87A = _0xD509(_0x5409, _0x6665 + 1)
if _0xB87A == 0 then return false end
local _0x91CB = _0xD7DB[_0xB87A]
if not _0x91CB or _0x91CB.kind =="seed"then return false end
if not (_0x03ED(_0x5409, _0x6665 + 1) or _0x91CB.platform) then return false end
local _0xF64E, _0xD6CD = pcall(function()
if _0x9F6E.areas and type(_0x9F6E.areas.canEdit) =="function"and not _0x9F6E.areas.canEdit(_0x5409, _0x6665) then return false end
if type(_0x9F6E.builderOk) =="function"and not _0x9F6E.builderOk(_0x5409, _0x6665, true) then return false end
local _0x2A60 = seedId or _0x9715.SeedId
local _0xE60E = _0x2A60 and _0xD7DB[_0x2A60]
if _0xE60E and type(_0x9F6E.needsWay) =="function"and _0x9F6E.needsWay(_0xE60E)
and type(_0x9F6E.wayBlocked) =="function"and _0x9F6E.wayBlocked(_0x5409, _0x6665) then
return false
end
return true
end)
return (not _0xF64E) or _0xD6CD
endlocal _0x6EC8 = nil
local function _0xA667()
return {
_0xC634 = function() return _0x9715.Running end,
_0x8993 = _0x9715.Harvest,
_0x059F = _0x9715.Plant and not _0x9715.HarvestOnly,
focusHarvest = _0x9715.HarvestOnly == true,
_0xE60E = _0x9715.SeedId,
_0xD3D6 = _0x9715.Skip,
hms = _0x9715.HarvestMs,
pms = _0x9715.PlantMs,
_0x147F = nil,_0x97D4 = nil,exclude = nil,_0x05DF = nil,batch = true,sweepPlant = true,_0x14EE = _0x9715.Collect,_0x7FF7 = function(_0x615D) _0x9715.Status = _0x615D end,
onHarvest = function(_0x2010)
_0x9715.Harvested += 1
if _0x2010 then _0x9715.Got[_0x2010] = true end
end,
onPlant = function() _0x9715.Planted += 1 end,
}
end
local function _0xB73F()
return _0x6EC8.seed and _0xC90B(_0x6EC8.seed) or 0
end
local function _0x0EE0(_0x5409, _0x6665)
return _0x6EC8.harvest and (not _0x6EC8.area or _0x6EC8.area(_0x5409, _0x6665))
end
local function _0xFD93(_0xB9E8)
return (not _0x6EC8.plantSet or _0x6EC8.plantSet[_0xB9E8]) and not (_0x6EC8.exclude and _0x6EC8.exclude[_0xB9E8])
end
local function _0xD64B(_0x5409, _0x6665)
local _0x2010 = _0x6EC8.seed
if not _0x2010 or _0xC90B(_0x2010) <= 0 then return false end
_0xBF1A("fg", _0x5409, _0x6665, _0x2010)
if _0x1DCC.Inv then pcall(function() _0x1DCC.Inv:remove(_0x2010, 1) end) end
_0x6EC8.onPlant()
_0x6EC8.status("Tanam ".. _0x949D(_0x2010) .." (".. _0x5409 ..",".. _0x6665 ..")")
return true
endfunction _0x38E9.harvestTree(_0x5409, _0x6665, _0x2010, _0xDD5D)
for attempt = 1, 3 do
if not _0x6EC8.run() or not _0xCA76() then return false,"cancelled"end
local _0x7827 = _0x4C2C()
if not _0x7827 or not _0xF81F(_0x7827, _0x5409, _0x6665, _0xDD5D) then return false,"range"end
if _0xD509(_0x5409, _0x6665) ~= _0x2010 then return false,"changed"end
local _0xAF6E = _0x0FC9(_0x5409, _0x6665, _0x2010)
if not _0xAF6E or workspace:GetServerTimeNow() < _0xAF6E then return false,"changed"end
local _0xE2E6 = _0xE0BA(_0x5409, _0x6665, false)
if _0xE2E6 =="broke"then return true end
if _0xE2E6 ~="hit"then return false,"punch"end
local _0xE7AB = os.clock() + 0.45
repeat
task.wait(0.05)
if not _0x6EC8.run() or not _0xCA76() then return false,"cancelled"end
if _0xD509(_0x5409, _0x6665) ~= _0x2010 then
_0x2FB0.brokeAt[_0x5409 ..",".. _0x6665] = os.clock()
_0x5D82.Broken += 1
return true
end
until os.clock() >= _0xE7AB
end
return false,"unchanged"endfunction _0x38E9.farmerAreaTargets(_0x7827, _0x8B4B, _0x7B06)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or not _0x7827 then return {}, 0 end
local _0x8C9D = _0x8B4B =="harvest"local _0xDD5D = (_0x8C9D and _0xF04B() or _0xA3B7()) - 0.08
local _0x1700, _0x212D, _0x026D = _0x7827.x, _0x7827.y - 0.475, {}
local _0x4DD4, _0xE35E = os.clock(), workspace:GetServerTimeNow()
for _0x6665 = math.max(0, _0x4748(_0x212D - _0xDD5D - 0.5)), math.min(_0x9F6E.h - 1, _0x4748(_0x212D + _0xDD5D + 0.5)) do
for _0x5409 = math.max(0, _0x4748(_0x1700 - _0xDD5D - 0.5)), math.min(_0x9F6E.w - 1, _0x4748(_0x1700 + _0xDD5D + 0.5)) do
local _0xB9E8 = _0x6665 * _0x9F6E.w + _0x5409
if _0xF81F(_0x7827, _0x5409, _0x6665, _0xDD5D) and not _0x7188(_0x7B06.skip, _0xB9E8, _0x4DD4) then
local _0x2010 = _0xD509(_0x5409, _0x6665)
if _0x8C9D and _0x7B06.harvest and _0x2010 ~= 0 and (not _0x7B06.only or _0x2010 == _0x7B06.only)
and (not _0x7B06.area or _0x7B06.area(_0x5409, _0x6665)) then
local _0xAF6E = _0x0FC9(_0x5409, _0x6665, _0x2010)if _0xAF6E and _0xE35E >= _0xAF6E and (_0x7B06.focusHarvest or _0x38E9.los(_0x4748(_0x1700), _0x4748(_0x212D), _0x5409, _0x6665)) then
if _0xFA64(_0x5409, _0x6665) then
_0x026D[#_0x026D + 1] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0xB9E8, _0x2010 = _0x2010, _0x46A4 = _0xAF6E }
else
_0xED30(_0x7B06.skip, _0xB9E8, 120)
end
end
elseif not _0x8C9D and _0x7B06.plant and _0x2010 == 0
and (not _0x7B06.plantSet or _0x7B06.plantSet[_0xB9E8])
and (not _0x7B06.exclude or not _0x7B06.exclude[_0xB9E8])
and not (_0x7B06.sweepPlant and _0x9715.PlantRoute
and _0x9715.PlantRoute.world == _0x9F6E and _0x9715.PlantRoute.seed == _0x7B06.seed
and (_0x9715.PlantRoute.pending[_0xB9E8] or 0) > _0x4DD4)
and _0x0BE0(_0x5409, _0x6665, _0x7B06.seed) then
_0x026D[#_0x026D + 1] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0xB9E8 }
end
end
end
end
table.sort(_0x026D, function(_0xE034, _0x783C)
if _0x8C9D and _0xE034.readyAt ~= _0x783C.readyAt then return _0xE034.readyAt < _0x783C.readyAt end
if _0xE034.y ~= _0x783C.y then return _0xE034.y < _0x783C.y end
return _0xE034.x < _0x783C.x
end)
return _0x026D, _0xDD5D
endfunction _0x38E9.farmerArea(_0x7827)
local _0x7B06, _0x9F6E = _0x6EC8, _0x1DCC.World
local function _0x962E()
return _0x6EC8 == _0x7B06 and _0x7B06.run() and _0xCA76() and _0x1DCC.World == _0x9F6E
end
if not _0x962E() then return 0 end
local _0x8993, _0x6983 = _0x38E9.farmerAreaTargets(_0x7827,"harvest", _0x7B06)
local _0xDA2F, _0x8F87 = os.clock(), os.clock()
local _0xC49C, _0xB5AC, _0x841A, _0x5F39 = 0, 0, 0, 0
_0x9715.BatchHarvest, _0x9715.BatchPlanted = 0, 0
local function _0xBA37(_0x615D)
if _0x615D.finished then return end
_0x615D.finished = true
_0xB5AC += 1
_0x9715.BatchHarvest = _0xB5AC
_0x5D82.Broken += 1
_0x2FB0.brokeAt[_0x615D.x ..",".. _0x615D.y] = os.clock()
_0x7B06.onHarvest(_0x615D.id)
end
for round = 1, 3 do
for _0xF439, _0x615D in ipairs(_0x8993) do
if not _0x962E() then return _0xC49C end
if not _0x615D.finished then
local _0x5A8C = _0x4C2C()
local _0xAF6E = _0x0FC9(_0x615D.x, _0x615D.y, _0x615D.id)
if _0x615D.sent and _0xD509(_0x615D.x, _0x615D.y) ~= _0x615D.id then
_0xBA37(_0x615D)
elseif not _0x5A8C or _0x5A8C.dead or not _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0x6983)
or _0xD509(_0x615D.x, _0x615D.y) ~= _0x615D.id or _0xAF6E ~= _0x615D.readyAt
or workspace:GetServerTimeNow() < _0xAF6E then
_0x615D.finished = true
elseif _0x7B06.focusHarvest and os.clock() < _0x8F87 then
if not _0x3422((_0x8F87 - os.clock()) * 1000) then return _0xC49C end
if not _0x962E() then return _0xC49C end
end
local _0x9344 = _0x1DCC.Punch
_0x5A8C = _0x4C2C()
_0xAF6E = _0x0FC9(_0x615D.x, _0x615D.y, _0x615D.id)
if not _0x5A8C or _0x5A8C.dead or not _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0x6983)
or _0xD509(_0x615D.x, _0x615D.y) ~= _0x615D.id or _0xAF6E ~= _0x615D.readyAt
or workspace:GetServerTimeNow() < _0xAF6E then
_0x615D.finished = true
else
local _0xF64E = type(_0x9344) =="function"if _0xF64E then
_0xF64E = pcall(_0x9344, _0x615D.x, _0x615D.y, _0x5D82.MutePunch or nil, nil)
_0xC49C += 1
if _0x7B06.focusHarvest then _0x8F87 = os.clock() + 0.22 end
end
if _0xF64E then
_0x615D.sent = true
if _0x5D82.Visual and _0x7FB6.swing then _0x7FB6.swing(_0x615D.x, _0x615D.y,"punch") end
if _0xD509(_0x615D.x, _0x615D.y) ~= _0x615D.id then _0xBA37(_0x615D) end
else
_0x615D.finished = true
_0x5F39 += 1
_0xED30(_0x7B06.skip, _0x615D.idx, 3)
end
end
end
end
end
local _0xE7AB = os.clock() + 0.45
while _0x962E() do
local _0x8A37 = false
for _0xF439, _0x615D in ipairs(_0x8993) do
if _0x615D.sent and not _0x615D.finished then
if _0xD509(_0x615D.x, _0x615D.y) ~= _0x615D.id then _0xBA37(_0x615D) else _0x8A37 = true end
end
end
if not _0x8A37 or os.clock() >= _0xE7AB then break end
task.wait(0.05)
end
local _0x8A37 = false
for _0xF439, _0x615D in ipairs(_0x8993) do if not _0x615D.finished then _0x8A37 = true; break end end
if not _0x8A37 then break end
end
if not _0x962E() then return _0xC49C end
for _0xF439, _0x615D in ipairs(_0x8993) do
if not _0x615D.finished then
_0x5F39 += 1
_0xED30(_0x7B06.skip, _0x615D.idx, 3)
end
end
if #_0x8993 > 0 then
local _0x75B3 = _0x7B06.hms
if _0x7B06.focusHarvest then _0x75B3 = _0x75B3 - (os.clock() - _0xDA2F) * 1000 end
if _0x75B3 > 0 and not _0x3422(_0x75B3) then return _0xC49C end
end
if not _0x962E() then return _0xC49C endlocal _0x059F, _0x2F86 = _0x38E9.farmerAreaTargets(_0x4C2C(),"plant", _0x7B06)
for _0xF439, _0x615D in ipairs(_0x059F) do
if not _0x962E() then return _0xC49C end
if not _0x7B06.seed or _0xC90B(_0x7B06.seed) <= 0 then break end
local _0x5A8C = _0x4C2C()
if _0x5A8C and not _0x5A8C.dead and _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0x2F86)
and _0x0BE0(_0x615D.x, _0x615D.y, _0x7B06.seed) then
_0xC49C += 1
if _0xBF1A("fg", _0x615D.x, _0x615D.y, _0x7B06.seed) then
if _0x1DCC.Inv then pcall(function() _0x1DCC.Inv:remove(_0x7B06.seed, 1) end) end
_0x7B06.onPlant()
_0x841A += 1
_0x9715.BatchPlanted = _0x841A
if _0x7B06.sweepPlant then
local _0xD4B8 = _0x38E9.farmerPlantState(_0x7B06)
_0xD4B8.pending[_0x615D.idx] = os.clock() + 1
_0xD4B8.nextPulseAt = os.clock() + math.max(0.14, (_0x7B06.pms or 250) / 1000)
end
else
_0x5F39 += 1
_0xED30(_0x7B06.skip, _0x615D.idx, 3)
end
end
end
if _0x841A > 0 and not _0x3422(_0x7B06.pms) then return _0xC49C end
if not _0x962E() then return _0xC49C end
if _0xC49C > 0 or _0x5F39 > 0 then
_0x7B06.status(("Area: panen %d/%d | tanam %d%s"):format(_0xB5AC, #_0x8993, _0x841A,
_0x5F39 > 0 and (" | %d belum berhasil, dicoba lagi"):format(_0x5F39) or""))
end
if _0xB5AC > 0 and _0x7B06.collect then
if _0x7B06.focusHarvest thentask.wait(0.1)
else
task.wait(0.25)
if not _0x962E() then return _0xC49C end
local _0x212D = _0x7827.y - 0.475
_0x38E9.fetchDrops(_0x962E, 8, function(_0x2DDF) return _0xFE2A(_0x2DDF.y - _0x212D) <= 1.6 end, 10)
end
end
return _0xC49C
endlocal function _0xB615(_0x7827)
if _0x6EC8.batch then return _0x38E9.farmerArea(_0x7827) end
local _0x9F6E = _0x1DCC.World
local _0xAEA8 = _0x9F6E.w
local _0xDD5D = _0x9D4A() - 0.08
local _0x1700, _0x212D = _0x7827.x, _0x7827.y - 0.475
local _0x4DD4 = os.clock()
local _0xE35E = workspace:GetServerTimeNow()
local _0x3BD8 = _0x6EC8.plant and _0xB73F() > 0
local _0x8993, _0x059F = {}, {}
local _0x7799, _0xD8EE = _0x4748(_0x7827.x), _0x4748(_0x212D)
for _0x6912 = math.max(0, _0x4748(_0x212D - _0xDD5D - 0.5)), math.min(_0x4748(_0x212D + _0xDD5D + 0.5), _0x9F6E.h - 1) do
for _0x574E = math.max(0, _0x4748(_0x1700 - _0xDD5D - 0.5)), math.min(_0x4748(_0x1700 + _0xDD5D + 0.5), _0xAEA8 - 1) do
if _0xF81F(_0x7827, _0x574E, _0x6912, _0xDD5D) then
local _0xB9E8 = _0x6912 * _0xAEA8 + _0x574E
if not _0x7188(_0x6EC8.skip, _0xB9E8, _0x4DD4) then
local _0x2010 = _0xD509(_0x574E, _0x6912)
if _0x2010 ~= 0 and _0x0EE0(_0x574E, _0x6912) and (not _0x6EC8.only or _0x2010 == _0x6EC8.only) then
local _0xAF6E = _0x0FC9(_0x574E, _0x6912, _0x2010)
if _0xAF6E and _0xE35E >= _0xAF6E and _0x38E9.los(_0x7799, _0xD8EE, _0x574E, _0x6912) then
if _0xFA64(_0x574E, _0x6912) then
_0x8993[#_0x8993 + 1] = { _0x5409 = _0x574E, _0x6665 = _0x6912, _0xB9E8 = _0xB9E8, _0x2010 = _0x2010, _0x46A4 = _0xAF6E }
else
_0xED30(_0x6EC8.skip, _0xB9E8, 120)
end
end
elseif _0x3BD8 and _0x2010 == 0 and _0xFD93(_0xB9E8) and (not _0x6EC8.row or _0x6EC8.row.y == _0x6912)
and _0x0BE0(_0x574E, _0x6912, _0x6EC8.seed) then
_0x059F[#_0x059F + 1] = { _0x5409 = _0x574E, _0x6665 = _0x6912, _0xB9E8 = _0xB9E8 }
end
end
end
end
end
local function _0xFE41(_0xE034, _0x783C)
if _0xE034.x ~= _0x783C.x then return _0xE034.x < _0x783C.x end
return _0xE034.y < _0x783C.y
end
table.sort(_0x8993, function(_0xE034, _0x783C)
if _0xE034.readyAt ~= _0x783C.readyAt then return _0xE034.readyAt < _0x783C.readyAt end
return _0xFE41(_0xE034, _0x783C)
end)
table.sort(_0x059F, _0xFE41)
local _0xC49C, _0xB5AC = 0, 0
for _0xF439, _0x615D in ipairs(_0x8993) do
if not _0x6EC8.run() or not _0xCA76() then return _0xC49C end
local _0x5A8C = _0x4C2C()
if not _0x5A8C or not _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0xDD5D) then break end
local _0x2010 = _0x615D.id
local _0x6DDA, _0x3330 = _0x38E9.harvestTree(_0x615D.x, _0x615D.y, _0x2010, _0xDD5D)
if _0x6DDA then
_0x6EC8.onHarvest(_0x2010)
_0xB5AC += 1
_0x6EC8.status("Panen ".. _0x949D(_0x2010) .." (".. _0x615D.x ..",".. _0x615D.y ..")")
else
if _0x3330 =="cancelled"or _0x3330 =="range"then return _0xC49C end
if _0x3330 ~="changed"then
_0xED30(_0x6EC8.skip, _0x615D.idx, 3)
_0x6EC8.status(_0x3330 =="punch"and"Pukul gagal; tekan Hubungkan ke game"or"Panen belum dikonfirmasi game, dicoba lagi")
end
end
_0xC49C += 1
if not _0x3422(_0x6EC8.hms) then return _0xC49C end
endif _0xB5AC > 0 and _0x6EC8.collect then
_0x6EC8.status("Ambil hasil panen...")
task.wait(0.25)if not _0x6EC8.run() or not _0xCA76() then return _0xC49C endif _0x38E9.fetchDrops(_0x6EC8.run, 8, function(_0x2DDF) return _0xFE2A(_0x2DDF.y - _0x212D) <= 1.6 end, 10) > 0 then return _0xC49C end
end
for _0xF439, _0x615D in ipairs(_0x059F) do
if not _0x6EC8.run() or not _0xCA76() then return _0xC49C end
if _0x6EC8.yieldHarvest and _0x6EC8.yieldHarvest() then return _0xC49C end
if _0xB73F() <= 0 then break end
local _0x5A8C = _0x4C2C()
if not _0x5A8C or not _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0xDD5D) then return _0xC49C end
if _0xD509(_0x615D.x, _0x615D.y) == 0 then
if not _0xD64B(_0x615D.x, _0x615D.y) then break end
_0xC49C += 1
if not _0x3422(_0x6EC8.pms) then return _0xC49C end
end
end
return _0xC49C
endfunction _0x38E9.farmerPlantState(_0x7B06)
local _0x2DAE = _0x9715.PlantRoute
if not _0x2DAE or _0x2DAE.world ~= _0x1DCC.World or _0x2DAE.seed ~= _0x7B06.seed then
_0x2DAE = { _0x954B = _0x1DCC.World, _0xE60E = _0x7B06.seed, _0x8A37 = {}, nextPulseAt = 0 }
_0x9715.PlantRoute = _0x2DAE
end
return _0x2DAE
endfunction _0x38E9.farmerPlantTarget(_0x7B06, _0x026D, _0x50CF, _0x789A)
local _0x2DAE, _0x44B7 = _0x38E9.farmerPlantState(_0x7B06), {}
local _0x4DD4 = os.clock()
for _0xF439, _0x615D in ipairs(_0x026D) do
if (_0x2DAE.pending[_0x615D.idx] or 0) <= _0x4DD4 and _0x0BE0(_0x615D.x, _0x615D.y, _0x7B06.seed) then
_0x44B7[#_0x44B7 + 1] = _0x615D
end
end
if #_0x44B7 == 0 then return nil end
local _0x6665, _0x25C5, _0xA98F = _0x44B7[1].y, _0x44B7[1], _0x44B7[#_0x44B7]
if _0x6665 ~= _0x789A then
local _0x7ADC = _0xFE2A(_0x25C5.x - _0x50CF) <= _0xFE2A(_0xA98F.x - _0x50CF) and _0x25C5 or _0xA98F
_0x2DAE.y, _0x2DAE.dir = _0x6665, _0x7ADC == _0x25C5 and 1 or -1
return _0x7ADC
end
if _0x2DAE.y ~= _0x6665 or not _0x2DAE.dir then
local _0x7827 = _0x4C2C()
_0x2DAE.y, _0x2DAE.dir = _0x6665, (_0x7827 and (_0x7827.facing or 1) < 0) and -1 or 1
end
local _0x590D, _0x4012 = _0x50CF, _0x50CF
while _0x590D > 0 and _0x99A4(_0x590D - 1, _0x6665) and _0xBE6D(_0x590D - 1, _0x6665) do _0x590D -= 1 end
while _0x4012 + 1 < _0x2DAE.world.w and _0x99A4(_0x4012 + 1, _0x6665) and _0xBE6D(_0x4012 + 1, _0x6665) do _0x4012 += 1 end
for turn = 1, 2 do
local _0x0E6E
for _0xF439, _0x615D in ipairs(_0x44B7) do
if _0x615D.x >= _0x590D and _0x615D.x <= _0x4012 and (_0x615D.x - _0x50CF) * _0x2DAE.dir >= 0
and (not _0x0E6E or (_0x615D.x - _0x0E6E.x) * _0x2DAE.dir > 0) then _0x0E6E = _0x615D end
end
if _0x0E6E then return _0x0E6E end
if turn == 1 then _0x2DAE.dir = -_0x2DAE.dir end
endlocal _0x0754
for _0xF439, _0x615D in ipairs(_0x44B7) do
if not _0x0754 or _0xFE2A(_0x615D.x - _0x50CF) < _0xFE2A(_0x0754.x - _0x50CF) then _0x0754 = _0x615D end
end
_0x2DAE.dir = _0x0754.x >= _0x50CF and 1 or -1
return _0x0754
endfunction _0x38E9.farmerPlantPulse(_0x7B06, _0x2DAE)
local function _0x962E()
return _0x6EC8 == _0x7B06 and _0x7B06.run() and _0xCA76() and _0x1DCC.World == _0x2DAE.world
and _0x9715.Plant and not _0x9715.HarvestOnly and _0x9715.SeedId == _0x7B06.seed
end
if not _0x962E() or not _0x7B06.plant or not _0x7B06.seed or os.clock() < _0x2DAE.nextPulseAt then return 0 end
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead or not _0x7827.grounded then return 0 end
_0x2DAE.nextPulseAt = os.clock() + math.max(0.14, (_0x7B06.pms or 250) / 1000)
local _0xAF1F, _0xDD5D = _0x38E9.farmerAreaTargets(_0x7827,"plant", _0x7B06)
local _0x789A = _0x4748(_0x7827.y - 0.475)
table.sort(_0xAF1F, function(_0xE034, _0x783C)
local _0x2985, _0xD8EE = _0xFE2A(_0xE034.y - _0x789A), _0xFE2A(_0x783C.y - _0x789A)
if _0x2985 ~= _0xD8EE then return _0x2985 < _0xD8EE end
if _0xE034.x ~= _0x783C.x then return (_0xE034.x - _0x783C.x) * (_0x2DAE.dir or 1) < 0 end
return _0xE034.y < _0x783C.y
end)
local _0x841A = 0
for _0xF439, _0x615D in ipairs(_0xAF1F) do
if not _0x962E() or _0xC90B(_0x7B06.seed) <= 0 then break end
local _0x5A8C = _0x4C2C()
if _0x5A8C and _0x5A8C.grounded and not _0x5A8C.dead and _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0xDD5D)
and (_0x2DAE.pending[_0x615D.idx] or 0) <= os.clock() and _0x0BE0(_0x615D.x, _0x615D.y, _0x7B06.seed) then
if _0xBF1A("fg", _0x615D.x, _0x615D.y, _0x7B06.seed) then
_0x2DAE.pending[_0x615D.idx] = os.clock() + 1
if _0x1DCC.Inv then pcall(function() _0x1DCC.Inv:remove(_0x7B06.seed, 1) end) end
_0x7B06.onPlant()
_0x841A += 1
else
_0xED30(_0x7B06.skip, _0x615D.idx, 3)
end
end
end
if _0x841A > 0 then
_0x9715.BatchPlanted = _0x841A
_0x7B06.status(("Tanam sambil jalan: %d tile | seed %d"):format(_0x841A, _0xC90B(_0x7B06.seed)))
end
return _0x841A
endfunction _0x38E9.farmerPlantReady(_0x7B06)
if not _0x7B06.harvest then return false end
local _0x9F6E, _0x4DD4, _0xE35E = _0x1DCC.World, os.clock(), workspace:GetServerTimeNow()
if not _0x9F6E then return false end
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return false end
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0xEFC3 = _0x8DF8(_0x79D3 * _0x9F6E.w + _0x6D99, _0xF04B() - 0.35, _0x3AE9() ~= nil)
for _0x6665, _0x05DF in pairs(_0x9F6E.fg) do
if type(_0x6665) =="number"and type(_0x05DF) =="table"then
for _0x5409, _0x2010 in pairs(_0x05DF) do
if type(_0x5409) =="number"and _0x2010 ~= 0 and not _0x7188(_0x7B06.skip, _0x6665 * _0x9F6E.w + _0x5409, _0x4DD4)
and (not _0xEFC3 or _0xEFC3[_0x6665 * _0x9F6E.w + _0x5409])
and (not _0x7B06.only or _0x2010 == _0x7B06.only) and (not _0x7B06.area or _0x7B06.area(_0x5409, _0x6665)) then
local _0x46A4 = _0x0FC9(_0x5409, _0x6665, _0x2010)
if _0x46A4 and _0xE35E >= _0x46A4 and _0xFA64(_0x5409, _0x6665) then return true end
end
end
end
end
return false
endfunction _0x38E9.farmerPlantWalk(_0x574E, _0x6912, _0x7B06, _0x2DAE, _0x4C8B)
local _0x57E7 = _0x4C2C()
if not _0x57E7 then return false end
local _0x1700, _0xC4F6 = _0x574E + 0.5, os.clock()
local _0xF661 = 1.5 + _0xFE2A(_0x1700 - _0x57E7.x) * 0.5
while _0x35B0() do
if _0x4C8B() then _0x0D00(); return false,"cancelled"end
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead or not _0x7827.grounded or _0x4748(_0x7827.y - 0.475) ~= _0x6912 then
_0x0D00(); return false,"moved"end
_0x38E9.farmerPlantPulse(_0x7B06, _0x2DAE)
if _0x4C8B() then _0x0D00(); return false,"cancelled"end
if _0xFE2A(_0x7827.x - _0x1700) <= 0.2 and _0xFE2A(_0x7827.vx or 0) < 2 then
_0x0D00(); return true
end
local _0xEC2F = _0x1700 > _0x7827.x and 1 or -1
local _0xC43D = math.clamp(_0x4748(_0x7827.x + _0xEC2F * 0.55), math.min(_0x4748(_0x7827.x), _0x574E), math.max(_0x4748(_0x7827.x), _0x574E))
if not _0x99A4(_0xC43D, _0x6912) or not _0xBE6D(_0xC43D, _0x6912) then
_0x0D00(); return false,"blocked"end
_0x2DCC(_0x7827, _0x1700, 0.1)
if os.clock() - _0xC4F6 > _0xF661 then _0x0D00(); return false,"timeout"end
end
_0x0D00()
return false,"cancelled"endlocal function _0x9E7D(_0x50CF, _0x789A, maxN, _0xEFC3)
local _0x9F6E = _0x1DCC.World
local _0xAEA8, _0x9EEB = _0x9F6E.w, _0x9F6E.h
local _0x0E6E = {}
local _0x4DD4 = os.clock()
local _0xE35E = workspace:GetServerTimeNow()
local _0x1AB5 = nil
local function _0x17D2(_0xE034, _0x783C)
if _0x6EC8.focusHarvest and _0xE034.d ~= _0x783C.d then return _0xE034.d < _0x783C.d end
if _0xE034.readyAt ~= _0x783C.readyAt then return _0xE034.readyAt < _0x783C.readyAt end
if _0xE034.d ~= _0x783C.d then return _0xE034.d < _0x783C.d end
return _0xE034.idx < _0x783C.idx
end
local _0x3BD8 = _0x6EC8.plant and _0xB73F() > 0
local _0x7D85 = {}local _0x8BE9 = 0
for _0x6665 = 0, _0x9EEB - 1 do
local _0x8159, _0xB87A = _0x9F6E.fg[_0x6665], _0x9F6E.fg[_0x6665 + 1]
for _0x5409 = 0, _0xAEA8 - 1 do
local _0x2010 = _0x8159 and _0x8159[_0x5409] or 0
if _0x2010 ~= 0 then
if _0x0EE0(_0x5409, _0x6665) and (not _0x6EC8.only or _0x2010 == _0x6EC8.only) then
local _0xAF6E = _0x0FC9(_0x5409, _0x6665, _0x2010)
if _0xAF6E and _0xE35E >= _0xAF6E then
local _0xB9E8 = _0x6665 * _0xAEA8 + _0x5409
if not _0x7188(_0x6EC8.skip, _0xB9E8, _0x4DD4) then
if not _0xEFC3 or _0xEFC3[_0xB9E8] then
local _0x935C, _0x15BA = _0x5409 - _0x50CF, (_0x6665 - _0x789A) * 1.3
local _0x2DDF = _0x935C * _0x935C + _0x15BA * _0x15BA
local _0x81CA = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0xB9E8, _0x2DDF = _0x2DDF, _0x8B4B ="harvest", _0x46A4 = _0xAF6E }
if #_0x0E6E < maxN or _0x17D2(_0x81CA, _0x0E6E[#_0x0E6E]) then
if _0xFA64(_0x5409, _0x6665) then
local _0x95CF = #_0x0E6E + 1
while _0x95CF > 1 and _0x17D2(_0x81CA, _0x0E6E[_0x95CF - 1]) do _0x95CF -= 1 end
table.insert(_0x0E6E, _0x95CF, _0x81CA)
if #_0x0E6E > maxN then _0x0E6E[#_0x0E6E] = nil end
else
_0xED30(_0x6EC8.skip, _0xB9E8, 120)
end
end
end
end
elseif _0xAF6E and (not _0x1AB5 or _0xAF6E - _0xE35E < _0x1AB5) then
_0x1AB5 = _0xAF6E - _0xE35E
end
end
elseif _0x3BD8 then
local _0x783C = _0xB87A and _0xB87A[_0x5409] or 0
local _0xB9E8 = _0x6665 * _0xAEA8 + _0x5409
if _0x783C ~= 0 and _0xFD93(_0xB9E8) and not _0x7188(_0x6EC8.skip, _0xB9E8, _0x4DD4) then
if not _0xEFC3 or _0xEFC3[_0xB9E8] then
local _0x2DAE = _0x7D85[_0x6665]
if not _0x2DAE then
_0x2DAE = {}
_0x7D85[_0x6665] = _0x2DAE
end
_0x2DAE[#_0x2DAE + 1] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0xB9E8, _0x8B4B ="plant"}
end
end
end
end
_0x8BE9 += _0xAEA8
if _0x8BE9 >= 6000 then
_0x8BE9 = 0
task.wait()
if not _0x6EC8.run() or not _0xCA76() then break end
end
end
if #_0x0E6E > 0 or not _0x3BD8 then return _0x0E6E, _0x1AB5 endlocal _0xAC11 = _0x6EC8.sweepPlant and _0x38E9.farmerPlantState(_0x6EC8).y or (_0x6EC8.row and _0x6EC8.row.y)
local _0x16BF = {}
for _0x6665 in pairs(_0x7D85) do _0x16BF[#_0x16BF + 1] = _0x6665 end
local function _0xC23A(_0x6665) return (_0x6665 == _0xAC11) and -1 or math.abs(_0x6665 - _0x789A) end
table.sort(_0x16BF, function(_0xE034, _0x783C)
local _0x7540, _0xEB64 = _0xC23A(_0xE034), _0xC23A(_0x783C)
if _0x7540 ~= _0xEB64 then return _0x7540 < _0xEB64 end
return _0xE034 < _0x783C
end)
for _0xF439, _0x6665 in ipairs(_0x16BF) do
local _0x026D = _0x7D85[_0x6665]
table.sort(_0x026D, function(_0xE034, _0x783C) return _0xE034.x < _0x783C.x end)if _0x6EC8.sweepPlant then
local _0x81CA = _0x38E9.farmerPlantTarget(_0x6EC8, _0x026D, _0x50CF, _0x789A)
if _0x81CA then return { _0x81CA }, _0x1AB5 end
else
for _0xF439, _0x615D in ipairs(_0x026D) do
if _0x0BE0(_0x615D.x, _0x615D.y, _0x6EC8.seed) then
if _0x6EC8.row then _0x6EC8.row.y = _0x6665 end
return { _0x615D }, _0x1AB5
end
_0xED30(_0x6EC8.skip, _0x615D.idx, 120)
end
end
end
if _0x6EC8.row then _0x6EC8.row.y = nil end
return _0x0E6E, _0x1AB5
end
function _0x38E9.farmerPlantTravel(_0x7827, _0x7B06, _0x81CA, _0x4BC0)
local _0x9F6E, _0x2DAE = _0x1DCC.World, _0x38E9.farmerPlantState(_0x7B06)
local _0x3330, _0x433E = nil, 0
local function _0x4C8B()
if _0x6EC8 ~= _0x7B06 or not _0x7B06.run() or not _0xCA76() or _0x1DCC.World ~= _0x9F6E
or not _0x9715.Plant or _0x9715.HarvestOnly or _0x9715.SeedId ~= _0x7B06.seed then
_0x3330 ="wait"; return true
end
if _0xC90B(_0x7B06.seed) <= 0 then _0x3330 ="work"; return true end
if os.clock() >= _0x433E then
_0x433E = os.clock() + 0.25
if _0x38E9.farmerPlantReady(_0x7B06) then _0x3330 ="harvest"; return true end
end
return false
end
if _0x4C8B() then _0x0D00(); return _0x3330 end
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0x1636 = { [_0x81CA.idx] = true }
local _0x715C = _0x251E(_0x6D99, _0x79D3, _0x1636, _0x81CA.x, _0x81CA.y, 0.5, _0x4BC0)
if _0x4C8B() then _0x0D00(); return _0x3330 end
if not _0x715C thenlocal _0x418F = { _0x81CA, _0x4C8B = _0x4C8B }
_0x958B(_0x6D99, _0x79D3, _0x418F, _0xA3B7() - 0.35, _0x4BC0, _0x7B06.skip, _0x4D85)
_0x0D00()
return _0x3330 or"move"end
_0x7B06.status(("Tanam sambil jalan ke (%d,%d)"):format(_0x81CA.x, _0x81CA.y))
_0x38E9.farmerPlantPulse(_0x7B06, _0x2DAE)
local _0x7180 = 1
while _0x7180 <= #_0x715C do
if _0x4C8B() then _0x0D00(); return _0x3330 end
local _0x7BA0, _0xA98F, _0xF64E, _0x3B8B = _0x715C[_0x7180], _0x7180, false, nil
if _0x7BA0.kind =="walk"and not _0x7BA0.build then
local _0xEC2F = _0x7BA0.x - _0x7BA0.fx
while _0x715C[_0xA98F + 1] and _0x715C[_0xA98F + 1].kind =="walk"and not _0x715C[_0xA98F + 1].build
and _0x715C[_0xA98F + 1].y == _0x7BA0.y and (_0x715C[_0xA98F + 1].x - _0x715C[_0xA98F + 1].fx) == _0xEC2F do
_0xA98F += 1
end
_0x2DAE.dir = _0xEC2F
_0xF64E, _0x3B8B = _0x38E9.farmerPlantWalk(_0x715C[_0xA98F].x, _0x7BA0.y, _0x7B06, _0x2DAE, _0x4C8B)
else
_0xF64E, _0x3B8B = _0x0ADD({ _0x7BA0 }, _0x4C8B)
if not _0x4C8B() then _0x38E9.farmerPlantPulse(_0x7B06, _0x2DAE) end
end
_0x0D00()
if _0x4C8B() or _0x3B8B =="cancelled"then return _0x3330 or"wait"end
if not _0xF64E then
if _0x7BA0.key then _0x43C8[_0x7BA0.key] = os.clock() + 3 end
_0xED30(_0x7B06.skip, _0x81CA.idx, 3)
return"move"end
_0x7180 = _0xA98F + 1
end
_0x0D00()
return"move"endfunction _0x38E9.farmerGroupRoute(_0x7827, _0x7B06, _0xAF1F, _0x5219, _0x4BC0)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or not _0x7B06.focusHarvest or #_0xAF1F < 2 then return false end
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0xDD5D = _0xF04B() - 0.08
local _0x6C16, _0x8CE5, _0xF148 = _0x7DC4(_0xDD5D)
local _0x7857, _0xD28A = {}, _0x5219[1] and _0x5219[1].idx
for _0xF439, _0x615D in ipairs(_0xAF1F) do
local _0x2010 = _0xD509(_0x615D.x, _0x615D.y)
local _0xAF6E = _0x0FC9(_0x615D.x, _0x615D.y, _0x2010)
if _0xAF6E and workspace:GetServerTimeNow() >= _0xAF6E and not _0x7188(_0x7B06.skip, _0x615D.idx) then
for _0x2351 = math.max(0, _0x615D.y - _0xF148), math.min(_0x9F6E.h - 2, _0x615D.y - _0x8CE5) do
for _0xC43D = math.max(0, _0x615D.x - _0x6C16), math.min(_0x9F6E.w - 1, _0x615D.x + _0x6C16) do
local _0xB9E8 = _0x2351 * _0x9F6E.w + _0xC43D
local _0x5B56 = _0x7857[_0xB9E8]
if not _0x5B56 then
_0x5B56 = { _0x5409 = _0xC43D, _0x6665 = _0x2351, _0x66F3 = 0,
_0xC670 = _0x99A4(_0xC43D, _0x2351) and (_0xBE6D(_0xC43D, _0x2351)
or (_0x4BC0 and _0xB36B(_0xC43D, _0x2351 + 1))) }
_0x7857[_0xB9E8] = _0x5B56
end
if _0x5B56.open and (_0x7B06.focusHarvest or _0x38E9.los(_0xC43D, _0x2351, _0x615D.x, _0x615D.y))
and _0xF81F({ _0x5409 = _0xC43D + 0.5, _0x6665 = _0x2351 + 0.95 }, _0x615D.x, _0x615D.y, _0xDD5D) then
_0x5B56.n = _0x5B56.n + 1
if _0xD28A == _0x615D.idx then _0x5B56.anchor = true end
end
end
end
end
end
local _0x1636, _0x0E6E, _0xF180 = { maxExpand = 600 }, nil, nil
for _0xB9E8, _0x5B56 in pairs(_0x7857) do
if _0x5B56.n >= 2 and (not _0xD28A or _0x5B56.anchor) then
_0x1636[_0xB9E8] = true
local _0x2DDF = _0xFE2A(_0x5B56.x - _0x6D99) + 1.5 * _0xFE2A(_0x5B56.y - _0x79D3)
local _0x0048 = not _0x9715.SweepDir or (_0x5B56.x - _0x6D99) * _0x9715.SweepDir >= 0
if not _0xF180 or _0x2DDF < _0xF180 or (_0x2DDF == _0xF180 and (_0x5B56.n > _0x0E6E.n
or (_0x5B56.n == _0x0E6E.n and _0x0048 and not _0x0E6E.forward))) then
_0x0E6E, _0xF180 = _0x5B56, _0x2DDF
_0x5B56.forward = _0x0048
end
end
end
if not _0x0E6E then return false endlocal function _0x962E() return _0x6EC8 == _0x7B06 and _0x7B06.run() and _0xCA76() and _0x1DCC.World == _0x9F6E end
if not _0x962E() then return false end
_0x7B06.status(("Cari posisi panen %d pohon dekat (%d,%d)"):format(_0x0E6E.n, _0x0E6E.x, _0x0E6E.y))
local _0x715C = _0x251E(_0x6D99, _0x79D3, _0x1636, _0x0E6E.x, _0x0E6E.y, 0.5, _0x4BC0)
if not _0x715C or not _0x962E() then return false endlocal _0xF64E
if #_0x715C == 0 then
if _0xFE2A(_0x7827.x - (_0x6D99 + 0.5)) <= 0.08 then return false end
_0xF64E = _0xB4B6(_0x6D99, _0x79D3)else
_0xF64E = _0x0ADD(_0x715C, function() return not _0x962E() end)
end
_0x0D00()
if _0xF64E and _0x962E() then
local _0x5A8C = _0x4C2C()
if _0x5A8C and _0xFE2A(_0x5A8C.x - _0x7827.x) > 0.2 then _0x9715.SweepDir = _0x5A8C.x > _0x7827.x and 1 or -1 end
return true
end
return false
end
local _0xEB29 = nil
local function _0x88F6()
if _0x1DCC.World and not _0x1DCC.Trees and os.clock() >= (_0x927E.nextTreeScan or 0) then
_0x927E.nextTreeScan = os.clock() + 15
pcall(_0x525C)
end
if not _0x6FB2.FarmerStatus then return end
local _0xE60E = _0x9715.SeedId
local _0x3E00 ="Status  : ".. (_0x9715.Running and"JALAN"or"BERHENTI")
.."\nPanen   : ".. _0x9715.Harvested .."  | tanam: ".. _0x9715.Planted .."  | collect: ".. _0x5D82.Collected
.."\nSeed    : ".. (_0xE60E and (_0x949D(_0xE60E) .." x".. _0xC90B(_0xE60E)) or"-")
.."\nMode    : ".. (_0x9715.HarvestOnly and"harvest area vertikal + horizontal"or"tanam sambil jalan per baris + harvest sesuai pilihan")
.."\nIsi seed: ".. ((_0x9715.Plant and not _0x9715.HarvestOnly)
and (_0x9715.RefillStatus or"otomatis saat seed pilihan habis") or"tidak aktif saat harvest saja")
.."\nPohon   : ".. (_0x1DCC.Trees and"terbaca"or"TIDAK terbaca (harvest mati)")
.."\nKontrol : ".. _0x86C8.status()
.."\nPijakan : ".. _0x48F7(_0x9715.UseBlock, _0x9715.ScaffoldId)
.."\nDrop    : mati; hasil panen disimpan".."\nAksi    : ".. _0x9715.Status
if _0x3E00 == _0xEB29 then return end
_0xEB29 = _0x3E00
task.defer(function()
pcall(function() _0x6FB2.FarmerStatus:SetDesc(_0x3E00) end)
end)
endfunction _0x38E9.airCheck(_0x7827)
if _0x7827.grounded then
_0x38E9.AirAt = nil
return
end
if not _0x38E9.AirAt then
_0x38E9.AirAt = os.clock()
elseif os.clock() - _0x38E9.AirAt > 3 then
_0x38E9.AirAt = nil
local _0xB0B7 = (_0x7827.facing or 1) < 0_0x86C8.active = true
_0x86C8.right, _0x86C8.left = _0xB0B7, not _0xB0B7
task.wait(0.2)
_0x86C8.right, _0x86C8.left = false, false
end
endfunction _0x9715.refillSeed(_0xE60E)
local _0x9F6E, _0x7B06 = _0x1DCC.World, _0x6EC8
if not _0x9715.Running or not _0x9715.Plant or _0x9715.HarvestOnly or not _0xE60E or _0x9715.SeedId ~= _0xE60E
or not _0x9F6E or not _0xCA76() then return"cancelled"end
if _0xC90B(_0xE60E) > 0 then return"ready"end
if _0x1DCC.Inv then
local _0xD955, _0x63A7 = pcall(function() return _0x1DCC.Inv:room(_0xE60E) end)
if _0xD955 and type(_0x63A7) =="number"and _0x63A7 <= 0 then
_0x9715.RefillStatus ="Tas penuh untuk seed pilihan; kosongkan slot dulu"return"none"end
end
local _0x4DD4 = os.clock()
if _0x9715.RefillWorld ~= _0x9F6E or _0x9715.RefillFor ~= _0xE60E then
_0x9715.RefillWorld, _0x9715.RefillFor = _0x9F6E, _0xE60E
_0x9715.RefillNext, _0x9715.RefillSkip = 0, {}
end
if _0x4DD4 < (_0x9715.RefillNext or 0) then return"none"end
_0x9715.RefillNext = _0x4DD4 + 1
if not _0x2FB0.list then pcall(_0x1761) endif not _0x2FB0.list then
_0x9715.RefillStatus ="Daftar drop belum terbaca; tekan Hubungkan ke game"return"none"end
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then return"cancelled"end
local _0x0E6E, _0xAEFF
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot()) do
local _0x0BAF = _0x9715.RefillSkip[_0x2DDF.uid]
if _0x2DDF.id == _0xE60E and _0x4B2E(_0x2DDF, _0x4DD4) and (not _0x0BAF or _0x4DD4 >= _0x0BAF)
and _0x2DDF.x >= 0 and _0x2DDF.y >= 0 and _0x2DDF.x < _0x9F6E.w and _0x2DDF.y < _0x9F6E.h
and not _0x03ED(_0x4748(_0x2DDF.x), _0x4748(_0x2DDF.y)) then
local _0x935C, _0x15BA = _0x2DDF.x - _0x7827.x, _0x2DDF.y - (_0x7827.y - 0.475)
local _0x95E7 = _0x935C * _0x935C + 4 * _0x15BA * _0x15BA
if not _0xAEFF or _0x95E7 < _0xAEFF then _0x0E6E, _0xAEFF = _0x2DDF, _0x95E7 end
end
end
if not _0x0E6E then
_0x9715.RefillStatus ="Menunggu drop ".. _0x949D(_0xE60E) .." yang bisa diambil"return"none"end
local function _0x962E()
return _0x9715.Running and _0x9715.Plant and not _0x9715.HarvestOnly and _0x9715.SeedId == _0xE60E
and _0x1DCC.World == _0x9F6E and _0x6EC8 == _0x7B06 and _0xCA76()
end
local function _0x4C8B() return not _0x962E() or _0xC90B(_0xE60E) > 0 end
local function _0x0647()
if not _0x962E() or _0x5D82.CollectMode ~="Remote"or not _0x4B2E(_0x0E6E, os.clock()) then return end
local _0x5A8C = _0x4C2C()
local _0xDD5D = (_0x5D82.CollectRadius or 3) + 0.2
if _0x5A8C and _0xFE2A(_0x0E6E.x - _0x5A8C.x) <= _0xDD5D and _0xFE2A(_0x0E6E.y - (_0x5A8C.y - 0.475)) <= _0xDD5D then
pcall(_0xA761, _0x0E6E)end
end
local _0x964C = _0xC90B(_0xE60E)
_0x9715.RefillStatus = ("Ambil %s di (%d,%d)"):format(_0x949D(_0xE60E), _0x4748(_0x0E6E.x), _0x4748(_0x0E6E.y))
_0x9715.Status = _0x9715.RefillStatus
_0x0647()
local _0xF64E = true
if _0x962E() and _0xC90B(_0xE60E) <= _0x964C then
_0xF64E = pcall(_0x38E9.visitDrop, _0x0E6E, _0x4C8B)
end
_0x0D00()
if not _0x962E() then return"cancelled"end
_0x0647()
local _0xE7AB = os.clock() + 0.6
while _0x962E() and _0xC90B(_0xE60E) <= _0x964C and _0x0E6E.taking and os.clock() < _0xE7AB do
task.wait(0.05)
end
if not _0x962E() then return"cancelled"end
local _0xB5AC = _0xC90B(_0xE60E) - _0x964C
if _0xB5AC > 0 then
_0x9715.Refilled = (_0x9715.Refilled or 0) + _0xB5AC
_0x9715.RefillNext = 0
_0x9715.RefillStatus = ("Terambil %d %s; lanjut tanam"):format(_0xB5AC, _0x949D(_0xE60E))
_0x9715.Status = _0x9715.RefillStatus
return"picked"end
_0x9715.RefillSkip[_0x0E6E.uid] = os.clock() + 3
_0x9715.RefillStatus = _0xF64E and"Seed belum masuk tas; coba drop lain sebentar lagi"or"Gagal mendatangi seed; coba drop lain sebentar lagi"_0x9715.Status = _0x9715.RefillStatus
return"waiting"end
local function _0xC054()
local _0x9F6E = _0x1DCC.World
local _0x27F1 = _0x6EC8
local _0x7827 = _0x4C2C()
if not _0x9F6E or not _0x7827 or _0x7827.dead then
_0x0D00()
task.wait(0.5)
return"wait"end
if not _0x7827.grounded then
_0x0D00()
_0x38E9.airCheck(_0x7827)
task.wait()
return"wait"end
_0x38E9.AirAt = nil
_0x0D00()
if _0x6EC8.batch and not _0x6EC8.harvest and not _0x6EC8.plant then return"idle"end
if _0x6EC8.yieldHarvest and _0x6EC8.yieldHarvest() then return"harvest"end
local _0xAF1F, _0x1AB5
if _0x6EC8.focusHarvest and _0x6EC8.harvest and not _0x6EC8.plant then
local _0x7B06 = _0x6EC8
local _0x5219 = _0x38E9.farmerAreaTargets(_0x7827,"harvest", _0x7B06)
if #_0x5219 < 2 then
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0xDD5D, _0x4BC0 = _0xF04B() - 0.35, _0x3AE9() ~= nil
_0xAF1F, _0x1AB5 = _0x9E7D(_0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475), 32,
_0x8DF8(_0x79D3 * _0x9F6E.w + _0x6D99, _0xDD5D, _0x4BC0))
if _0x6EC8 ~= _0x7B06 or not _0x7B06.run() or not _0xCA76() or _0x1DCC.World ~= _0x9F6E then return"wait"end
if _0x38E9.farmerGroupRoute(_0x7827, _0x7B06, _0xAF1F, _0x5219, _0x4BC0) then return"move"end
if _0x6EC8 ~= _0x7B06 or not _0x7B06.run() or not _0xCA76() or _0x1DCC.World ~= _0x9F6E then return"wait"end
_0x7827 = _0x4C2C() or _0x7827
end
end
if _0xB615(_0x7827) > 0 then return"work"end
if _0x6EC8.yieldHarvest and _0x6EC8.yieldHarvest() then return"harvest"end
if _0x6EC8.batch and _0x6EC8.plant and _0x6EC8.seed and _0xB73F() <= 0 then
local _0x48F3 = _0x9715.refillSeed(_0x6EC8.seed)
if _0x48F3 =="picked"or _0x48F3 =="ready"then return"work"end
if _0x48F3 =="waiting"then return"refill"end
if _0x48F3 =="cancelled"then return"wait"end
end
local _0xDD5D = _0x6EC8.batch and math.max(_0x6EC8.harvest and _0xF04B() or 0, _0x6EC8.plant and _0xA3B7() or 0) - 0.35
or _0x9D4A() - 0.35
local _0x4BC0 = _0x3AE9() ~= nil
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0x50CF, _0x789A = _0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475)
if not _0xAF1F then
_0xAF1F, _0x1AB5 = _0x9E7D(_0x50CF, _0x789A, 8, _0x8DF8(_0x79D3 * _0x9F6E.w + _0x6D99, _0xDD5D, _0x4BC0))
end
if _0x6EC8 ~= _0x27F1 or _0x1DCC.World ~= _0x9F6E or not _0x6EC8.run() or not _0xCA76() then return"wait"end
if #_0xAF1F == 0 then return"idle", _0x1AB5 end
if _0x6EC8.sweepPlant and _0xAF1F[1].kind =="plant"then
return _0x38E9.farmerPlantTravel(_0x7827, _0x6EC8, _0xAF1F[1], _0x4BC0)
end
if _0x6EC8.batch then
_0xDD5D = (_0xAF1F[1].kind =="harvest"and _0xF04B() or _0xA3B7()) - 0.35
end_0xAF1F.los = _0xAF1F[1].kind =="harvest"and not _0x6EC8.focusHarvest
if _0xAF1F[1].kind =="plant"then _0xAF1F.cancel = _0x6EC8.yieldHarvest end
_0x958B(_0x6D99, _0x79D3, _0xAF1F, _0xDD5D, _0x4BC0, _0x6EC8.skip, _0x4D85)
return"move"end
function _0x9715.setHarvest(_0x4A01)
_0x9715.PlantRoute = nil
_0x9715.Harvest, _0x9715.HarvestOnly, _0x9715.Drop = _0x4A01 == true, _0x4A01 == true, false
if _0x4A01 then
_0x9715.Plant = false
_0x9715.RefillStatus ="Tidak aktif saat harvest saja"if _0x6FB2.FarmerPlantToggle then pcall(function() _0x6FB2.FarmerPlantToggle:Set(false) end) end
end
table.clear(_0x9715.Skip)
if _0x9715.Running then _0x6EC8 = _0xA667() end
if _0x927E.updateFarmerStatus then _0x927E.updateFarmerStatus() end
end
function _0x9715.setPlant(_0x4A01)
_0x9715.PlantRoute = nil
_0x9715.Plant, _0x9715.Drop = _0x4A01 == true, false
if _0x4A01 then
_0x9715.HarvestOnly = false_0x9715.RefillStatus ="Otomatis ambil seed pilihan saat habis"elseif _0x9715.Harvest then
_0x9715.HarvestOnly = true
_0x9715.RefillStatus ="Tidak aktif saat harvest saja"end
table.clear(_0x9715.Skip)
if _0x9715.Running then _0x6EC8 = _0xA667() end
if _0x927E.updateFarmerStatus then _0x927E.updateFarmerStatus() end
endfunction _0x9715.dropList()
return {}
end
local function _0x02A1()
local _0xCB93 = 0
while _0x9715.Running and _0xCA76() do
task.wait()
if os.clock() - _0xCB93 > 0.5 then
_0xCB93 = os.clock()
_0x88F6()
end
_0x6EC8 = _0xA667()
if not _0x1DCC.World then
_0x9715.Status ="Menunggu karakter / world..."task.wait(0.5)
else
local _0x2DAE, _0x1AB5 = _0xC054()
if _0x2DAE =="wait"and not _0x4C2C() then
_0x9715.Status ="Menunggu karakter / world..."end
if _0x2DAE =="idle"then
local _0x3421 = {}
if _0x9715.Harvest then
_0x3421[#_0x3421 + 1] = _0x1AB5 and ("pohon siap ±".. math.ceil(_0x1AB5) .." dtk") or"tidak ada pohon"end
if _0x6EC8.plant then
_0x3421[#_0x3421 + 1] = (_0x4EC7() <= 0)
and (_0x9715.RefillStatus or"seed habis / belum dipilih") or"tidak ada tempat tanam"end
_0x9715.Status ="Menunggu: ".. table.concat(_0x3421,", ")
if not _0x3422(250) then break end
end
end
end
_0x0D00()
end
local function _0xEDF5()
if _0x6FB2.FarmerToggle then pcall(function() _0x6FB2.FarmerToggle:Set(_0x9715.Running) end) end
end
_0x34F2 = function(_0x3B8B)
_0x9715.Running = false
_0x7C3D()
_0xEDF5()
_0x9715.Status = _0x3B8B or"Dihentikan"if _0x3B8B then
_0x8021("Farmer", _0x3B8B, 5)
if not string.find(_0x3B8B,"^Dihentikan") then _0x2479.send("stop","Farmer berhenti: ".. _0x3B8B) end
end
_0x88F6()
end
local function _0xD943()
if _0x9715.Running then return end
local _0x8599 = _0x77C5()
if not _0x8599 and not _0x9715.Harvest and not _0x9715.Plant then
_0x8599 ="Aktifkan Auto Harvest atau Auto Plant"end
if not _0x8599 and not _0x9715.Harvest and not _0x9715.SeedId then
_0x8599 ="Pilih seed dulu untuk Auto Plant"end
if _0x8599 then
_0x8021("Farmer", _0x8599, 4)
_0xEDF5()
return
end
if _0x9715.Harvest and not _0x1DCC.Trees and not _0x525C() then
_0x8021("Farmer","Data pohon tidak ketemu: Auto Harvest tidak bisa cek pohon siap", 5)
end
if _0xD808.Running and _0xD808.stop then _0xD808.stop("Dihentikan karena Farmer dimulai") end
if _0xECF0.Running and _0xECF0.stop then _0xECF0.stop("Dihentikan karena Farmer dimulai") end
if _0x3F90.Running and _0x3F90.stop then _0x3F90.stop("Dihentikan karena Farmer dimulai") end
if _0x5D82.Running then _0xF604("Dihentikan karena Farmer dimulai") end
if _0xD222.Running then _0xD467("Dihentikan karena Farmer dimulai") end
table.clear(_0x9715.Skip)
table.clear(_0x4D85)
table.clear(_0x43C8)
table.clear(_0x9715.Row)
_0x9715.DropOffUntil = 0
_0x9715.SweepDir = nil
_0x9715.PlantRoute = nil
_0x9715.BatchHarvest, _0x9715.BatchPlanted = 0, 0
_0x9715.RefillNext, _0x9715.RefillSkip, _0x9715.RefillWorld, _0x9715.RefillFor = 0, {}, nil, nil
_0x9715.RefillStatus ="Otomatis ambil seed pilihan saat habis"_0x9715.Status ="Mulai..."_0x9715.Running = true
_0x433F()
_0xEDF5()
_0x88F6()
task.spawn(function()
local _0xF64E, _0x7BA0 = pcall(_0x02A1)
if not _0xF64E then
warn("[ziey HUB] Farmer error: ".. tostring(_0x7BA0))
if _0x9715.Running then _0x34F2("Error: ".. tostring(_0x7BA0)) end
end
end)
endlocal _0xB7B8 = {}
local function _0xB9C8()
return _0xC90B(_0xD808.A or 0), _0xC90B(_0xD808.B or 0)
endlocal function _0x01C4(_0x5409, _0x6665, _0xE35E)
local _0x4F45 = _0xD808.A
local _0x2010 = _0xD509(_0x5409, _0x6665)
if _0x2010 == 0 then
local _0xE034, _0x783C = _0xB9C8()
if _0xE034 > 0 and _0x783C > 0 and _0x0BE0(_0x5409, _0x6665, _0x4F45) then return"plant"end
return nil
end
if _0x2010 ~= _0x4F45 then return nil end
local _0x615D = _0x927E.treeEntry(_0x5409, _0x6665)
if type(_0x615D) =="table"and _0x615D.s == true then return nil endlocal _0xAF6E = _0x0FC9(_0x5409, _0x6665, _0x2010)
if _0xAF6E and _0xE35E >= _0xAF6E then return nil endlocal _0xF439, _0x783C = _0xB9C8()
if _0x783C > 0 and _0xFA64(_0x5409, _0x6665) then return"splice"end
return nil
end
local function _0x4F48(_0x5409, _0x6665)
local _0x9F6E = _0x1DCC.World
local _0x509A = _0x9F6E and rawget(_0x9F6E,"spliceSeed")
if type(_0x509A) ~="function"then return false,"fungsi splice game tidak ketemu"end
local _0xF64E, _0xEC31 = pcall(_0x509A, _0x5409, _0x6665, _0xD808.B)
if _0xF64E and _0xEC31 and _0xD7DB[_0xEC31] then
pcall(function() _0x1DCC.Inv:remove(_0xD808.B, 1) end)
if _0x1DCC.SetTile then pcall(_0x1DCC.SetTile,"fg", _0x5409, _0x6665, _0xEC31, true) end_0xD808.Made += 1
_0xD808.Status = ("Splice jadi %s (%d,%d)"):format(_0x949D(_0xEC31), _0x5409, _0x6665)
return true
end
return false,"ditolak server"endlocal function _0x810F(_0x615D)
local _0x4F45 = _0xD808.A
if _0xD509(_0x615D.x, _0x615D.y) == 0 then
if _0xC90B(_0x4F45) <= 0 then return false end
_0xBF1A("fg", _0x615D.x, _0x615D.y, _0x4F45)
pcall(function() _0x1DCC.Inv:remove(_0x4F45, 1) end)
_0xD808.Planted += 1
_0xD808.Status = ("Tanam %s (%d,%d)"):format(_0x949D(_0x4F45), _0x615D.x, _0x615D.y)
if not _0x3422(_0xD808.Ms) then return false end
end
if _0xD509(_0x615D.x, _0x615D.y) ~= _0x4F45 then
_0xED30(_0xD808.Skip, _0x615D.idx, 30)
return true
end
local _0xF64E, _0x3330 = _0x4F48(_0x615D.x, _0x615D.y)
if not _0xF64E then
_0xB7B8[_0x615D.idx] = (_0xB7B8[_0x615D.idx] or 0) + 1
_0xED30(_0xD808.Skip, _0x615D.idx, 60)
_0xD808.Status = ("Gagal splice (%d,%d): %s"):format(_0x615D.x, _0x615D.y, tostring(_0x3330))
end
_0x3422(_0xD808.Ms)
return true
end
local function _0x4633(_0x7827)
local _0x9F6E = _0x1DCC.World
local _0xAEA8 = _0x9F6E.w
local _0xDD5D = _0x9D4A() - 0.08
local _0x1700, _0x212D = _0x7827.x, _0x7827.y - 0.475
local _0x4DD4 = os.clock()
local _0xE35E = workspace:GetServerTimeNow()
local _0x026D = {}
for _0x6912 = math.max(0, _0x4748(_0x212D - _0xDD5D - 0.5)), math.min(_0x4748(_0x212D + _0xDD5D + 0.5), _0x9F6E.h - 1) do
for _0x574E = math.max(0, _0x4748(_0x1700 - _0xDD5D - 0.5)), math.min(_0x4748(_0x1700 + _0xDD5D + 0.5), _0xAEA8 - 1) do
if _0xF81F(_0x7827, _0x574E, _0x6912, _0xDD5D) then
local _0xB9E8 = _0x6912 * _0xAEA8 + _0x574E
if _0xD808.Row.y == _0x6912 and not _0x7188(_0xD808.Skip, _0xB9E8, _0x4DD4) and _0x01C4(_0x574E, _0x6912, _0xE35E) then
_0x026D[#_0x026D + 1] = { _0x5409 = _0x574E, _0x6665 = _0x6912, _0xB9E8 = _0xB9E8 }
end
end
end
end
table.sort(_0x026D, function(_0xE034, _0x783C)
if _0xE034.x ~= _0x783C.x then return _0xE034.x < _0x783C.x end
return _0xE034.y < _0x783C.y
end)
local _0xC49C = 0
for _0xF439, _0x615D in ipairs(_0x026D) do
if not _0xD808.Roaming or not _0xCA76() then return _0xC49C end
local _0x5A8C = _0x4C2C()
if not _0x5A8C or not _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0xDD5D) then return _0xC49C end
if not _0x810F(_0x615D) then return _0xC49C end
_0xC49C += 1
end
return _0xC49C
endlocal function _0x0A8D(_0x50CF, _0x789A, maxN, _0xEFC3)
local _0x9F6E = _0x1DCC.World
local _0xAEA8, _0x9EEB = _0x9F6E.w, _0x9F6E.h
local _0x4DD4 = os.clock()
local _0xE35E = workspace:GetServerTimeNow()
local _0x7D85 = {}local _0x8BE9 = 0
for _0x6665 = 0, _0x9EEB - 1 do
for _0x5409 = 0, _0xAEA8 - 1 do
local _0xB9E8 = _0x6665 * _0xAEA8 + _0x5409
if not _0x7D85[_0x6665] and not _0x7188(_0xD808.Skip, _0xB9E8, _0x4DD4) and _0x01C4(_0x5409, _0x6665, _0xE35E) then
if _0xEFC3 and not _0xEFC3[_0xB9E8] then
_0xED30(_0xD808.Skip, _0xB9E8, 60)
else
_0x7D85[_0x6665] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0xB9E8 }
end
end
end
_0x8BE9 += _0xAEA8
if _0x8BE9 > 6000 then
_0x8BE9 = 0
task.wait()
if not _0xD808.Roaming then return {} end
end
end
local _0xAC11, _0xA6BA, _0xEA87 = _0xD808.Row.y, nil, nil
for _0x6665, _0x615D in pairs(_0x7D85) do
local _0xC0A8 = (_0x6665 == _0xAC11) and -1 or math.abs(_0x6665 - _0x789A)
if not _0xA6BA or _0xC0A8 < _0xEA87 or (_0xC0A8 == _0xEA87 and _0x6665 < _0xA6BA.y) then _0xA6BA, _0xEA87 = _0x615D, _0xC0A8 end
end
_0xD808.Row.y = _0xA6BA and _0xA6BA.y or nil
return _0xA6BA and { _0xA6BA } or {}
end
local function _0x06D1(_0x5431)
while _0xD808.Roaming and _0xD808.Running and _0xCA76() and _0xD808.RunId == _0x5431 do
task.wait()
local _0x9F6E = _0x1DCC.World
local _0x7827 = _0x4C2C()
if not _0x9F6E or not _0x7827 or _0x7827.dead then
_0x0D00()
_0xD808.Status ="Menunggu karakter / world..."task.wait(0.5)
continue
end
if not _0x7827.grounded then
_0x0D00()
continue
end
_0x0D00()
local _0xE034, _0x783C = _0xB9C8()
if _0x783C <= 0 then
if _0xD808.stop then _0xD808.stop("Seed habis") end
break
endif _0x4633(_0x7827) > 0 then continue endlocal _0xDD5D = _0x9D4A() - 0.35
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0x50CF, _0x789A = _0x4748(_0x7827.x), _0x4748(_0x7827.y - 0.475)
local _0xAF1F = _0x0A8D(_0x50CF, _0x789A, 8, _0x8DF8(_0x79D3 * _0x9F6E.w + _0x6D99, _0xDD5D, false))
if not _0xD808.Roaming or not _0xCA76() then break end
if #_0xAF1F == 0 then
_0xD808.Status = (_0xE034 <= 0) and"Seed A habis, tidak ada pohon A yang bisa di-splice"or"Menunggu: tidak ada tempat tanam / pohon untuk di-splice"if not _0x3422(1000) then break end
continue
end
_0x958B(_0x6D99, _0x79D3, _0xAF1F, _0xDD5D, false, _0xD808.Skip, _0xB7B8)
end
_0x0D00()
end
local function _0x43E2()
if not _0x4CD3 then _0x86C8.bindMenu() end
if not _0x4CD3 then return _0x86C8.Error or"Kontrol gerak game belum terhubung"end
table.clear(_0xD808.Row)
if not _0x4C2C() then return"Kamu belum masuk world"end
if not _0x1DCC.Trees then _0x525C() end
table.clear(_0xD808.Skip)
table.clear(_0xB7B8)
table.clear(_0x43C8)
_0xD808.Roaming = true
_0x433F()
local _0x2010 = _0xD808.RunId
task.spawn(function()
local _0xF64E, _0x7BA0 = pcall(_0x06D1, _0x2010)
if not _0xF64E then
warn("[ziey HUB] Splice error: ".. tostring(_0x7BA0))
if _0xD808.Running and _0xD808.stop then _0xD808.stop("Error: ".. tostring(_0x7BA0)) end
end
end)
return nil
end
local function _0xBFC2()
_0xD808.Roaming = false
_0x7C3D()
_0x0D00()
endlocal function _0x1FC4(_0x574E, _0x6912, maxSec, _0x4C8B)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or not _0x4CD3 then return false end
if _0x574E < 0 or _0x6912 < 0 or _0x574E >= _0x9F6E.w or _0x6912 >= _0x9F6E.h then return false end
_0x38E9.Homing = true
_0x433F()
local _0xC527 = { [_0x6912 * _0x9F6E.w + _0x574E] = true }
local _0x1981, _0xF64E = os.clock(), false
while _0xCA76() and _0x38E9.Homing and os.clock() - _0x1981 < (maxSec or 30) do
if _0x4C8B and _0x4C8B() then break end
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead then
task.wait(0.3)else
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
if _0x6D99 == _0x574E and _0x79D3 == _0x6912 and _0x7827.grounded then
_0xF64E = true
break
end
local _0x715C = _0x251E(_0x6D99, _0x79D3, _0xC527, _0x574E, _0x6912, 0.5, false)
if not _0x715C then break endif #_0x715C > 0 then
local _0xF439, _0x3330 = _0x0ADD(_0x715C, _0x4C8B)
if _0x3330 =="cancelled"then break end
end
_0x0D00()
task.wait(0.15)
end
end
_0x38E9.Homing = false
_0x7C3D()
return _0xF64E
endlocal function _0x920A()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return {} end
local _0xE95B = math.clamp(math.floor(math.min(_0x0DAF.X0, _0x0DAF.X1)), 0, _0x9F6E.w - 1)
local _0x932D = math.clamp(math.floor(math.max(_0x0DAF.X0, _0x0DAF.X1)), 0, _0x9F6E.w - 1)
local _0xA7F4 = math.max(1, math.floor(_0x0DAF.Y0))
local _0x5B56 = _0x0DAF.Cache
local _0x4DD4 = os.clock()
if _0x5B56 and _0x5B56.w == _0x9F6E and _0x5B56.x0 == _0xE95B and _0x5B56.x1 == _0x932D and _0x5B56.y0 == _0xA7F4 and _0x4DD4 - _0x5B56.at < 2 then
return _0x5B56.rows
end
local _0x7D85 = {}
local _0x7553 = _0x932D - _0xE95B + 1local function _0xA495(_0x5409, _0x6665)
local _0x2010 = _0xD509(_0x5409, _0x6665)
if _0x2010 == 0 then return false end
local _0x91CB = _0xD7DB[_0x2010]
return _0x91CB ~= nil and _0x91CB.solid == true and not _0x8CD6(_0x2010)
end
local _0x6665 = _0xA7F4
while _0x6665 <= _0x9F6E.h - 2 and #_0x7D85 < 40 do
local _0x3FCA, _0xBCAC = 0, 0
for _0x5409 = _0xE95B, _0x932D do
if _0xA495(_0x5409, _0x6665 - 1) then _0x3FCA += 1 end
if _0xA495(_0x5409, _0x6665) then _0xBCAC += 1 end
end
if _0x3FCA * 2 > _0x7553 then break end_0x7D85[#_0x7D85 + 1] = _0x6665
if _0xBCAC * 2 > _0x7553 then break end_0x6665 += 2
end
_0x0DAF.Cache = { _0x9F6E = _0x9F6E, _0xE95B = _0xE95B, _0x932D = _0x932D, _0xA7F4 = _0xA7F4, _0xC4F6 = _0x4DD4, _0x7D85 = _0x7D85 }
return _0x7D85
endfunction _0x3F90.done(_0x5409, _0x6665)
local _0x2010 = _0xD509(_0x5409, _0x6665)
if _0x2010 == 0 then return false end
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB or _0x91CB.kind =="seed"or not _0x91CB.solid then return false end
return not (_0x91CB.deadly or _0x91CB.hurts or _0x91CB.laser)
endlocal function _0x24DF(_0xC0A8)
local _0x9F6E = _0x1DCC.World
local _0xE95B = math.clamp(math.floor(math.min(_0x0DAF.X0, _0x0DAF.X1)), 0, _0x9F6E.w - 1)
local _0x932D = math.clamp(math.floor(math.max(_0x0DAF.X0, _0x0DAF.X1)), 0, _0x9F6E.w - 1)
local _0xD279 = {}
if _0x932D - _0xE95B < 4 thenfor _0x5409 = _0xE95B, _0x932D do _0xD279[#_0xD279 + 1] = _0x5409 end
elseif _0xC0A8 % 2 == 0 then
for _0x5409 = _0xE95B + 1, _0x932D - 1 do _0xD279[#_0xD279 + 1] = _0x5409 end
else
_0xD279[#_0xD279 + 1] = _0xE95B
for _0x5409 = _0xE95B + 2, _0x932D - 2 do _0xD279[#_0xD279 + 1] = _0x5409 end
_0xD279[#_0xD279 + 1] = _0x932D
end
return _0xD279
end
local function _0x63B7(_0x5409, _0x6665)
local _0x7D85 = _0x920A()
if #_0x7D85 == 0 then return false end
local _0xE95B = math.min(_0x0DAF.X0, _0x0DAF.X1)
local _0x932D = math.max(_0x0DAF.X0, _0x0DAF.X1)
return _0x5409 >= _0xE95B and _0x5409 <= _0x932D and _0x6665 >= _0x7D85[1] - 1 and _0x6665 <= _0x7D85[#_0x7D85]
endlocal function _0xBDBC()
local _0x365A = {}
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return _0x365A end
for _0xC0A8, _0x6665 in ipairs(_0x920A()) do
for _0xF439, _0x5409 in ipairs(_0x24DF(_0xC0A8 - 1)) do _0x365A[_0x6665 * _0x9F6E.w + _0x5409] = true end
end
return _0x365A
endlocal function _0x5C06()
local _0x365A = {}
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return _0x365A end
for _0xC0A8, _0x6665 in ipairs(_0x920A()) do
for _0xF439, _0x5409 in ipairs(_0x24DF(_0xC0A8 - 1)) do
if _0xD509(_0x5409, _0x6665) ~= 0 and _0x6665 - 1 >= 0 then _0x365A[(_0x6665 - 1) * _0x9F6E.w + _0x5409] = true end
end
end
return _0x365A
endlocal function _0x3037(blockId, P0, carve0)
local _0xA07A = { _0x7D85 = 0, _0x069C = 0, _0x5376 = 0, _0xC49C = 0, blocked = 0, _0xBDA1 = 0 }
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return _0xA07A end
local _0x7D85 = _0x920A()
_0xA07A.rows = #_0x7D85
for _0xC0A8, _0x6665 in ipairs(_0x7D85) do
for _0xF439, _0x5409 in ipairs(_0x24DF(_0xC0A8 - 1)) do
_0xA07A.total += 1
if _0x3F90.done(_0x5409, _0x6665) then
_0xA07A.done += 1
else
_0xA07A.need += 1
if _0xD509(_0x5409, _0x6665) ~= 0 then _0xA07A.blocked += 1 endend
end
end
if carve0 then
_0xA07A.carve = #carve0
else
local _0xDC17 = P0 or (_0x3F90.plan and _0x3F90.plan())
if _0xDC17 then _0xA07A.carve = #_0x3F90.carveList(_0xDC17) end
end
return _0xA07A
endlocal function _0x4C00(_0x9D38)
local _0x91CB = _0x9D38 and _0xD7DB[_0x9D38]
if not _0x91CB then return nil end
local _0x2A60 = _0x91CB.seedId or (_0x9D38 + 1)
local _0x629B = _0xD7DB[_0x2A60]
if _0x629B and _0x629B.kind =="seed"then return _0x2A60 end
return nil
end
local function _0xC232(_0xE60E)
if not _0xE60E then return nil end
local _0x783C = _0xE60E - 1
local _0x91CB = _0xD7DB[_0x783C]
if _0x91CB and _0x91CB.kind ~="seed"and (_0x91CB.seedId == nil or _0x91CB.seedId == _0xE60E) then return _0x783C end
return nil
endlocal function _0x282D(whole, only, _0xD3D6)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return 0 end
local _0xE35E = workspace:GetServerTimeNow()
local _0xE95B, _0x932D, _0xA7F4, _0x1F72 = 0, _0x9F6E.w - 1, 0, _0x9F6E.h - 1
if not whole then
local _0x7D85 = _0x920A()
if #_0x7D85 == 0 then return 0 end
_0xE95B = math.max(0, math.min(_0x0DAF.X0, _0x0DAF.X1))
_0x932D = math.min(_0x9F6E.w - 1, math.max(_0x0DAF.X0, _0x0DAF.X1))
_0xA7F4, _0x1F72 = math.max(0, _0x7D85[1] - 1), _0x7D85[#_0x7D85]
end
local _0x66F3, _0x67AE, _0x25C5, _0xB61F = 0, nil, nil, 0
for _0x6665 = _0xA7F4, _0x1F72 do
for _0x5409 = _0xE95B, _0x932D do
local _0x2010 = _0xD509(_0x5409, _0x6665)
if _0x2010 ~= 0 and (not only or _0x2010 == only) then
local _0xAF6E = _0x0FC9(_0x5409, _0x6665, _0x2010)
if _0xAF6E then
local _0xB9E8 = _0x6665 * _0x9F6E.w + _0x5409
if not _0x25C5 or _0xAF6E < _0x25C5.at or (_0xAF6E == _0x25C5.at and _0xB9E8 < _0x25C5.idx) then
_0x25C5 = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0x2010 = _0x2010, _0xB9E8 = _0xB9E8, _0xC4F6 = _0xAF6E }
end
if _0xE35E >= _0xAF6E then
if not _0xD3D6 or not _0x7188(_0xD3D6, _0x6665 * _0x9F6E.w + _0x5409) then _0x66F3 += 1 end
elseif not _0x67AE or _0xAF6E - _0xE35E < _0x67AE then
_0x67AE = _0xAF6E - _0xE35E
end
elseif _0xD7DB[_0x2010] and _0xD7DB[_0x2010].kind =="seed"then
_0xB61F += 1
end
end
end
end
return _0x66F3, _0x67AE, _0x25C5, _0xB61F
endlocal _0x8152 = 10local _0x65ED = 190local function _0x306E(_0x756B, _0x8993, _0x059F)
local _0x97D4, _0x147F = nil, nil
if not _0x756B.whole then
_0x97D4 = _0x5C06()
_0x147F = _0x63B7
end
return {
_0xC634 = _0x756B.live,
_0x8993 = _0x8993,
_0x059F = _0x059F and _0xC90B(_0x756B.seed) > 0,
_0xE60E = _0x756B.seed,
_0xD3D6 = _0xECF0.Skip,
hms = _0x9715.HarvestMs,
pms = _0x9715.PlantMs,
_0x147F = _0x147F,
_0x97D4 = _0x97D4,
exclude = _0x756B.exclude,
_0x05DF = _0xECF0.Row,
_0x14EE = not _0x8993,_0x7FF7 = function(_0x615D) _0xECF0.Status = _0x615D end,
onHarvest = function() _0xECF0.Harvested += 1 end,
onPlant = function() _0xECF0.Planted += 1 end,
yieldHarvest = (not _0x8993 and _0x059F) and function() return _0xECF0.wantHarvest(_0x756B) end or nil,
}
endfunction _0xECF0.wantHarvest(_0x756B)
if not _0x756B.live() or not _0xCA76() or _0xECF0.Traveling then return false end
if _0xC90B(_0x756B.seed) >= _0x65ED - 20 or _0xC90B(_0x756B.block) >= _0x65ED - 20 then return false end
local _0x4DD4, _0x9F6E = os.clock(), _0x1DCC.World
if not _0x9F6E then return false end
if _0x4DD4 < (_0x756B.harvestRetryAt or 0) then return false end
if _0x756B.readyWorld ~= _0x9F6E or _0x756B.readyWhole ~= _0x756B.whole or _0x4DD4 >= (_0x756B.readyCheckAt or 0) then
_0x756B.readyCount = _0x282D(_0x756B.whole, nil, _0xECF0.Skip)
_0x756B.readyWorld, _0x756B.readyWhole, _0x756B.readyCheckAt = _0x9F6E, _0x756B.whole, _0x4DD4 + 0.25
end
return (_0x756B.readyCount or 0) > 0
endfunction _0xECF0.takeBlocks(_0x756B)
local _0x9F6E = _0x1DCC.World
local function _0x962E() return _0x756B.live() and _0xCA76() and _0x1DCC.World == _0x9F6E and not _0xECF0.Traveling end
if not _0x9F6E or not _0x962E() then return"cancelled"end
if _0xECF0.wantHarvest(_0x756B) then return"harvest"end
if _0x756B.takeWorld ~= _0x9F6E or _0x756B.takeBlock ~= _0x756B.block then
_0x756B.takeWorld, _0x756B.takeBlock, _0x756B.takeSkip = _0x9F6E, _0x756B.block, {}
_0x756B.takePending, _0x756B.takeUnreadable = false, false
end
_0x756B.takePending, _0x756B.takeUnreadable = false, false
if _0xC90B(_0x756B.block) >= _0x65ED then return"full"end
if _0x1DCC.Inv then
local _0xD955, _0x63A7 = pcall(function() return _0x1DCC.Inv:room(_0x756B.block) end)
if _0xD955 and type(_0x63A7) =="number"and _0x63A7 <= 0 then return"full"end
end
if not _0x2FB0.list then pcall(_0x1761) endif not _0x2FB0.list then
_0x756B.takeUnreadable = true
_0x756B.takeStatus ="Daftar drop block belum terbaca; tekan Hubungkan ke game"_0xECF0.Status = _0x756B.takeStatus
return"none"end
local _0x7827, _0x4DD4 = _0x4C2C(), os.clock()
if not _0x7827 or _0x7827.dead then return"cancelled"end
local _0x0E6E, _0xAEFF
local _0xC648 = _0xECF0.Zone
if _0xC648 and _0xC648.world ~= rawget(_0x9F6E,"name") then _0xC648 = nil end
for _0xF439, _0x2DDF in ipairs(_0x2FB0.snapshot()) do
if _0x2DDF.id == _0x756B.block and _0x2DDF.n > 0 and not _0x2DDF.display
and _0x2DDF.x >= 0 and _0x2DDF.y >= 0 and _0x2DDF.x < _0x9F6E.w and _0x2DDF.y < _0x9F6E.h
and not _0x03ED(_0x4748(_0x2DDF.x), _0x4748(_0x2DDF.y))
and (_0x756B.whole or _0x63B7(_0x4748(_0x2DDF.x), _0x4748(_0x2DDF.y)))
and not (_0xC648 and _0xFE2A(_0x2DDF.x - _0xC648.x) <= 2.5 and _0xFE2A(_0x2DDF.y - _0xC648.y) <= 2.5) then
_0x756B.takePending = true
if _0x4B2E(_0x2DDF, _0x4DD4) and (not _0x756B.takeSkip[_0x2DDF.uid] or _0x4DD4 >= _0x756B.takeSkip[_0x2DDF.uid]) then
local _0x935C, _0x15BA = _0x2DDF.x - _0x7827.x, _0x2DDF.y - (_0x7827.y - 0.475)
local _0x95E7 = _0x935C * _0x935C + 4 * _0x15BA * _0x15BA
if not _0xAEFF or _0x95E7 < _0xAEFF then _0x0E6E, _0xAEFF = _0x2DDF, _0x95E7 end
end
end
end
if not _0x0E6E then
_0x756B.takeStatus = _0x756B.takePending and"Block belum masuk tas; coba pengambilan lagi sebentar"or nil
return"none"end
local _0x964C = _0xC90B(_0x756B.block)
local function _0x4C8B()
return not _0x962E() or _0xC90B(_0x756B.block) > _0x964C or _0xECF0.wantHarvest(_0x756B)
end
local function _0x0647()
if _0x4C8B() or _0x5D82.CollectMode ~="Remote"or _0x2FB0.key(_0x2FB0.list, _0x0E6E) == nil
or not _0x4B2E(_0x0E6E, os.clock()) then return end
local _0x5A8C, _0xDD5D = _0x4C2C(), (_0x5D82.CollectRadius or 3) + 0.2
if _0x5A8C and _0xFE2A(_0x0E6E.x - _0x5A8C.x) <= _0xDD5D and _0xFE2A(_0x0E6E.y - (_0x5A8C.y - 0.475)) <= _0xDD5D then
pcall(_0xA761, _0x0E6E)
end
end
_0x756B.takeStatus = ("Ambil block %s di (%d,%d)"):format(_0x949D(_0x756B.block), _0x4748(_0x0E6E.x), _0x4748(_0x0E6E.y))
_0xECF0.Status = _0x756B.takeStatus
_0x0647()
if _0x962E() and _0xC90B(_0x756B.block) <= _0x964C and not _0xECF0.wantHarvest(_0x756B) then
pcall(_0x38E9.visitDrop, _0x0E6E, _0x4C8B)
end
_0x0D00()
if not _0x962E() then return"cancelled"end
if _0xECF0.wantHarvest(_0x756B) then return"harvest"end
_0x0647()
local _0xE7AB = os.clock() + 0.6
while _0x962E() and not _0xECF0.wantHarvest(_0x756B) and _0xC90B(_0x756B.block) <= _0x964C
and _0x0E6E.taking and os.clock() < _0xE7AB do
task.wait(0.05)
end
if not _0x962E() then return"cancelled"end
if _0xECF0.wantHarvest(_0x756B) then return"harvest"end
local _0xB5AC = _0xC90B(_0x756B.block) - _0x964C
if _0xB5AC > 0 then
_0xECF0.BlocksTaken = (_0xECF0.BlocksTaken or 0) + _0xB5AC
_0x756B.takeStatus = ("Block masuk tas +%d; siapkan sesi break"):format(_0xB5AC)
_0xECF0.Status = _0x756B.takeStatus
return"picked", _0xB5AC
end
_0x756B.takeSkip[_0x0E6E.uid] = os.clock() + 3
_0x756B.takeStatus ="Block belum masuk tas; coba drop lain sebelum lanjut break"_0xECF0.Status = _0x756B.takeStatus
return"waiting"endlocal function _0x15BE(_0x756B)
if _0xECF0.wantHarvest(_0x756B) then return true,"harvest"end
if os.clock() < (_0xECF0.BreakFailUntil or 0) then return false end
local _0x7827 = _0x4C2C()
if not _0x7827 then return false end
local _0xF3CD, _0x3A74 = _0x6B94(_0x7827)
if _0xF3CD ~= _0xECF0.BreakX or _0x3A74 ~= _0xECF0.BreakY then
_0xECF0.Status = ("Jalan ke posisi break (%d,%d)"):format(_0xECF0.BreakX, _0xECF0.BreakY)
if not _0x1FC4(_0xECF0.BreakX, _0xECF0.BreakY, 45, function()
return not _0x756B.live() or _0xECF0.wantHarvest(_0x756B)
end) then
if _0xECF0.wantHarvest(_0x756B) then return true,"harvest"end
if not _0x756B.live() then return false end
_0xECF0.Status ="Gagal jalan ke posisi break, dicoba lagi nanti"_0xECF0.BreakFailUntil = os.clock() + 30
return false
end
end
if not _0x756B.live() then return false end
if _0xECF0.wantHarvest(_0x756B) then return true,"harvest"end
_0x5D82.Override = { offsets = _0xECF0.Tiles, _0x9D38 = _0x756B.block, _0xB364 ="Place + Break"}
_0x5D82.Quiet = true
_0x5D82.WaitingDrops, _0x5D82.WorkReason = nil, nil
table.clear(_0x895A)
table.clear(_0x0508)
_0x5D82.Running = true
_0x5D82.RunId = (_0x5D82.RunId or 0) + 1
local _0x2010 = _0x5D82.RunId
local _0x25F3 = _0x5D82.Placed + _0x5D82.Broken
local _0x2E20, _0x3DA7 = _0x25F3, os.clock()
local _0x72C6 = false
task.spawn(function()while _0x5D82.Running and _0x5D82.RunId == _0x2010 do
task.wait(0.25)
if not _0x5D82.Running or _0x5D82.RunId ~= _0x2010 then break end
local _0x629B = _0xC90B(_0x756B.seed)
local _0x77AD = _0x5D82.Placed + _0x5D82.Broken
if _0x77AD ~= _0x2E20 then _0x2E20, _0x3DA7 = _0x77AD, os.clock() end
if _0xECF0.wantHarvest(_0x756B) then
_0x72C6 = true
_0xECF0.Status ="Pohon siap, jeda break lalu panen"_0x5D82.Running = false
break
end
if not _0x756B.live() or _0x629B >= _0x65ED
or (_0x756B.drop and _0xECF0.Drop and _0x629B >= _0xECF0.DropAt)
or (_0x756B.breakMode ~="always"and _0x629B >= _0x8152)
or (not _0x2FB0.WorkBusy and os.clock() - _0x3DA7 > 8) then_0x5D82.Running = false
end
end
end)
_0xECF0.CollectReason = nil
_0xECF0.Status ="Break ".. _0x949D(_0x756B.block) .." di posisi pabrik"local _0xF64E, _0x7BA0 = pcall(_0x286D, _0x2010)
if not _0xF64E then warn("[ziey HUB] Pabrik break error: ".. tostring(_0x7BA0)) end
_0x5D82.Running = false
_0x5D82.Override = nil
_0x5D82.Quiet = false
if not _0x72C6 and _0x5D82.Placed + _0x5D82.Broken == _0x25F3 and _0xC90B(_0x756B.block) > 0 then
_0xECF0.CollectReason = _0x5D82.WaitingDrops and _0x5D82.WorkReason or nil
_0xECF0.BreakFailUntil = os.clock() + (_0xECF0.CollectReason and 2 or 60)
_0xECF0.Status = _0xECF0.CollectReason or"Sesi break tanpa aksi: cek posisi & tile break (dicoba lagi 1 menit)"end
return true, _0x72C6 and"harvest"or nil
endlocal function _0xBA81()
local _0xCDA3 = tostring(_0xECF0.DropWorld or""):gsub("%s","")
local _0xDF0A, _0x80D9 = string.match(_0xCDA3,"^([^:]*):(.+)$")
if not _0xDF0A then _0xDF0A = _0xCDA3 end
_0xDF0A = string.upper(_0xDF0A):gsub("[^A-Z0-9]","")
if _0x80D9 ==""then _0x80D9 = nil end
return _0xDF0A, _0x80D9
endlocal function _0x2854(_0xDF0A, _0x80D9)
if _0x5B75.worldName() ~=""then
_0x5B75.leaveWorld()
task.wait(2)
end
if _0x80D9 and _0x1DCC.World then rawset(_0x1DCC.World,"arriveDoor", _0x80D9) end
local _0xF64E, _0x8599 = _0x5B75.enterWorld(_0xDF0A)
if _0xF64E then
task.wait(1.5)
_0x5B75.afterEnter()
end
return _0xF64E, _0x8599
endlocal function _0xEAA2(_0x2010, _0x66F3, _0x962E)
local _0x954B, _0x2176 = _0x1DCC.World, _0x1DCC.Inv
local _0x3984 = _0x1DCC.Hud
local _0x509A = _0x3984 and rawget(_0x3984,"onDrop")
if type(_0x509A) ~="function"then return 0,"fungsi drop game tidak ketemu"end
local _0xC546, _0xF072, _0x35AB = math.max(0, math.floor(_0x66F3)), 0, false
local function _0x44B7() return _0x962E() and _0xCA76() and _0x1DCC.World == _0x954B and _0x1DCC.Inv == _0x2176 end
while _0xF072 < _0xC546 and _0x44B7() do
local _0x964C = _0xC90B(_0x2010)
if _0x964C <= 0 then return _0xF072,"Item tersisa di tas tidak mencukupi untuk drop"end
local _0x92FD = math.min(_0xC546 - _0xF072, _0x964C, 200)
local _0xF64E, _0xFC89, _0xDD1E = pcall(_0x509A, _0x2010, _0x92FD)
if not _0xF64E then return _0xF072,"Drop gagal: ".. tostring(_0xFC89):sub(1, 160) end
if not _0x44B7() then return _0xF072,"Drop dibatalkan karena world / sesi berubah"end
local _0xF55F = type(_0xDD1E) =="string"and _0xDD1E or (type(_0xFC89) =="string"and _0xFC89 or"")
local _0x4A8E = string.lower(_0xF55F)
if _0xFC89 == false and (_0x4A8E:find("full", 1, true) or _0x4A8E:find("penuh", 1, true)
or _0x4A8E:find("too many", 1, true)) then
return _0xF072,"Drop ditolak game: ".. _0xF55F
end
local _0x92C2 = 0.1
pcall(function() _0x92C2 = _0x8270:GetNetworkPing() end)
local _0x4B13, _0xC9AC, _0x8285 = os.clock() + math.clamp(1 + 3 * _0x92C2, 1.5, 3), nil, 0
repeat
task.wait(0.05)
if not _0x44B7() then return _0xF072,"Drop dibatalkan karena world / sesi berubah"end
local _0x03A4 = math.max(0, _0x964C - _0xC90B(_0x2010))
if _0x03A4 > 0 and _0x03A4 <= _0x92FD then
if _0x03A4 ~= _0x8285 then _0x8285, _0xC9AC = _0x03A4, os.clock() end
if _0xC9AC and os.clock() - _0xC9AC >= 0.4 then break end
else _0x8285, _0xC9AC = 0, nil end
until os.clock() >= _0x4B13 and (not _0xC9AC or os.clock() - _0xC9AC >= 0.4)
if _0x8285 > 0 and _0xC9AC and os.clock() - _0xC9AC >= 0.4 then
_0xF072 = _0xF072 + _0x8285
if _0xF072 < _0xC546 then task.wait(0.35) end
elseif _0xFC89 == false and not _0x35AB then_0x35AB = true
local _0xE35E, _0x4943 = _0x4C2C(), _0x86C8.active
local _0xB0B7 = _0xE35E and (_0xE35E.facing or 1) < 0
_0x86C8.active, _0x86C8.right, _0x86C8.left = true, _0xB0B7, not _0xB0B7
task.wait(0.06)
_0x0D00()
_0x86C8.active = _0x4943 and _0x44B7()
task.wait(0.3)
else
return _0xF072,"Drop belum dikonfirmasi; world/tile mungkin penuh atau tidak ada izin. Item tersisa tetap di tas"end
end
if not _0x44B7() then return _0xF072,"Drop dibatalkan"end
return _0xF072, nil
endlocal function _0x2F1B(_0xF97C, _0x962E, say)
say = say or function() end
local _0xDF0A, _0x80D9 = _0xBA81()
local _0xBC12 = _0x5B75.worldName()
if _0xDF0A ==""then _0xDF0A = _0xBC12 end
if _0xECF0.DropX < 0 and not _0x80D9 and _0xDF0A == _0xBC12 then
say("Titik drop belum diatur (tab Titik Drop), drop dilewati")
return false,"nopoint"end
_0xECF0.Traveling = true
local _0x8320 = os.clock() + 2
while _0x962E() and _0x2FB0.Pool and _0x2FB0.Pool.busy > 0 and os.clock() < _0x8320 do task.wait(0.05) end
if not _0x962E() or (_0x2FB0.Pool and _0x2FB0.Pool.busy > 0) then
_0xECF0.Traveling = false
_0x7C3D()
return false,"Collect belum selesai / sesi dihentikan; drop ditunda"end
local _0xD7E1 = _0xDF0A ~= _0xBC12
local _0xF64E, _0x3330 = true, nil
if _0xD7E1 or _0x80D9 then
say("Pergi ke ".. _0xDF0A .. (_0x80D9 and (":".. _0x80D9) or"") .." untuk drop")
local _0xBDCB, _0x8599 = _0x2854(_0xDF0A, _0x80D9)
if not _0xBDCB then _0xF64E, _0x3330 = false,"gagal masuk ".. _0xDF0A .." (".. tostring(_0x8599) ..")"end
end
if _0xF64E and _0x962E() and _0xECF0.DropX >= 0 then
say(("Jalan ke posisi drop (%d,%d)"):format(_0xECF0.DropX, _0xECF0.DropY))
if not _0x1FC4(_0xECF0.DropX, _0xECF0.DropY, 60) then _0xF64E, _0x3330 = false,"tidak bisa jalan ke posisi drop"end
end
if _0xF64E and _0x962E() then
local _0x7827 = _0x4C2C()
if _0x7827 then _0xECF0.Zone = { _0x954B = _0x5B75.worldName(), _0x5409 = _0x7827.x, _0x6665 = _0x7827.y - 0.475 } end
for _0xF439, _0x91CB in ipairs(_0xF97C) do
if not _0x962E() then break end
local _0xB5AC, _0x8599 = _0xEAA2(_0x91CB.id, _0x91CB.n, _0x962E)
_0x91CB.got = _0xB5AC
if _0xB5AC > 0 then
local _0xE842 = ("Drop %s x%d di %s"):format(_0x949D(_0x91CB.id), _0xB5AC, _0x5B75.worldName())
say(_0xE842)
_0x8021("Drop", _0xE842, 4)
_0x2479.send("pabrik", _0xE842)
end
if _0x8599 then
_0xF64E, _0x3330 = false, _0x8599
break
end
end
end
if not _0x962E() then _0xF64E, _0x3330 = false,"Drop dibatalkan"end
if not _0xF64E then
say("Drop gagal: ".. tostring(_0x3330))
_0x8021("Drop","Drop gagal: ".. tostring(_0x3330), 5)
_0x2479.send("pabrik","Drop gagal: ".. tostring(_0x3330))
endif _0xD7E1 and _0xBC12 ~=""and _0x962E() then
say("Pulang ke ".. _0xBC12)
local _0x66DE = _0x2854(_0xBC12, nil)
if not _0x66DE and _0x962E() then
task.wait(5)
_0x66DE = _0x2854(_0xBC12, nil)
end
if not _0x66DE then
_0xECF0.Traveling = false
_0x7C3D()
return false,"home"end
end
_0xECF0.Traveling = false
_0x7C3D()
return _0xF64E, _0x3330
end
_0x927E.dropTrip = _0x2F1Bfunction _0xECF0.pointSet()
if _0xECF0.DropX >= 0 then return true end
local _0xDF0A, _0x80D9 = _0xBA81()
if _0x80D9 then return true end
return _0xDF0A ~=""and _0xDF0A ~= _0x5B75.worldName()
end
local function _0x0786(_0xE60E, _0x66F3, _0x962E)
local _0xF97C = { { _0x2010 = _0xE60E, _0x66F3 = _0x66F3 } }
local _0xF64E, _0x3330 = _0x2F1B(_0xF97C, _0x962E, function(_0x615D) _0xECF0.Status = _0x615D end)
_0xECF0.Dropped += _0xF97C[1].got or 0
if _0x3330 =="home"then
if _0xECF0.stop then _0xECF0.stop("Gagal pulang ke world pabrik ".. tostring(_0xECF0.Home)) end
elseif not _0xF64E then
_0xECF0.DropError = tostring(_0x3330)
_0xECF0.DropOffUntil = os.clock() + ((_0x3330 =="nopoint") and 60 or 120)
else
_0xECF0.DropError, _0xECF0.DropOffUntil = nil, 0
end
endtask.spawn(function()
while _0xCA76() do
task.wait(2)
local _0xE60E = _0x5D82.SelectedId and _0x4C00(_0x5D82.SelectedId)
if _0x5D82.Running and not _0x5D82.Override and _0xECF0.pointSet() and not _0x5D82.DropPause and not _0x2FB0.WorkBusy
and (not _0x2FB0.Pool or _0x2FB0.Pool.busy == 0) and _0xE60E
and os.clock() >= (_0x5D82.DropOffUntil or 0) then
local _0x66F3 = _0xC90B(_0xE60E)
local _0x7827 = _0x4C2C()
if _0x7827 and _0x66F3 >= _0x5D82.SeedDropAt and _0x66F3 > _0x5D82.SeedKeep then
local _0xF3CD, _0x3A74 = _0x6B94(_0x7827)
local _0x5431 = _0x5D82.RunId
local function _0x962E() return _0x5D82.Running and _0xCA76() and _0x5D82.RunId == _0x5431 end
_0x5D82.DropPause = true
task.wait(0.8)local _0xF97C = { { _0x2010 = _0xE60E, _0x66F3 = _0x66F3 - _0x5D82.SeedKeep } }
local _0xF64E, _0x3330 = _0x2F1B(_0xF97C, _0x962E, function(_0x615D) _0x5D82.LastAction = _0x615D end)
_0x5D82.Dropped += _0xF97C[1].got or 0
if not _0xF64E then
_0x5D82.DropError = tostring(_0x3330)
_0x5D82.DropOffUntil = os.clock() + ((_0x3330 =="nopoint") and 60 or 120)
else _0x5D82.DropError, _0x5D82.DropOffUntil = nil, 0 end
if _0x3330 =="home"then
_0xF604("Gagal pulang ke world farm")
elseif _0x962E() then
_0x5D82.LastAction = ("Jalan balik ke posisi farm (%d,%d)"):format(_0xF3CD, _0x3A74)
if not _0x1FC4(_0xF3CD, _0x3A74, 60) then
_0xF604("Gagal balik ke posisi farm, Auto Farm dihentikan")
else
_0x5D82.LastAction = _0x5D82.DropError and ("Drop tertunda: ".. _0x5D82.DropError) or"Lanjut Auto Farm"end
end
_0x5D82.DropPause = false
end
end
end
end)
local _0x5621 = { panen ="PANEN", ambil ="AMBIL BLOCK", tanam ="TANAM", ["break"] ="BREAK", tunggu ="TUNGGU"}
local function _0x3E79()
return _0xECF0.BreakX >= 0 and next(_0xECF0.Tiles) ~= nil and os.clock() >= (_0xECF0.BreakFailUntil or 0)
endlocal function _0x9A34(_0x756B)
if not _0x756B.live() or not _0xCA76() then return"wait"end
local _0x0F89, _0xBAF3 = _0xC90B(_0x756B.seed), _0xC90B(_0x756B.block)
_0x756B.phase = _0x756B.phase or"panen"_0xECF0.Phase = _0x5621[_0x756B.phase]if _0x756B.drop and _0xECF0.Drop and _0x0F89 >= _0xECF0.DropAt and _0x0F89 > _0xECF0.Keep
and os.clock() >= (_0xECF0.DropOffUntil or 0) then
_0x0786(_0x756B.seed, _0x0F89 - _0xECF0.Keep, _0x756B.live)
return"drop"end
if _0x756B.phase ~="panen"and _0xECF0.wantHarvest(_0x756B) then
_0x756B.phase ="panen"_0xECF0.Phase ="PANEN"_0xECF0.Status ="Pohon siap, lanjut panen"end
if _0x756B.phase =="panen"thenif _0xBAF3 >= _0x65ED - 20 or _0x0F89 >= _0x65ED - 20 then
_0x756B.phase ="ambil"return"next"end
_0x6EC8 = _0x306E(_0x756B, true, false)
local _0x2DAE = _0xC054()
if _0x2DAE =="idle"then
_0x756B.readyCheckAt = 0if (_0x756B.readyCount or 0) > 0 then_0x756B.harvestRetryAt = os.clock() + 1
_0x9929 = nil
end
_0x756B.idleAt = os.clock()
_0x756B.phase ="ambil"return"next"end
return _0x2DAE
end
if _0x756B.phase =="ambil"then
local _0x2DAE = _0xECF0.takeBlocks(_0x756B)
if _0x2DAE =="harvest"then _0x756B.phase ="panen"; return"next"end
if _0x2DAE =="cancelled"then return"wait"end
if _0x2DAE =="picked"then return"take"end
if _0x2DAE =="waiting"then
_0x3422(200)
return"wait"end
_0x756B.phase ="break"return"next"end
if _0x756B.phase =="break"then
local _0x0991
if _0x756B.breakMode =="always"then
_0x0991 = _0xBAF3 > 0 and _0x0F89 < _0x65ED
elselocal _0xF439, _0x67AE = _0x282D(_0x756B.whole)
_0x0991 = _0xBAF3 > 0 and _0x0F89 < _0x8152 and _0x67AE == nil
end
if _0x0991 and _0x3E79() then
local _0xF64E, _0x3330 = _0x15BE(_0x756B)
if _0xF64E then
if _0x3330 =="harvest"then
_0x756B.phase ="panen"return"next"end
_0x756B.phase ="tanam"return"break"end
end
_0x756B.phase ="tanam"return"next"end
if _0x756B.phase =="tanam"then
if _0x0F89 > 0 then
_0x6EC8 = _0x306E(_0x756B, false, true)
local _0x2DAE = _0xC054()
if _0x2DAE =="harvest"then _0x756B.phase ="panen"; return"next"end
if _0x2DAE ~="idle"then return _0x2DAE end
end
_0x756B.plantAt = os.clock()
_0x756B.takeCheckAt = os.clock() + 1
_0x756B.phase ="tunggu"return"next"endlocal _0x66F3, _0x67AE = _0x282D(_0x756B.whole)
if _0x756B.breakMode =="always"and _0xBAF3 > 0 and _0x0F89 < _0x65ED and _0x3E79() then
_0x756B.phase ="ambil"return"next"end
if (_0x0F89 > 0 and os.clock() - (_0x756B.plantAt or 0) > 10)
or (_0xBAF3 < _0x65ED and os.clock() >= (_0x756B.takeCheckAt or 0)) then_0x756B.takeCheckAt = os.clock() + 1
_0x756B.phase ="ambil"return"next"end
return"idle", _0x67AE, _0x66F3
end
local function _0xBC7F(_0x804A)
_0x804A = math.max(0, math.ceil(_0x804A or 0))
if _0x804A >= 60 then return ("%dm %dd"):format(_0x804A // 60, _0x804A % 60) end
return _0x804A .." dtk"end
function _0xECF0.harvestStatus()
if not _0x1DCC.World then return"Belum masuk world"end
if not _0x1DCC.Trees then return"Waktu pohon belum terbaca"end
local _0x66F3, _0xF439, _0x25C5, _0xB61F = _0x282D(_0xECF0.WholeWorld)
local _0xB168 = (_0xB61F or 0) > 0 and (" | waktu %d pohon belum terbaca"):format(_0xB61F) or""if not _0x25C5 then return"Belum ada waktu pohon terbaca".. _0xB168 end
local _0x4276 = math.max(0, _0x25C5.at - workspace:GetServerTimeNow())
local _0x7FF7 = _0x66F3 > 0 and (_0x66F3 .." pohon READY") or ("siap ".. _0xBC7F(_0x4276))
return ("%s | acuan (%d,%d) %s%s"):format(_0x7FF7, _0x25C5.x, _0x25C5.y, _0x949D(_0x25C5.id), _0xB168)
end
local function _0x7BB9(_0x5431)
local function _0x962E() return _0xECF0.Running and _0xCA76() and _0xECF0.RunId == _0x5431 end
local _0x756B = { _0xE60E = _0xECF0.SeedId, _0x9D38 = _0xECF0.BlockId, _0x48DB = true, breakMode ="always", _0x962E = _0x962E }
while _0x962E() do
task.wait()
_0x756B.whole = _0xECF0.WholeWorld
local _0x3732 = _0x5B75.worldName()
if not _0xECF0.Traveling and _0xECF0.Home ~=""and _0x3732 ~= _0xECF0.Home then
_0xECF0.Status ="Bukan di world pabrik (".. _0xECF0.Home .."), menunggu..."task.wait(2)
continue
end
local _0x2DAE, _0x1AB5, _0x1A95 = _0x9A34(_0x756B)
if _0x2DAE ~="idle"then _0x756B.stuckAt = nil end
if _0x2DAE =="idle"then
local _0x0F89, _0xBAF3 = _0xC90B(_0x756B.seed), _0xC90B(_0x756B.block)
if not _0x1AB5 and (_0x1A95 or 0) == 0 and _0x0F89 <= 0 and _0xBAF3 <= 0
and not _0x756B.takePending and not _0x756B.takeUnreadable then
if _0xECF0.stop then _0xECF0.stop("Seed & block habis, tidak ada pohon tumbuh") end
break
end
if (_0x1A95 or 0) > 0 then_0x756B.stuckAt = _0x756B.stuckAt or os.clock()
if os.clock() - _0x756B.stuckAt > 30 then
_0x756B.stuckAt = nil
table.clear(_0xECF0.Skip)
table.clear(_0x43C8)
_0x9929 = nil
end
end
if _0x0F89 >= _0x65ED - 20 and not (_0xECF0.Drop and _0xECF0.pointSet()) then
_0xECF0.Status = ("Seed hampir penuh (%d): atur titik drop & nyalakan Auto drop seed"):format(_0x0F89)
elseif (_0x1A95 or 0) > 0 then
_0xECF0.Status = _0x1A95 .." pohon siap belum terjangkau, dicoba lagi"elseif _0x0F89 <= 0 and _0xBAF3 <= 0 and (_0x756B.takePending or _0x756B.takeUnreadable) then
_0xECF0.Status = _0x756B.takeStatus or"Menunggu block hasil panen yang bisa diambil"elseif _0x1AB5 then
_0xECF0.Status ="Menunggu pohon siap ±".. _0xBC7F(_0x1AB5)
elseif _0xBAF3 > 0 and (_0xECF0.BreakX < 0 or next(_0xECF0.Tiles) == nil) then
_0xECF0.Status ="Ada block tapi posisi / tile break belum diatur"elseif _0x0F89 > 0 then
_0xECF0.Status ="Dirt Farm penuh, menunggu"else
_0xECF0.Status ="Menunggu..."end
if not _0x3422(250) then break end
end
end
_0x0D00()
end
function _0xECF0.stop(_0x3B8B)
_0xECF0.Running = false
_0xECF0.Traveling = false
if _0x5D82.Override then _0x5D82.Running = false end
_0x7C3D()
_0x0D00()
_0xECF0.Status = _0x3B8B or"Dihentikan"if _0x6FB2.PabrikToggle then pcall(function() _0x6FB2.PabrikToggle:Set(false) end) end
if _0x3B8B then
_0x8021("Pabrik", _0x3B8B, 5)
if not string.find(_0x3B8B,"^Dihentikan") then _0x2479.send("pabrik","Pabrik berhenti: ".. _0x3B8B) end
end
end
function _0xECF0.start()
if _0xECF0.Running then return end
local _0x8599
local _0x9D38 = _0xC232(_0xECF0.SeedId)
if not _0x1DCC.World then
_0x8599 ="Data world belum ketemu. Tekan 'Hubungkan ke game'"elseif not _0x4CD3 and not _0x86C8.bindMenu() then
_0x8599 = _0x86C8.Error or"Kontrol gerak game belum terhubung"elseif not _0x4C2C() then
_0x8599 ="Kamu belum masuk world"elseif not _0xECF0.SeedId then
_0x8599 ="Pilih seed pabrik dulu"elseif not _0x9D38 then
_0x8599 ="Block dari seed ini tidak ketemu"elseif not _0xECF0.WholeWorld and #_0x920A() == 0 then
_0x8599 ="Atur Dirt Farm dulu (tab Dirt Farm)"end
if _0x8599 then
_0x8021("Pabrik", _0x8599, 4)
if _0x6FB2.PabrikToggle then pcall(function() _0x6FB2.PabrikToggle:Set(false) end) end
return
end
if _0x5D82.Running and not _0x5D82.Override then _0xF604("Dihentikan karena Pabrik dimulai") end
if _0xD222.Running then _0xD467("Dihentikan karena Pabrik dimulai") end
if _0x9715.Running then _0x34F2("Dihentikan karena Pabrik dimulai") end
if _0xD808.Running and _0xD808.stop then _0xD808.stop("Dihentikan karena Pabrik dimulai") end
if not _0x1DCC.Trees then _0x525C() end
_0xECF0.BlockId = _0x9D38
_0xECF0.Home = _0x5B75.worldName()
table.clear(_0xECF0.Skip)
table.clear(_0xECF0.Row)
table.clear(_0x43C8)
_0xECF0.DropOffUntil, _0xECF0.BreakFailUntil = 0, 0
_0xECF0.Running = true
_0xECF0.RunId = (_0xECF0.RunId or 0) + 1
_0xECF0.Status ="Mulai: panen ready -> ambil block -> break -> tanam"_0x433F()
if _0x6FB2.PabrikToggle then pcall(function() _0x6FB2.PabrikToggle:Set(true) end) end
local _0x2010 = _0xECF0.RunId
task.spawn(function()
local _0xF64E, _0x7BA0 = pcall(_0x7BB9, _0x2010)
if not _0xF64E then
warn("[ziey HUB] Pabrik error: ".. tostring(_0x7BA0))
if _0xECF0.Running then _0xECF0.stop("Error: ".. tostring(_0x7BA0)) end
end
end)
endlocal _0xC665, _0x4B83 ="Isi stock dari drop","Kosongkan sampai habis"_0x5F2F.Fail = {}function _0x5F2F.point()
local _0xCDA3 = tostring(_0x5F2F.Point or""):gsub("%s","")
local _0xDF0A, _0x80D9 = string.match(_0xCDA3,"^([^:|]*)[:|](.+)$")
if not _0xDF0A then _0xDF0A = _0xCDA3 end
_0xDF0A = string.upper(_0xDF0A):gsub("[^A-Z0-9]","")
if _0x80D9 ==""then _0x80D9 = nil end
return _0xDF0A, _0x80D9
endfunction _0x5F2F.machines()
local _0x9F6E = _0x1DCC.World
local _0xDB37 = {}
if not _0x9F6E then return _0xDB37 end
local _0x817E = rawget(_0x9F6E,"vends")
local _0xD026 = rawget(_0x9F6E,"vendOwner")
for _0x6665 = 0, _0x9F6E.h - 1 do
local _0x05DF = _0x9F6E.fg[_0x6665]
if _0x05DF then
for _0x5409 = 0, _0x9F6E.w - 1 do
local _0x2010 = _0x05DF[_0x5409] or 0
local _0x91CB = _0x2010 ~= 0 and _0xD7DB[_0x2010]
if _0x91CB and _0x91CB.vend then
local _0xEED7, _0xE728 = true, true
if type(_0xD026) =="function"then _0xEED7, _0xE728 = pcall(_0xD026, _0x5409, _0x6665) end
if _0xEED7 and _0xE728 then
local _0x2DDF = nil
if type(_0x817E) =="table"and type(_0x817E.get) =="function"then
local _0xEB08, _0x97A1 = pcall(_0x817E.get, _0x5409, _0x6665)
if _0xEB08 and type(_0x97A1) =="table"then _0x2DDF = _0x97A1 end
end
_0x2DDF = _0x2DDF or {}
if not _0x2DDF.shop then
_0xDB37[#_0xDB37 + 1] = {
_0x5409 = _0x5409, _0x6665 = _0x6665, _0xC8CC = _0x2010, _0x2010 = _0x2DDF.id, stock = tonumber(_0x2DDF.stock) or 0,
_0x0030 = (_0x2010 == 9268) and 10398 or 5199,
}
end
end
end
end
end
end
return _0xDB37
endfunction _0x5F2F.sellable(_0x2010)
if type(_0x2010) ~="number"or _0x2010 == 112 then return false end
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB or _0x91CB.kind =="tool"then return false end
if _0x91CB.lock or _0x91CB.area or _0x91CB.guildLock or _0x91CB.untradeable or _0x91CB.vend or _0x91CB.hub then return false end
local _0xEE7E = tostring(_0x91CB.name or""):lower()
if _0xEE7E =="gems"or _0xEE7E =="gem"then return false end
return true
end
function _0x5F2F.allow(_0x2010)
if not _0x5F2F.sellable(_0x2010) then return false end
if #_0x5F2F.Items > 0 and not table.find(_0x5F2F.Items, _0x2010) then return false end
return true
end
function _0x5F2F.filtered()
return #_0x5F2F.Items > 0
endfunction _0x5F2F.labels(machines)
local _0xC95D = _0x5F2F.Seen
local _0xE35E = { _0xD81C = 0, _0x48DB = 0, vend = 0 }
for _0xF439, _0xBF65 in ipairs(machines or {}) do
if _0xBF65.id then
_0xC95D[_0xBF65.id] = true
_0xE35E.vend += 1
end
endif _0x1DCC.Inv then
local _0x5A8E, _0xC225 = pcall(function() return _0x1DCC.Inv.slots end)
if _0x5A8E and type(_0xC225) =="table"then
for _0xF439, slot in pairs(_0xC225) do
local _0x2010 = type(slot) =="table"and tonumber(slot.id) or nil
if _0x2010 and (tonumber(slot.n) or 1) > 0 then
_0xC95D[_0x2010] = true
_0xE35E.inv += 1
end
end
end
endlocal _0x026D = _0x2FB0.list
if type(_0x026D) =="table"then
local _0x66F3, _0x1D5B = 0, {}
for _0xF439, _0x2DDF in pairs(_0x026D) do
_0x66F3 += 1
if _0x66F3 > 600 then break end
local _0x2010 = type(_0x2DDF) =="table"and tonumber(_0x2DDF.id) or nil
if _0x2010 and not _0x1D5B[_0x2010] then
_0x1D5B[_0x2010] = true
_0xC95D[_0x2010] = true
_0xE35E.drop += 1
end
end
end
for _0xF439, _0x2010 in ipairs(_0x5F2F.Items) do _0xC95D[_0x2010] = true end
local _0x1D5B = {}
for _0x2010 in pairs(_0xC95D) do
if _0x5F2F.sellable(_0x2010) then _0x1D5B[#_0x1D5B + 1] = _0x2010 end
end
table.sort(_0x1D5B)
local _0x4394, _0xC44B = {}, {}
for _0xF439, _0x2010 in ipairs(_0x1D5B) do
local _0x9C57 = ("%s [%d]"):format(tostring(_0x949D(_0x2010)), _0x2010)
_0x4394[#_0x4394 + 1] = _0x9C57
if table.find(_0x5F2F.Items, _0x2010) then _0xC44B[#_0xC44B + 1] = _0x9C57 end
end
return _0x4394, _0xC44B, _0xE35E
end
function _0x5F2F.call(...)
local _0x9F6E = _0x1DCC.World
local _0x509A = _0x9F6E and rawget(_0x9F6E,"vendCall")
if type(_0x509A) ~="function"then return false end
local _0xF64E, _0xD6CD = pcall(_0x509A, ...)
return _0xF64E and _0xD6CD == true
endfunction _0x5F2F.goTo(_0xBF65)
local function _0xA4DF(_0x5B56)
return _0x5B56 ~= nil and math.abs(_0x5B56.x - (_0xBF65.x + 0.5)) <= 0.84 and math.abs((_0x5B56.y - 0.5) - (_0xBF65.y + 0.5)) <= 0.58
end
if _0xA4DF(_0x4C2C()) then return true end
if _0x1FC4(_0xBF65.x, _0xBF65.y, 40) and _0xA4DF(_0x4C2C()) then return true end
for _0xF439, _0x935C in ipairs({ -1, 1 }) do
if _0x1FC4(_0xBF65.x + _0x935C, _0xBF65.y, 30) then
local _0x1981 = os.clock()
_0x86C8.active = true
while _0xCA76() and os.clock() - _0x1981 < 1 do
task.wait()
local _0x5B56 = _0x4C2C()
if not _0x5B56 then break end
_0x2DCC(_0x5B56, _0xBF65.x + 0.5 + _0x935C * 0.55, 0.06)
if _0xA4DF(_0x5B56) and _0x5B56.grounded then break end
end
_0x0D00()
if _0xA4DF(_0x4C2C()) then return true end
end
end
return false
end
function _0x5F2F.sortNear(_0x026D)
local _0x7827 = _0x4C2C()
if not _0x7827 then return _0x026D end
table.sort(_0x026D, function(_0xE034, _0x783C)
local _0x14B7 = math.abs(_0xE034.x + 0.5 - _0x7827.x) + 2 * math.abs(_0xE034.y + 1 - _0x7827.y)
local _0x94BE = math.abs(_0x783C.x + 0.5 - _0x7827.x) + 2 * math.abs(_0x783C.y + 1 - _0x7827.y)
return _0x14B7 < _0x94BE
end)
return _0x026D
endfunction _0x5F2F.stockAll(_0x962E)
local _0x026D = _0x5F2F.sortNear(_0x5F2F.machines())
local _0xFB62 = {}
for _0xF439, _0xBF65 in ipairs(_0x026D) do
if _0xBF65.id and _0xBF65.stock > 0 then _0xFB62[_0xBF65.id] = true end
end
local _0xC49C, _0xC8B0 = 0, 0
for _0xF439, _0xBF65 in ipairs(_0x026D) do
if not _0x962E() then break end
local _0x2010 = (_0xBF65.id and _0xBF65.stock > 0) and _0xBF65.id or nil
if _0x2010 and not _0x5F2F.allow(_0x2010) then _0x2010 = nil end
local _0x66F3 = 0
if _0x2010 then_0x66F3 = math.min(_0xC90B(_0x2010), _0xBF65.cap - _0xBF65.stock)
elseif not (_0xBF65.id and _0xBF65.stock > 0) thenlocal _0x83F9 = {}
if #_0x5F2F.Items > 0 then
for _0xF439, pid in ipairs(_0x5F2F.Items) do _0x83F9[#_0x83F9 + 1] = pid end
else
for pid, _0x5F17 in pairs(_0x5F2F.Picked) do
if _0x5F17 > 0 then _0x83F9[#_0x83F9 + 1] = pid end
end
table.sort(_0x83F9)
end
for _0xF439, pid in ipairs(_0x83F9) do
if not _0xFB62[pid] and _0x5F2F.allow(pid) and _0xC90B(pid) > 0 then
_0x2010 = pid
break
end
end
if _0x2010 then
_0x66F3 = math.min(_0xC90B(_0x2010), _0xBF65.cap)
if #_0x5F2F.Items == 0 then _0x66F3 = math.min(_0x66F3, _0x5F2F.Picked[_0x2010] or 0) end
end
end
if _0x2010 and _0x66F3 > 0 then
_0xC8B0 += 1
_0x5F2F.Status = ("Ke vending (%d,%d): tambah %s x%d"):format(_0xBF65.x, _0xBF65.y, _0x949D(_0x2010), _0x66F3)
if _0x5F2F.goTo(_0xBF65) then
if _0x5F2F.call("stock", _0xBF65.x, _0xBF65.y, _0x2010, _0x66F3) then
_0xFB62[_0x2010] = true
if _0x5F2F.Picked[_0x2010] then
_0x5F2F.Picked[_0x2010] -= _0x66F3
if _0x5F2F.Picked[_0x2010] <= 0 then _0x5F2F.Picked[_0x2010] = nil end
end
_0x5F2F.Stocked += _0x66F3
_0xC49C += _0x66F3
_0x5F2F.Status = ("Stock %s +%d di (%d,%d)"):format(_0x949D(_0x2010), _0x66F3, _0xBF65.x, _0xBF65.y)
task.wait(0.3)
else
_0x5F2F.Status = ("Gagal tambah stock di (%d,%d)"):format(_0xBF65.x, _0xBF65.y)
task.wait(0.5)
end
else
_0x5F2F.Status = ("Tidak bisa ke vending (%d,%d)"):format(_0xBF65.x, _0xBF65.y)
end
end
end
return _0xC49C, _0xC8B0
endfunction _0x5F2F.wanted()
local _0x0991, _0x59C7, _0x7AF2 = {}, {}, 0
for _0xF439, _0xBF65 in ipairs(_0x5F2F.machines()) do
if _0xBF65.id and _0xBF65.stock > 0 then
_0x59C7[_0xBF65.id] = true
if _0xBF65.stock < _0xBF65.cap and _0x5F2F.allow(_0xBF65.id) then _0x0991[_0xBF65.id] = true end
else
_0x7AF2 += 1
end
end
return _0x0991, _0x7AF2, _0x59C7
endfunction _0x5F2F.travel(_0xDF0A, _0x80D9)
if _0xDF0A == _0x5B75.worldName() and not _0x80D9 then return true end
local _0xF64E, _0x8599 = _0x2854(_0xDF0A, _0x80D9)
if _0xF64E thenlocal _0x1981 = os.clock()
while os.clock() - _0x1981 < 4 and not (_0x4C2C() and _0x5B75.worldName() == _0xDF0A) do task.wait(0.1) end
task.wait(0.2)
end
return _0xF64E, _0x8599
endfunction _0x5F2F.pickHere(_0x962E, _0x0991, _0x7AF2, _0x59C7)
local _0x964C = {}local _0x43F1 = 0
for _0x2010, _0x5F17 in pairs(_0x5F2F.Picked) do
if not _0x59C7[_0x2010] and _0x5F17 > 0 and _0xC90B(_0x2010) > 0 then _0x43F1 += 1 end
end
local function _0x1FE6(_0x2DDF)
if not _0x5F2F.allow(_0x2DDF.id) then return false end
if not _0x0991[_0x2DDF.id] then
if _0x59C7[_0x2DDF.id] or _0x7AF2 <= 0 then return false endif _0x964C[_0x2DDF.id] == nil and not (_0x5F2F.Picked[_0x2DDF.id] and _0xC90B(_0x2DDF.id) > 0) then
if _0x43F1 >= _0x7AF2 then return false end_0x43F1 += 1
end
end
if _0x964C[_0x2DDF.id] == nil then _0x964C[_0x2DDF.id] = _0xC90B(_0x2DDF.id) end
return true
end
_0x38E9.NoZone = true_0x38E9.fetchDrops(_0x962E, 999, _0x1FE6, 240)
_0x38E9.NoZone = false
local _0xB5AC = 0
for _0x2010, _0x66F3 in pairs(_0x964C) do
local _0xA3FF = _0xC90B(_0x2010) - _0x66F3
if _0xA3FF > 0 then
_0xB5AC += _0xA3FF
_0x5F2F.Picked[_0x2010] = (_0x5F2F.Picked[_0x2010] or 0) + _0xA3FF
end
end
return _0xB5AC
endfunction _0x5F2F.dropTrip(_0x962E, _0xBC12)
local _0xDF0A, _0x80D9 = _0x5F2F.point()
if _0xDF0A ==""then _0xDF0A = _0xBC12 end
local _0xF97C = {}
for _0x2010, _0x5F17 in pairs(_0x5F2F.Carry) dolocal _0x66F3 = math.min(_0x5F17, _0xC90B(_0x2010))
if _0x66F3 > 0 then _0xF97C[#_0xF97C + 1] = { _0x2010 = _0x2010, _0x66F3 = _0x66F3 } end
end
if #_0xF97C == 0 then return true end
_0x5F2F.Status ="Pergi ke titik drop ".. _0xDF0A .. (_0x80D9 and (":".. _0x80D9) or"")
local _0xF64E, _0x8599 = _0x5F2F.travel(_0xDF0A, _0x80D9)
if not _0xF64E then
_0x5F2F.Status ="Gagal ke titik drop: ".. tostring(_0x8599)
return false
end
if not _0x5F2F.goSpot(_0x962E) then return false end
for _0xF439, _0x91CB in ipairs(_0xF97C) do
if not _0x962E() then break end
local _0xB5AC, _0xDE85 = _0xEAA2(_0x91CB.id, _0x91CB.n, _0x962E)
_0x5F2F.Dropped += _0xB5AC
if _0xB5AC > 0 then
local _0xE842 = ("Drop %s x%d di %s"):format(_0x949D(_0x91CB.id), _0xB5AC, _0x5B75.worldName())
_0x5F2F.Status = _0xE842
_0x2479.send("pabrik","Vending: ".. _0xE842)
end
if _0xDE85 then _0x5F2F.Status ="Drop: ".. tostring(_0xDE85) end
end
if _0x5B75.worldName() ~= _0xBC12 and _0x962E() then
_0x5F2F.Status ="Pulang ke ".. _0xBC12
local _0x66DE = _0x5F2F.travel(_0xBC12, nil)
if not _0x66DE and _0x962E() then
task.wait(5)
_0x66DE = _0x5F2F.travel(_0xBC12, nil)
end
if not _0x66DE then return false,"home"end
end
return true
endfunction _0x5F2F.goSpot(_0x962E)
if _0x5F2F.DropX < 0 or not _0x962E() then return true end
local _0x7827 = _0x4C2C()
if _0x7827 then
local _0xF3CD, _0x3A74 = _0x6B94(_0x7827)
if _0xF3CD == _0x5F2F.DropX and _0x3A74 == _0x5F2F.DropY then return true end
end
_0x5F2F.Status = ("Jalan ke posisi drop vending (%d,%d)"):format(_0x5F2F.DropX, _0x5F2F.DropY)
if _0x1FC4(_0x5F2F.DropX, _0x5F2F.DropY, 60) then return true end
_0x5F2F.Status = ("Tidak bisa jalan ke posisi drop vending (%d,%d)"):format(_0x5F2F.DropX, _0x5F2F.DropY)
return false
endfunction _0x5F2F.stepAway(_0x962E)
local _0x7827 = _0x4C2C()
local _0x026D = _0x2FB0.list
if not _0x7827 or type(_0x026D) ~="table"or not _0x962E() then return false end
local _0xA4DF = false
for _0xF439, _0x2DDF in pairs(_0x026D) do
if type(_0x2DDF) =="table"and _0x2DDF.armed == false and type(_0x2DDF.x) =="number"and type(_0x2DDF.y) =="number"and _0x5F2F.allow(_0x2DDF.id) and math.abs(_0x2DDF.x - _0x7827.x) < 1.8 and math.abs(_0x2DDF.y - (_0x7827.y - 0.5)) < 1.8 then
_0xA4DF = true
break
end
end
if not _0xA4DF then return false end
local _0xF3CD, _0x3A74 = _0x6B94(_0x7827)
for _0xF439, _0x935C in ipairs({ 3, -3, 2, -2, 4, -4 }) do
if not _0x962E() then return false end
_0x5F2F.Status ="Menjauh dari drop sendiri supaya bisa dipungut"if _0x1FC4(_0xF3CD + _0x935C, _0x3A74, 8) then
_0x5F2F.sleep(0.6, _0x962E)
return true
end
end
return false
endfunction _0x5F2F.waitWorld(_0xBC12, _0x962E)
local _0x1981 = os.clock()
local _0x026D = {}
while _0x962E() and os.clock() - _0x1981 < 25 do
if _0x5B75.worldName() == _0xBC12 and _0x4C2C() then
_0x026D = _0x5F2F.machines()
if #_0x026D > 0 then return _0x026D end
end
task.wait(0.5)
end
return _0x026D
endfunction _0x5F2F.hasPoint()
local _0xDF0A, _0x80D9 = _0x5F2F.point()
return _0xDF0A ~=""or _0x80D9 ~= nil or _0x5F2F.DropX >= 0
endfunction _0x5F2F.soft(_0x3B8B, _0x962E)
_0x5F2F.Soft = (_0x5F2F.Soft or 0) + 1
if _0x5F2F.Soft > 8 then
_0x5F2F.stop(_0x3B8B)
return false
end
_0x5F2F.Status = _0x3B8B .. (" - coba lagi %d/8"):format(_0x5F2F.Soft)
_0x5F2F.sleep(math.min(2 + _0x5F2F.Soft * 2, 15), _0x962E)
return _0x962E()
endfunction _0x5F2F.sleep(_0x804A, _0x962E)
local _0x1981 = os.clock()
while _0x962E() and os.clock() - _0x1981 < _0x804A do task.wait(0.25) end
end
local function _0x468D(_0x5431)
local function _0x962E() return _0x5F2F.Running and _0xCA76() and _0x5F2F.RunId == _0x5431 end
local _0xBC12 = _0x5B75.worldName()
_0x5F2F.Home = _0xBC12
_0x5F2F.Soft = 0
if #_0x5F2F.waitWorld(_0xBC12, _0x962E) == 0 then
if _0x962E() then _0x5F2F.stop("Tidak ada vending milikmu di world ini (jalankan di world vending)") end
return
end
while _0x962E() do
task.wait()
if _0x5F2F.Mode == _0x4B83 thenif _0x5B75.worldName() ~= _0xBC12 then
if not _0x5F2F.travel(_0xBC12, nil) then
if not _0x5F2F.soft("Gagal pulang ke world vending ".. _0xBC12, _0x962E) then break end
continue
end
end
local _0x7628 = _0x5F2F.hasPoint()
local _0x026D = {}
local _0x56D4 = _0x5F2F.waitWorld(_0xBC12, _0x962E)
if #_0x56D4 == 0 and _0x962E() then
if not _0x5F2F.soft("Vending milikmu di ".. _0xBC12 .." tidak terbaca", _0x962E) then break end
pcall(_0x2854, _0xBC12, nil)continue
end
local _0x7188 = {}
for _0xF439, _0xBF65 in ipairs(_0x56D4) do
if _0xBF65.id and _0xBF65.stock > 0 then
if not _0x5F2F.allow(_0xBF65.id) then
_0x7188[#_0x7188 + 1] = _0x949D(_0xBF65.id) .." x".. _0xBF65.stock
elseif (_0x5F2F.Fail[_0xBF65.x ..",".. _0xBF65.y] or 0) < 4 then
_0x026D[#_0x026D + 1] = _0xBF65
end
end
end
if #_0x026D == 0 and not _0x5F2F.Confirm then_0x5F2F.Confirm = true
_0x5F2F.Status ="Cek ulang isi vending..."_0x5F2F.sleep(1.5, _0x962E)
continue
end
_0x5F2F.Confirm = false
if #_0x026D == 0 thenif _0x7628 and next(_0x5F2F.Carry) then
local _0xF64E, _0x3330 = _0x5F2F.dropTrip(_0x962E, _0xBC12)
if _0x3330 =="home"or not _0xF64E then
if not _0x5F2F.soft(_0x3330 =="home"and ("Gagal pulang ke world vending ".. _0xBC12)
or ("Vending kosong, tapi drop gagal: ".. _0x5F2F.Status), _0x962E) then break end
continue
end
_0x5F2F.Soft = 0
end
table.clear(_0x5F2F.Carry)
if next(_0x5F2F.Fail) then
_0x5F2F.stop("Selesai, ada vending yang gagal diambil")
elseif #_0x7188 > 0 then
_0x5F2F.stop("Item terpilih sudah habis. Tidak diambil (bukan item terpilih): ".. table.concat(_0x7188,", ", 1, math.min(#_0x7188, 4))
.. ((#_0x7188 > 4) and (" +".. (#_0x7188 - 4)) or"")
..". Hapus pilihan item untuk ambil semua")
else
_0x5F2F.stop("Semua vending sudah kosong")
end
break
end
local _0xEF75 = false
for _0xF439, _0xBF65 in ipairs(_0x5F2F.sortNear(_0x026D)) do
if not _0x962E() then break end
local _0x63A7 = 200
if _0x1DCC.Inv then
local _0xD955, _0x2DAE = pcall(function() return _0x1DCC.Inv:room(_0xBF65.id) end)
if _0xD955 and type(_0x2DAE) =="number"then _0x63A7 = _0x2DAE end
end
if _0x63A7 <= 0 then
_0xEF75 = true
break
end
_0x5F2F.Status = ("Ke vending (%d,%d): ambil %s"):format(_0xBF65.x, _0xBF65.y, _0x949D(_0xBF65.id))
local _0x795E = _0xBF65.x ..",".. _0xBF65.y
if _0x5F2F.goTo(_0xBF65) then
local _0x964C = _0xC90B(_0xBF65.id)
local _0xA7A9 = _0x5F2F.call("empty", _0xBF65.x, _0xBF65.y)
task.wait(0.4)
local _0xB5AC = _0xC90B(_0xBF65.id) - _0x964C
if _0xB5AC > 0 then
_0x5F2F.Soft = 0
_0x5F2F.Taken += _0xB5AC
_0x5F2F.Carry[_0xBF65.id] = (_0x5F2F.Carry[_0xBF65.id] or 0) + _0xB5AC
_0x5F2F.Fail[_0x795E] = nil
_0x5F2F.Status = ("Ambil %s x%d dari (%d,%d)"):format(_0x949D(_0xBF65.id), _0xB5AC, _0xBF65.x, _0xBF65.y)
if _0xB5AC < _0xBF65.stock then_0xEF75 = true
break
end
else
_0x5F2F.Fail[_0x795E] = (_0x5F2F.Fail[_0x795E] or 0) + 1
if not _0xA7A9 and next(_0x5F2F.Carry) then
_0xEF75 = truebreak
end
_0x5F2F.sleep(1, _0x962E)end
else
_0x5F2F.Fail[_0x795E] = (_0x5F2F.Fail[_0x795E] or 0) + 1
_0x5F2F.Status = ("Tidak bisa ke vending (%d,%d)"):format(_0xBF65.x, _0xBF65.y)
end
end
if not _0x962E() then break end
if _0xEF75 then
if not _0x7628 then
_0x5F2F.stop("Tas penuh: atur titik drop vending (WORLD / WORLD:ID / simpan posisi XY)")
break
end
if not next(_0x5F2F.Carry) then
_0x5F2F.stop("Tas penuh oleh item lain, kosongkan tas dulu")
break
end
local _0xF64E, _0x3330 = _0x5F2F.dropTrip(_0x962E, _0xBC12)
if _0x3330 =="home"or not _0xF64E thenif not _0x5F2F.soft(_0x3330 =="home"and ("Gagal pulang ke world vending ".. _0xBC12)
or ("Drop gagal: ".. _0x5F2F.Status), _0x962E) then break end
continue
end
_0x5F2F.Soft = 0
table.clear(_0x5F2F.Carry)
table.clear(_0x5F2F.Fail)
end
elseif _0x5B75.worldName() == _0xBC12 then
_0x5F2F.waitWorld(_0xBC12, _0x962E)
local _0xC49C, _0xC8B0 = _0x5F2F.stockAll(_0x962E)
if not _0x962E() then break end
if _0xC8B0 > 0 and _0xC49C == 0 then
if not _0x5F2F.soft("Tambah stock gagal: ".. _0x5F2F.Status, _0x962E) then break end
continue
else
if _0xC49C > 0 then _0x5F2F.Soft = 0 end
end
end
local _0x0991, _0x7AF2, _0x59C7 = _0x5F2F.wanted()
if not next(_0x0991) and _0x7AF2 == 0 then
_0x5F2F.Status = _0x5F2F.filtered() and"Vending item terpilih penuh / belum ada yang menjual item terpilih"or"Semua vending penuh / belum ada vending yang menjual item"_0x5F2F.sleep(4, _0x962E)
continue
end
local _0xDF0A, _0x80D9 = _0x5F2F.point()
if _0xDF0A ==""then _0xDF0A = _0xBC12 end
if _0x5B75.worldName() ~= _0xDF0A or _0x80D9 then
if not (_0x5B75.worldName() == _0xDF0A and _0x5F2F.AtPoint) then
_0x5F2F.Status ="Pergi ke ".. _0xDF0A .. (_0x80D9 and (":".. _0x80D9) or"") .." ambil drop"local _0xF64E, _0x8599 = _0x5F2F.travel(_0xDF0A, _0x80D9)
if not _0xF64E then
_0x5F2F.Status ="Gagal ke titik drop: ".. tostring(_0x8599)
_0x5F2F.sleep(10, _0x962E)
continue
end
_0x5F2F.AtPoint = true
end
end
_0x5F2F.goSpot(_0x962E)local _0xB5AC = 0
while _0x962E() do
_0x5F2F.stepAway(_0x962E)
_0xB5AC += _0x5F2F.pickHere(_0x962E, _0x0991, _0x7AF2, _0x59C7)
local _0x7534 = false
for _0x2010 in pairs(_0x0991) do
if _0xC90B(_0x2010) > 0 then
_0x7534 = true
break
end
end
if not _0x7534 then
for _0x2010, _0x5F17 in pairs(_0x5F2F.Picked) do
if _0x5F17 > 0 and _0xC90B(_0x2010) > 0 then
_0x7534 = true
break
end
end
end
if _0x7534 then break end
_0x5F2F.Status ="Menunggu drop baru di ".. _0x5B75.worldName() .."..."_0x5F2F.sleep(0.5, _0x962E)
end
if not _0x962E() then break end
_0x5F2F.AtPoint = false
if _0x5B75.worldName() ~= _0xBC12 then
_0x5F2F.Status ="Pulang ke ".. _0xBC12 .." untuk isi stock"local _0x66DE = _0x5F2F.travel(_0xBC12, nil)
if not _0x66DE then
if not _0x5F2F.soft("Gagal pulang ke world vending ".. _0xBC12, _0x962E) then break end
continue
end
end
end
end
_0x0D00()
end
function _0x5F2F.stop(_0x3B8B)
_0x5F2F.Running = false
_0x5F2F.AtPoint = false
_0x38E9.NoZone = false
_0x7C3D()
_0x0D00()
_0x5F2F.Status = _0x3B8B or"Dihentikan"_0x5F2F.Confirm = false
if _0x6FB2.VendToggle then _0x6FB2.later("vendToggle", function() _0x6FB2.VendToggle:Set(false) end) end
if _0x3B8B then
_0x8021("Vending", _0x3B8B, 5)
if not string.find(_0x3B8B,"^Dihentikan") then _0x2479.send("pabrik","Vending: ".. _0x3B8B) end
end
end
function _0x5F2F.start()
if _0x7528.DoorTravel and _0x7528.DoorTravel.Busy then
_0x8021("Vending","Tunggu Teleport ID Door selesai dulu", 4)
return
end
if _0x5F2F.Running then return end
local _0x8599
if not _0x1DCC.World then
_0x8599 ="Data world belum ketemu. Tekan 'Hubungkan ke game'"elseif not _0x4CD3 and not _0x86C8.bindMenu() then
_0x8599 = _0x86C8.Error or"Kontrol gerak game belum terhubung"elseif not _0x4C2C() then
_0x8599 ="Kamu belum masuk world"elseif type(rawget(_0x1DCC.World,"vendCall")) ~="function"then
_0x8599 ="Fungsi vending game tidak ketemu"end
if _0x8599 then
_0x8021("Vending", _0x8599, 4)
if _0x6FB2.VendToggle then pcall(function() _0x6FB2.VendToggle:Set(false) end) end
return
end
if _0x5D82.Running and not _0x5D82.Override then _0xF604("Dihentikan karena Vending dimulai") end
if _0xD222.Running then _0xD467("Dihentikan karena Vending dimulai") end
if _0x9715.Running then _0x34F2("Dihentikan karena Vending dimulai") end
if _0xD808.Running and _0xD808.stop then _0xD808.stop("Dihentikan karena Vending dimulai") end
if _0xECF0.Running then _0xECF0.stop("Dihentikan karena Vending dimulai") end
if _0x3F90.Running and _0x3F90.stop then _0x3F90.stop("Dihentikan karena Vending dimulai") end
table.clear(_0x5F2F.Carry)
table.clear(_0x5F2F.Picked)
table.clear(_0x5F2F.Fail)
table.clear(_0x43C8)
_0x5F2F.FailRuns = 0
_0x5F2F.AtPoint = false
_0x5F2F.Running = true
_0x5F2F.RunId = (_0x5F2F.RunId or 0) + 1
_0x5F2F.Status ="Mulai..."_0x433F()
if _0x6FB2.VendToggle then pcall(function() _0x6FB2.VendToggle:Set(true) end) end
local _0x2010 = _0x5F2F.RunId
task.spawn(function()
local _0xF64E, _0x7BA0 = pcall(_0x468D, _0x2010)
if not _0xF64E then
warn("[ziey HUB] Vending error: ".. tostring(_0x7BA0))
if _0x5F2F.Running then _0x5F2F.stop("Error: ".. tostring(_0x7BA0)) end
end
end)
end
_0x927E.VEND_MODES = { _0xC665, _0x4B83 }local _0xF41B = {}
function _0x3F90.protectedTile(_0x5409, _0x6665)
local _0x21B7 = _0x1DCC.World and _0x1DCC.World.spawn
return (_0x21B7 and _0x5409 == _0x21B7.X and _0x6665 == _0x21B7.Y) or _0x1DCC.protectedItem(_0xD509(_0x5409, _0x6665))
end
local function _0xA809(_0x5409, _0x6665, _0x7827)
return _0x5409 + 1 > _0x7827.x - 0.3 and _0x5409 < _0x7827.x + 0.3 and _0x6665 + 1 > _0x7827.y - 0.95 and _0x6665 < _0x7827.y
end
local function _0x0109(_0x615D, _0x7827)
local _0x2010 = _0x3F90.BlockId
if _0xC90B(_0x2010) <= (_0x3F90.Reserve or 0) or _0xA809(_0x615D.x, _0x615D.y, _0x7827) then return false end
if not _0xB36B(_0x615D.x, _0x615D.y) then
_0xED30(_0x3F90.Skip, _0x615D.idx, 120)
return false
end
_0xBF1A("fg", _0x615D.x, _0x615D.y, _0x2010)
pcall(function() _0x1DCC.Inv:remove(_0x2010, 1) end)
_0x3F90.Placed += 1
_0x3F90.Status = ("Pasang %s (%d,%d)"):format(_0x949D(_0x2010), _0x615D.x, _0x615D.y)
return true
endfunction _0x3F90.plan()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return nil end
local _0x7D85 = _0x920A()
if #_0x7D85 == 0 then return nil end
local _0xAEA8 = _0x9F6E.w
local _0xDC17 = {
_0x7D85 = _0x7D85, _0x29CA = #_0x7D85, _0xAEA8 = _0xAEA8,
_0xE95B = math.clamp(math.floor(math.min(_0x0DAF.X0, _0x0DAF.X1)), 0, _0xAEA8 - 1),
_0x932D = math.clamp(math.floor(math.max(_0x0DAF.X0, _0x0DAF.X1)), 0, _0xAEA8 - 1),
_0xD279 = {}, isLand = {}, _0xA821 = {},
}
for _0xC0A8 = 1, #_0x7D85 do
local _0xD279 = _0x24DF(_0xC0A8 - 1)
local _0x365A = {}
for _0xF439, _0x5409 in ipairs(_0xD279) do _0x365A[_0x5409] = true end
local _0xA821 = {}
for _0x5409 = _0xDC17.x0, _0xDC17.x1 do
if not _0x365A[_0x5409] then _0xA821[#_0xA821 + 1] = _0x5409 end
end
_0xDC17.cols[_0xC0A8], _0xDC17.isLand[_0xC0A8], _0xDC17.holes[_0xC0A8] = _0xD279, _0x365A, _0xA821
end
return _0xDC17
endfunction _0x3F90.findSurface(_0xDC17)
local _0x9F6E = _0x1DCC.World
local _0x7553 = _0xDC17.x1 - _0xDC17.x0 + 1
local function _0xEF75(_0x6665)
local _0x66F3 = 0
for _0x5409 = _0xDC17.x0, _0xDC17.x1 do
local _0x91CB = _0xD7DB[_0xD509(_0x5409, _0x6665)]
if _0x91CB and _0x91CB.solid and _0x91CB.kind ~="seed"then _0x66F3 += 1 end
end
return _0x66F3 * 2 > _0x7553
end
for _0x6665 = math.max(0, _0xDC17.rows[1] - 1), _0x9F6E.h - 2 do
if _0xEF75(_0x6665) and _0xEF75(_0x6665 + 1) then return _0x6665 end
end
return math.huge
endfunction _0x3F90.carveLayer(_0x5409, _0x6665, _0xAEA8)
if _0x3F90.protectedTile(_0x5409, _0x6665) then return nil end
local _0xC8CC = _0xD509(_0x5409, _0x6665)
if _0xC8CC ~= 0 then
local _0x91CB = _0xD7DB[_0xC8CC]
if _0x91CB and _0x91CB.kind ~="seed"and (_0x91CB.solid or _0x91CB.deadly or _0x91CB.hurts or _0x91CB.laser or _0x3F90.isLava(_0xC8CC))
and _0x8CD6(_0xC8CC) then return"fg"end
return nil
end
if _0x6665 >= (_0x3F90.Surface or math.huge) or _0x3F90.Carved[_0x6665 * _0xAEA8 + _0x5409] then
local _0x4D4B = _0x3270("bg", _0x5409, _0x6665)
if _0x4D4B and _0x4D4B ~= 0 and _0x8CD6(_0x4D4B) then return"bg"end
end
return nil
endfunction _0x3F90.carveList(_0xDC17)
local _0xAEA8, _0x026D = _0xDC17.W, {}
local _0xFBAC, _0x0A8E
local function _0x548B(_0x5409, _0x6665, _0x8B4B)
if _0x6665 >= 0 and _0x3F90.carveLayer(_0x5409, _0x6665, _0xAEA8) then
_0x026D[#_0x026D + 1] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0x6665 * _0xAEA8 + _0x5409, _0x8B4B = _0x8B4B, _0xFBAC = _0xFBAC, _0xEC2F = _0x0A8E }
end
end
local _0x4D7E = _0x3F90.Surface or math.huge
local _0x1C2C = _0x3F90.BlockId ~= nil and _0xC90B(_0x3F90.BlockId) > 0
local function _0x77B7(_0x5409, _0x6665)
if _0x6665 < _0x4D7E then return end
local _0x2010 = _0xD509(_0x5409, _0x6665)
local _0x5376 = false
if _0x2010 == 0 then
_0x5376 = _0x1C2C
elseif not _0x3F90.done(_0x5409, _0x6665) then
local _0x91CB = _0xD7DB[_0x2010]
_0x5376 = _0x91CB ~= nil and _0x91CB.kind ~="seed"and (_0x91CB.deadly or _0x91CB.hurts or _0x91CB.laser or _0x3F90.isLava(_0x2010))
and _0x8CD6(_0x2010) and true or false
end
if _0x5376 then _0x026D[#_0x026D + 1] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0x6665 * _0xAEA8 + _0x5409, _0x8B4B ="fill", _0xFBAC = _0xFBAC, _0xEC2F = _0x0A8E } end
end
for _0xC0A8 = 1, _0xDC17.K do
local _0x6665 = _0xDC17.rows[_0xC0A8]
local _0x2DDF = ((_0xC0A8 - 1) % 2 == 0) and 1 or -1
_0xFBAC, _0x0A8E = _0xC0A8, _0x2DDF
local _0x29D6 = nilif _0xC0A8 > 1 and #_0xDC17.holes[_0xC0A8 - 1] > 0 then
local _0x15AF = _0xDC17.holes[_0xC0A8 - 1]
_0x29D6 = (_0x2DDF == -1) and _0x15AF[1] or _0x15AF[#_0x15AF]
end
local _0xE034, _0x783C = _0xDC17.x0, _0xDC17.x1
if _0x2DDF == -1 then _0xE034, _0x783C = _0xDC17.x1, _0xDC17.x0 end
local _0x598B = _0xDC17.isLand[_0xC0A8]
for _0x5409 = _0xE034, _0x783C, _0x2DDF do
if _0x598B[_0x5409] then _0x77B7(_0x5409, _0x6665) end_0x548B(_0x5409, _0x6665 - 1,"gap")
if _0x5409 == _0x29D6 then _0x548B(_0x5409, _0xDC17.rows[_0xC0A8 - 1],"hole") end
endif _0xC0A8 < _0xDC17.K and #_0xDC17.holes[_0xC0A8] > 0 then
local _0x887D = _0xDC17.holes[_0xC0A8]
_0x548B((_0x2DDF == 1) and _0x887D[#_0x887D] or _0x887D[1], _0x6665,"hole")
end
end
return _0x026D
endfunction _0x3F90.isLava(_0x2010)
local _0x91CB = _0xD7DB[_0x2010]
if not _0x91CB or _0x91CB.kind =="seed"or not _0x8CD6(_0x2010) then return false end
local _0xDF0A = string.lower(tostring(_0x91CB.name or""))
return (_0x91CB.lava or _0x91CB.deadly or _0x91CB.hurts or _0x91CB.laser
or string.find(_0xDF0A,"lava", 1, true) or string.find(_0xDF0A,"magma", 1, true)) and true or false
end
function _0x3F90.lavaTarget(_0xDC17, _0x7827)
local _0x9F6E = _0x1DCC.World
_0xDC17, _0x7827 = _0xDC17 or _0x3F90.ActivePlan, _0x7827 or _0x4C2C()
if not _0x9F6E or not _0xDC17 or not _0x7827 or _0x7827.dead or not _0x7827.grounded then return nil end
local _0xDD5D, _0x212D = _0xF04B() - 0.08, _0x7827.y - 0.475
local _0x0E6E, _0xAEFF
for _0x6665 = math.max(0, _0xDC17.rows[1] - 1, _0x4748(_0x212D - _0xDD5D - 0.5)),
math.min(_0x9F6E.h - 1, _0xDC17.rows[_0xDC17.K], _0x4748(_0x212D + _0xDD5D + 0.5)) do
for _0x5409 = math.max(_0xDC17.x0, _0x4748(_0x7827.x - _0xDD5D - 0.5)), math.min(_0xDC17.x1, _0x4748(_0x7827.x + _0xDD5D + 0.5)) do
if not _0x3F90.protectedTile(_0x5409, _0x6665) and _0xF81F(_0x7827, _0x5409, _0x6665, _0xDD5D) and _0x3F90.isLava(_0xD509(_0x5409, _0x6665)) and _0xFA64(_0x5409, _0x6665, true) then
local _0xC210 = _0x4748(_0x7827.y + 0.01)
local _0x8604 = _0x6665 == _0xC210 and _0x5409 >= _0x4748(_0x7827.x - 0.3) and _0x5409 <= _0x4748(_0x7827.x + 0.3 - 0.0001)
local _0x48DB = 0
if _0x8604 then _0x48DB = _0x018F(_0x7827, _0x5409, _0xC210) end
if not _0x8604 or (_0x48DB ~= nil and _0x48DB <= 3) then
local _0x935C, _0x15BA = _0x5409 + 0.5 - _0x7827.x, _0x6665 + 0.5 - _0x212D
local _0x2DDF = _0x935C * _0x935C + _0x15BA * _0x15BA
if not _0xAEFF or _0x2DDF < _0xAEFF then
_0x0E6E, _0xAEFF = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0x6665 * _0x9F6E.w + _0x5409, _0x8B4B ="lava"}, _0x2DDF
end
end
end
end
end
return _0x0E6E
endfunction _0x3F90.punch(_0x5409, _0x6665, includeBg, _0x962E)
_0x962E = _0x962E or function() return _0x3F90.Running end
local _0x9F6E = _0x1DCC.World
local function _0x44B7() return _0x962E() and _0xCA76() and _0x1DCC.World == _0x9F6E end
if not _0x9F6E or not _0x44B7() then return nil,"stop"end
local _0x7E30 = _0xD509(_0x5409, _0x6665) ~= 0 and"fg"or"bg"local _0x2010 = _0x3270(_0x7E30, _0x5409, _0x6665)
if not _0x2010 or _0x2010 == 0 or (_0x7E30 =="bg"and not includeBg) then return"changed"end
while _0x44B7() and os.clock() < (_0x3F90.NextPunchAt or 0) do
local _0x4ADC = _0x3F90.lavaTarget()
if _0x4ADC and (_0x4ADC.x ~= _0x5409 or _0x4ADC.y ~= _0x6665) and not _0x3F90.isLava(_0x2010) then return nil,"lava"end
task.wait(math.min(0.025, _0x3F90.NextPunchAt - os.clock()))
end
if not _0x44B7() then return nil,"stop"end
if _0x3270(_0x7E30, _0x5409, _0x6665) ~= _0x2010 then return"changed"end
local _0x7827 = _0x4C2C()
if not _0x7827 or _0x7827.dead or not _0x7827.grounded or not _0xF81F(_0x7827, _0x5409, _0x6665, _0xF04B() - 0.08) then
return nil,"range"end
local _0x4ADC = _0x3F90.lavaTarget()
if _0x4ADC and (_0x4ADC.x ~= _0x5409 or _0x4ADC.y ~= _0x6665) and not _0x3F90.isLava(_0x2010) then return nil,"lava"end
if type(_0x1DCC.Punch) ~="function"then
_0x3F90.Status ="Fungsi pukul game belum terbaca; tekan Hubungkan ke game"return nil,"punch"end
local _0x964C = _0x5D82.Broken
local _0xE2E6 = _0xE0BA(_0x5409, _0x6665, includeBg, true)
if not _0xE2E6 then _0x3F90.Status = _0x5D82.LastAction or"Pukulan game gagal; tekan Hubungkan ke game"end
_0x3F90.NextPunchAt = os.clock() + math.max(200, _0x3F90.PunchMs or 200) / 1000
if _0xE2E6 =="hit"then
while _0x44B7() and _0x3270(_0x7E30, _0x5409, _0x6665) == _0x2010 and os.clock() < _0x3F90.NextPunchAt do
task.wait(math.min(0.025, _0x3F90.NextPunchAt - os.clock()))
end
if not _0x44B7() then return nil,"stop"end
if _0x3270(_0x7E30, _0x5409, _0x6665) ~= _0x2010 then
if _0x5D82.Broken == _0x964C then
_0x5D82.Broken += 1
_0x2FB0.brokeAt[_0x5409 ..",".. _0x6665] = os.clock()
end
_0xE2E6 ="broke"end
end
return _0xE2E6
end
function _0x3F90.lavaStep(_0xDC17, _0x962E)
local _0x615D = _0x3F90.lavaTarget(_0xDC17)
if not _0x615D then return false end
if _0x7188(_0x3F90.LavaSkip, _0x615D.idx) then
_0x3F90.Status ="Lava masih ada; menunggu pukulan game bisa dicoba lagi"_0x3422(100)
return true
end
_0x3F90.Status = ("Prioritas lava: %s (%d,%d)"):format(_0x949D(_0xD509(_0x615D.x, _0x615D.y)), _0x615D.x, _0x615D.y)
local _0x954B, _0xC35F = _0x1DCC.World, _0x3F90.Dug
local _0xE2E6 = _0x3F90.carveTile(_0x615D, _0x962E, true)
if (_0xE2E6 =="done"or _0xE2E6 =="fall") and _0x1DCC.World == _0x954B and _0x3F90.Dug > _0xC35F
and not _0x3F90.isLava(_0xD509(_0x615D.x, _0x615D.y)) then
_0x3F90.LavaCleared = (_0x3F90.LavaCleared or 0) + 1
elseif _0xE2E6 =="skip"then
_0xED30(_0x3F90.LavaSkip, _0x615D.idx, 1)
end
return true
endfunction _0x3F90.goNear(_0xAF1F, _0xDD5D, maxY, noSelf)
local _0x9F6E = _0x1DCC.World
local _0x7827 = _0x4C2C()
if not _0x9F6E or not _0x7827 then return"wait"end
if _0x3F90.lavaTarget() then return"wait"end
local _0x6D99, _0x79D3 = _0x6B94(_0x7827)
local _0x1636 = { maxY = maxY, noSelf = noSelf }
for _0xF439, _0x615D in ipairs(_0xAF1F) do _0x1636[_0x615D.idx] = true end
local _0x509A = _0xAF1F[1]
_0x7C5D(("Cari jalan A* ke (%d,%d)"):format(_0x509A.x, _0x509A.y))
local _0x715C = _0x251E(_0x6D99, _0x79D3, _0x1636, _0x509A.x, _0x509A.y, _0xDD5D, false)
if not _0x715C then
_0x0D00()
return"nopath"end
local _0x8CF4 = _0xF41B[_0x509A.idx] or 0
if #_0x715C == 0 then
_0xB4B6(_0x6D99, _0x79D3)_0x8CF4 += 1
else
local _0xF64E, _0x3330 = _0x0ADD(_0x715C, function()
return not _0x3F90.Running or not _0xCA76() or _0x1DCC.World ~= _0x9F6E or _0x3F90.lavaTarget() ~= nil
end)
if _0x3330 =="cancelled"then _0x0D00(); return"wait"end
if not _0xF64E then _0x8CF4 += 1 else _0x8CF4 = 0 end
end
_0x0D00()
if _0x8CF4 >= 4 then
_0x8CF4 = 0
for _0xF439, _0x615D in ipairs(_0xAF1F) do _0xED30(_0x3F90.Skip, _0x615D.idx, 30) end
end
_0xF41B[_0x509A.idx] = (_0x8CF4 > 0) and _0x8CF4 or nil
return"move"endfunction _0x3F90.carveTile(_0x615D, _0x962E, onlyFg)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return"stop"end
local _0x3677, _0x2A68 = 0, nil
while _0x962E() and _0xCA76() and _0x1DCC.World == _0x9F6E do
if onlyFg and not _0x3F90.isLava(_0xD509(_0x615D.x, _0x615D.y)) then return"done"end
local _0x4ADC = _0x3F90.lavaTarget()
if not onlyFg and _0x4ADC and (_0x4ADC.x ~= _0x615D.x or _0x4ADC.y ~= _0x615D.y) then return"lava"end
local _0x7E30 = onlyFg and"fg"or _0x3F90.carveLayer(_0x615D.x, _0x615D.y, _0x1DCC.World.w)
if not _0x7E30 then return"done"end
local _0x2010 = (_0x7E30 =="fg") and _0xD509(_0x615D.x, _0x615D.y) or (_0x3270("bg", _0x615D.x, _0x615D.y) or 0)
_0x2A68 = _0x2A68 or (_0xEDFD(_0x2010) * 3 + 6)
local _0x2DAE, _0x3330 = _0x3F90.punch(_0x615D.x, _0x615D.y, _0x7E30 =="bg", _0x962E)
if _0x3330 =="lava"then return"lava"end
if _0x3330 =="stop"then return"stop"end
if _0x3330 =="range"then return"fall"end
if _0x2DAE == nil then
_0xED30(_0x3F90.Skip, _0x615D.idx, 60)
return"skip"end
if _0x2DAE =="changed"then
_0x3677, _0x2A68 = 0, nil
elseif _0x2DAE =="broke"then
if _0x7E30 =="fg"then _0x3F90.Carved[_0x615D.idx] = true end
_0x3F90.Dug += 1
_0x3F90.Status = ("Gali %s (%d,%d)"):format(_0x949D(_0x2010), _0x615D.x, _0x615D.y)
local _0x27EF = (_0x3F90.BreakTimes[_0x615D.idx] or 0) + 1
_0x3F90.BreakTimes[_0x615D.idx] = _0x27EF
if _0x27EF > 8 then_0xED30(_0x3F90.Skip, _0x615D.idx, 120)
return"skip"end
_0x3677, _0x2A68 = 0, nil
local _0x7827 = _0x4C2C()
if not _0x7827 or not _0x7827.grounded then
return"fall"end
else
_0x3677 += 1
_0x3F90.Status = ("Pukul %s (%d,%d)"):format(_0x949D(_0x2010), _0x615D.x, _0x615D.y)
if _0x3677 > _0x2A68 then
_0xED30(_0x3F90.Skip, _0x615D.idx, 45)
return"skip"end
endend
return"stop"endfunction _0x3F90.fillTile(_0x615D)
local _0x2010 = _0xD509(_0x615D.x, _0x615D.y)
if _0x2010 ~= 0 and not _0x3F90.done(_0x615D.x, _0x615D.y) then
_0x3F90.Status = ("Pecah %s di lantai (%d,%d)"):format(_0x949D(_0x2010), _0x615D.x, _0x615D.y)
for _0xF439 = 1, 40 do
local _0x2DAE, _0x3330 = _0x3F90.punch(_0x615D.x, _0x615D.y, false)
if _0x3330 =="lava"then return"lava"end
if _0x3330 =="stop"then return"stop"end
if _0x3330 =="range"then return"fall"end
if _0x2DAE == nil then
_0xED30(_0x3F90.Skip, _0x615D.idx, 60)
return"skip"end
if _0x2DAE =="broke"then break end
if _0xD509(_0x615D.x, _0x615D.y) == 0 then break end
end
local _0x5A8C = _0x4C2C()
if not _0x5A8C or not _0x5A8C.grounded then return"fall"end
end
if _0xD509(_0x615D.x, _0x615D.y) == 0 then
local _0x5A8C = _0x4C2C()
if not _0x5A8C or _0xC90B(_0x3F90.BlockId) <= 0 or not _0x0109(_0x615D, _0x5A8C) then
_0xED30(_0x3F90.Skip, _0x615D.idx, 30)
return"skip"end
_0x3F90.Status = ("Tambal lantai Dirt Farm (%d,%d)"):format(_0x615D.x, _0x615D.y)
if not _0x3422(_0x5D82.PlaceMs) then return"stop"end
end
return"done"endfunction _0x3F90.carveStep(_0xDC17, _0x026D, _0x962E)
_0x3F90.ActivePlan = _0xDC17
local _0x9F6E = _0x1DCC.World
local _0x7827 = _0x4C2C()
if not _0x9F6E or not _0x7827 or _0x7827.dead then
_0x0D00()
task.wait(0.5)
return"wait"end
if not _0x7827.grounded then
_0x0D00()
_0x38E9.airCheck(_0x7827)
task.wait()
return"wait"end
_0x38E9.AirAt = nil
_0x0D00()
if _0x3F90.lavaStep(_0xDC17, _0x962E) then return"work"end
local _0xDD5D = _0xF04B() - 0.08
local _0x4DD4 = os.clock()
local _0xD4B8 = _0x3F90.Route
if not _0xD4B8 or _0xD4B8.world ~= _0x9F6E or _0xD4B8.x0 ~= _0xDC17.x0 or _0xD4B8.x1 ~= _0xDC17.x1 or _0xD4B8.lastY ~= _0xDC17.rows[_0xDC17.K] then
_0xD4B8 = { _0x954B = _0x9F6E, _0xE95B = _0xDC17.x0, _0x932D = _0xDC17.x1, lastY = _0xDC17.rows[_0xDC17.K], _0xFBAC = 1 }
_0x3F90.Route = _0xD4B8
end
local _0xFBAC, _0x1B51
for _0xF439, _0x615D in ipairs(_0x026D) do
if not _0x7188(_0x3F90.Skip, _0x615D.idx, _0x4DD4) and (_0x615D.kind =="fill"or _0x3F90.carveLayer(_0x615D.x, _0x615D.y, _0xDC17.W)) then
local _0xBFDC = _0x615D.pass or 1
if not _0x1B51 or _0xBFDC < _0x1B51 then _0x1B51 = _0xBFDC end
if _0xBFDC >= _0xD4B8.pass and (not _0xFBAC or _0xBFDC < _0xFBAC) then _0xFBAC = _0xBFDC end
end
end
_0xFBAC = _0xFBAC or _0x1B51
if not _0xFBAC then return"none"end
_0xD4B8.pass = _0xFBAC
local _0x8A37, _0xA4DF = {}, {}
for _0xF439, _0x615D in ipairs(_0x026D) do
if (_0x615D.pass or 1) == _0xFBAC and not _0x7188(_0x3F90.Skip, _0x615D.idx, _0x4DD4) then
_0x8A37[#_0x8A37 + 1] = _0x615D
if _0xF81F(_0x7827, _0x615D.x, _0x615D.y, _0xDD5D) then _0xA4DF[#_0xA4DF + 1] = _0x615D end
end
endlocal _0x7C5A = 0
for _0xF439, _0x615D in ipairs(_0xA4DF) do
if _0x7C5A >= 12 or not _0x962E() or not _0xCA76() or _0x1DCC.World ~= _0x9F6E then break end
if _0x3F90.lavaStep(_0xDC17, _0x962E) then return"work"end
if not _0x7188(_0x3F90.Skip, _0x615D.idx, _0x4DD4) then
local _0x5A8C = _0x4C2C()
if not _0x5A8C or _0x5A8C.dead or not _0x5A8C.grounded or not _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0xDD5D) then break end
if _0x615D.kind =="fill"and _0xA809(_0x615D.x, _0x615D.y, _0x5A8C) then
_0xED30(_0x3F90.Skip, _0x615D.idx, 0.5)elseif not _0xFA64(_0x615D.x, _0x615D.y, true) then
_0xED30(_0x3F90.Skip, _0x615D.idx, 300)elseif _0x615D.kind =="fill"then
_0x7C5A += 1
if _0x3F90.fillTile(_0x615D) ~="done"then break end
elselocal _0xC210 = _0x4748(_0x5A8C.y + 0.01)
if _0x615D.y == _0xC210 and _0x615D.x >= _0x4748(_0x5A8C.x - 0.3) and _0x615D.x <= _0x4748(_0x5A8C.x + 0.3 - 0.0001) then
local _0x2DDF = _0x018F(_0x5A8C, _0x615D.x, _0xC210)
if _0x2DDF == nil or _0x2DDF > 3 then
_0xED30(_0x3F90.Skip, _0x615D.idx, 20)else
_0x7C5A += 1
if _0x3F90.carveTile(_0x615D, _0x962E) ~="done"then break end
end
else
_0x7C5A += 1
if _0x3F90.carveTile(_0x615D, _0x962E) ~="done"then break end
end
end
end
end
if _0x7C5A > 0 then return"work"end
if not _0x962E() or not _0xCA76() or _0x1DCC.World ~= _0x9F6E then return"wait"end
local _0x5A8C = _0x4C2C() or _0x7827
local _0xEC2F = _0x8A37[1] and _0x8A37[1].dir or 1
table.sort(_0x8A37, function(_0xE034, _0x783C)
local _0x14B7 = _0xFE2A(_0xE034.x + 0.5 - _0x5A8C.x) + 2 * _0xFE2A(_0xE034.y + 0.5 - (_0x5A8C.y - 0.475))
local _0x94BE = _0xFE2A(_0x783C.x + 0.5 - _0x5A8C.x) + 2 * _0xFE2A(_0x783C.y + 0.5 - (_0x5A8C.y - 0.475))
if _0x14B7 ~= _0x94BE then return _0x14B7 < _0x94BE end
if _0xE034.x ~= _0x783C.x then return _0xE034.x * _0xEC2F < _0x783C.x * _0xEC2F end
return _0xE034.kind =="fill"and _0x783C.kind ~="fill"end)
local _0x1636 = {}
for _0xF439, _0x615D in ipairs(_0x8A37) do
if not _0x7188(_0x3F90.Skip, _0x615D.idx) and #_0x1636 < 8 then _0x1636[#_0x1636 + 1] = _0x615D end
end
if #_0x1636 == 0 then return"none"end
local _0x2DAE = _0x3F90.goNear(_0x1636, math.min(_0xF04B(), _0xA3B7()) - 0.35, nil, _0x1636[1].kind =="fill")
if _0x2DAE =="nopath"thenfor _0xF439, _0x615D in ipairs(_0x1636) do _0xED30(_0x3F90.Skip, _0x615D.idx, 5) end
return"move"end
return _0x2DAE
endfunction _0x3F90.entries(_0xDC17, _0xC0A8)
local _0x7BA0 = {}
local _0xA821, _0x598B = _0xDC17.holes[_0xC0A8], _0xDC17.isLand[_0xC0A8]
if #_0xA821 == 0 then
_0x7BA0[_0xDC17.x0], _0x7BA0[_0xDC17.x1] = true, true
else
for _0xF439, _0x887D in ipairs(_0xA821) do
if _0x598B[_0x887D - 1] and _0x598B[_0x887D - 2] then _0x7BA0[_0x887D - 1] = true end
if _0x598B[_0x887D + 1] and _0x598B[_0x887D + 2] then _0x7BA0[_0x887D + 1] = true end
end
end
return _0x7BA0
endfunction _0x3F90.placeStep(_0xDC17)
_0x3F90.ActivePlan = _0xDC17
local _0x9F6E = _0x1DCC.World
local _0x7827 = _0x4C2C()
if not _0x9F6E or not _0x7827 or _0x7827.dead then
_0x0D00()
task.wait(0.5)
return"wait"end
if not _0x7827.grounded then
_0x0D00()
_0x38E9.airCheck(_0x7827)
task.wait()
return"wait"end
_0x38E9.AirAt = nil
_0x0D00()
if _0x3F90.lavaStep(_0xDC17, function() return _0x3F90.Running end) then return"work"end
local _0xAEA8 = _0xDC17.W
local _0xDD5D = _0xA3B7() - 0.08
local _0x4DD4 = os.clock()
local _0xC0A8, _0x02C0 = nil, nil
for kk = _0xDC17.K, 1, -1 do
local _0x6665 = _0xDC17.rows[kk]
local _0x026D = {}
for _0xF439, _0x5409 in ipairs(_0xDC17.cols[kk]) do
local _0xB9E8 = _0x6665 * _0xAEA8 + _0x5409
if not _0x3F90.done(_0x5409, _0x6665) and not _0x7188(_0x3F90.Skip, _0xB9E8, _0x4DD4) then
_0x026D[#_0x026D + 1] = { _0x5409 = _0x5409, _0x6665 = _0x6665, _0xB9E8 = _0xB9E8 }
end
end
if #_0x026D > 0 then
_0xC0A8, _0x02C0 = kk, _0x026D
break
end
end
if not _0xC0A8 then return"none"end
local _0x6665 = _0xDC17.rows[_0xC0A8]
local _0x50CF = _0x7827.x
table.sort(_0x02C0, function(_0xE034, _0x783C) return _0xFE2A(_0xE034.x + 0.5 - _0x50CF) < _0xFE2A(_0x783C.x + 0.5 - _0x50CF) end)
local _0xF439, _0x79D3 = _0x6B94(_0x7827)
local _0xF90C = _0x79D3 <= _0x6665 - 1local _0x8604 = _0x3F90.Under[_0xC0A8] ~= nil and _0x4DD4 < _0x3F90.Under[_0xC0A8]
local _0x7ADC = _0x3F90.entries(_0xDC17, _0xC0A8)
local _0xEE50 = false
for _0xF439, _0x5409 in ipairs(_0xDC17.cols[_0xC0A8]) do
if _0x3F90.done(_0x5409, _0x6665) then
_0xEE50 = true
break
end
endlocal _0xC49C = 0
for _0xF439, _0x615D in ipairs(_0x02C0) do
if _0xC49C >= 2 then break end
local _0x5A8C = _0x4C2C()
if not _0x5A8C or not _0x5A8C.grounded then break end
if _0xF81F(_0x5A8C, _0x615D.x, _0x615D.y, _0xDD5D) and (_0xF90C or _0x8604 or _0x7ADC[_0x615D.x]) then
if _0xD509(_0x615D.x, _0x615D.y) ~= 0 thenif not _0xFA64(_0x615D.x, _0x615D.y, true) then
_0xED30(_0x3F90.Skip, _0x615D.idx, 300)
else
_0x3F90.Status = ("Bersihkan tile Dirt Farm (%d,%d)"):format(_0x615D.x, _0x615D.y)
local _0x32A3 = false
for _0xF439 = 1, 40 do
local _0x2DAE, _0x3330 = _0x3F90.punch(_0x615D.x, _0x615D.y, false)
if _0x3330 =="lava"then return"work"end
if _0x3330 =="stop"or _0x3330 =="range"then return"wait"end
if _0x2DAE == nil then break endif _0x2DAE =="broke"then
_0x32A3 = true
break
end
endif not _0x32A3 then _0xED30(_0x3F90.Skip, _0x615D.idx, 1800) end
_0x9A9F(0.15)
end
return"work"end
if _0x0109(_0x615D, _0x5A8C) then
_0xC49C += 1
if _0x7ADC[_0x615D.x] then _0x3F90.Under[_0xC0A8] = nil end
if not _0x3422(_0x5D82.PlaceMs) then return"wait"end
elseif _0xC90B(_0x3F90.BlockId) <= (_0x3F90.Reserve or 0) then
break
end
end
end
if _0xC49C > 0 then return"work"end
if _0xC90B(_0x3F90.BlockId) <= (_0x3F90.Reserve or 0) then return"none"end
local _0x83E8 = _0xA3B7() - 0.35if _0xEE50 and not _0x8604 then
local _0x2DAE = _0x3F90.goNear(_0x02C0, _0x83E8, _0x6665 - 1, true)
if _0x2DAE ~="nopath"then return _0x2DAE end
_0x3F90.Under[_0xC0A8] = _0x4DD4 + 60_0x8604 = true
endif not _0x8604 then
local _0x3F29 = {}
for _0xF439, _0x615D in ipairs(_0x02C0) do
if _0x7ADC[_0x615D.x] then _0x3F29[#_0x3F29 + 1] = _0x615D end
end
if #_0x3F29 > 0 then
local _0x2DAE = _0x3F90.goNear(_0x3F29, _0x83E8, nil, true)
if _0x2DAE ~="nopath"then return _0x2DAE end
end
_0x3F90.Under[_0xC0A8] = _0x4DD4 + 60
end
local _0x2DAE = _0x3F90.goNear(_0x02C0, _0x83E8, nil, true)
if _0x2DAE =="nopath"then
for _0xF439, _0x615D in ipairs(_0x02C0) do _0xED30(_0x3F90.Skip, _0x615D.idx, 30) end
_0x3F90.Status = ("Baris y %d belum terjangkau, dilewati sebentar"):format(_0x6665)
return"none"end
return _0x2DAE
endfunction _0x3F90.cfg(_0x756B, _0x8993, _0x059F)
return {
_0xC634 = _0x756B.live,
_0x8993 = _0x8993,
_0x059F = _0x059F and _0xC90B(_0x756B.seed) > 0,
_0xE60E = _0x756B.seed,
only = _0x756B.seed,_0xD3D6 = _0x3F90.FieldSkip,
hms = _0x9715.HarvestMs,
pms = _0x9715.PlantMs,
_0x147F = _0x63B7,_0x97D4 = _0x756B.plantSet,exclude = _0x756B.exclude,
_0x05DF = _0x3F90.Row,
_0x14EE = true,
_0x7FF7 = function(_0x615D) _0x3F90.Status = _0x615D end,
onHarvest = function() _0x3F90.Harvested += 1 end,
onPlant = function() _0x3F90.Planted += 1 end,
}
endfunction _0x3F90.prodRow(_0xDC17)
local function _0x0959(_0xC0A8)
local _0x6665 = _0xDC17.rows[_0xC0A8]
for _0xF439, _0x5409 in ipairs(_0xDC17.cols[_0xC0A8]) do
if not _0x3F90.done(_0x5409, _0x6665) then return false end
end
return true
end
for _0xC0A8 = _0xDC17.K, 1, -1 do
if not _0x0959(_0xC0A8) then
if _0xC0A8 < _0xDC17.K then return _0xC0A8 + 1 end
break
end
end
local _0x7827 = _0x4C2C()
local _0x0E6E, _0xFFDE = nil, nil
for _0xC0A8 = 1, _0xDC17.K do
if _0x0959(_0xC0A8) then
local _0x2DDF = _0x7827 and _0xFE2A(_0xDC17.rows[_0xC0A8] - _0x7827.y) or _0xC0A8
if not _0xFFDE or _0x2DDF < _0xFFDE then _0x0E6E, _0xFFDE = _0xC0A8, _0x2DDF end
end
end
return _0x0E6E
endfunction _0x3F90.prodSpots(_0xDC17, _0xC0A8)
local _0xAEA8, _0x6665 = _0xDC17.W, _0xDC17.rows[_0xC0A8]
local _0x2209 = _0x6665 - 1
local _0x756B = { _0x365A = {} }
local _0x598B = _0xDC17.isLand[_0xC0A8]
local _0xD3D6 = {}
if _0x3F90.BreakX >= 0 and next(_0x3F90.Tiles) ~= nil then
_0xD3D6[_0x3F90.BreakY * _0xAEA8 + _0x3F90.BreakX] = truefor _0x795E in pairs(_0x3F90.Tiles) do
local _0x935C, _0x15BA = string.match(_0x795E,"^(-?%d+),(-?%d+)$")
if _0x935C then _0xD3D6[(_0x3F90.BreakY + tonumber(_0x15BA)) * _0xAEA8 + _0x3F90.BreakX + tonumber(_0x935C)] = true end
end
else
local _0x7799 = _0xDC17.x1 - 3
if _0x2209 >= 0 and _0x7799 > _0xDC17.x0 and _0x598B[_0x7799] and _0x598B[_0x7799 + 1] and _0x3F90.done(_0x7799, _0x6665) and _0x3F90.done(_0x7799 + 1, _0x6665) then
_0x756B.stand = { _0x5409 = _0x7799, _0x6665 = _0x2209 }
_0x756B.tile = { _0x5409 = _0x7799 + 1, _0x6665 = _0x2209 }
_0xD3D6[_0x2209 * _0xAEA8 + _0x7799], _0xD3D6[_0x2209 * _0xAEA8 + _0x7799 + 1] = true, true
end
end
if _0x2209 >= 0 then
for _0xF439, _0x5409 in ipairs(_0xDC17.cols[_0xC0A8]) do
local _0xB9E8 = _0x2209 * _0xAEA8 + _0x5409
if not _0xD3D6[_0xB9E8] then _0x756B.set[_0xB9E8] = true end
end
end
return _0x756B
endfunction _0x3F90.breakSession(_0x756B)
if _0x3F90.lavaTarget() then return false end
local _0x7827 = _0x4C2C()
if not _0x7827 then return false end
local _0xF3CD, _0x3A74 = _0x6B94(_0x7827)
if _0xF3CD ~= _0x3F90.BreakX or _0x3A74 ~= _0x3F90.BreakY then
_0x3F90.Status = ("Jalan ke posisi break Dirt Farm (%d,%d)"):format(_0x3F90.BreakX, _0x3F90.BreakY)
if not _0x1FC4(_0x3F90.BreakX, _0x3F90.BreakY, 45, function() return not _0x756B.live() or _0x3F90.lavaTarget() ~= nil end) then
if _0x3F90.lavaTarget() or not _0x756B.live() then return false end
_0x3F90.Status ="Gagal jalan ke posisi break Dirt Farm, pakai posisi otomatis"return nil
end
end
if not _0x756B.live() then return false end
local _0x964C = _0xC90B(_0x756B.seed)
local _0x0991 = math.max(1, _0x3F90.freeSpots(_0x756B))
_0x5D82.Override = { offsets = _0x3F90.Tiles, _0x9D38 = _0x756B.block, _0xB364 ="Place + Break", breakMs = _0x3F90.PunchMs or 200 }
_0x5D82.Quiet = true
_0x5D82.WaitingDrops, _0x5D82.WorkReason = nil, nil
table.clear(_0x895A)
table.clear(_0x0508)
_0x5D82.Running = true
_0x5D82.RunId = (_0x5D82.RunId or 0) + 1
local _0x2010 = _0x5D82.RunId
local _0x2E20, _0x3DA7 = _0x5D82.Placed + _0x5D82.Broken, os.clock()
task.spawn(function()while _0x5D82.Running and _0x5D82.RunId == _0x2010 do
task.wait(0.1)
if not _0x5D82.Running or _0x5D82.RunId ~= _0x2010 then break end
local _0x77AD = _0x5D82.Placed + _0x5D82.Broken
if _0x77AD ~= _0x2E20 then _0x2E20, _0x3DA7 = _0x77AD, os.clock() end
if not _0x756B.live() or _0x3F90.lavaTarget() or _0xC90B(_0x756B.seed) >= _0x964C + _0x0991 or _0xC90B(_0x756B.block) <= 0
or (not _0x2FB0.WorkBusy and os.clock() - _0x3DA7 > 8) then
_0x5D82.Running = false
end
end
end)
_0x3F90.Status = ("Break %s di posisi break Dirt Farm (%d,%d)"):format(_0x949D(_0x756B.block), _0x3F90.BreakX, _0x3F90.BreakY)
local _0xF64E, _0x7BA0 = pcall(_0x286D, _0x2010)
if not _0xF64E then warn("[ziey HUB] Break Dirt Farm error: ".. tostring(_0x7BA0)) end
_0x5D82.Running = false
_0x5D82.Override = nil
_0x5D82.Quiet = false
return _0xC90B(_0x756B.seed) > _0x964C
endfunction _0x3F90.freeSpots(_0x756B)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return 0 end
if not _0x756B.plantSet then
local _0x66F3, _0x67AE = _0x282D(true, _0x756B.seed)
return (_0x66F3 == 0 and _0x67AE == nil) and 1 or 0
end
local _0x66F3 = 0
for _0xB9E8 in pairs(_0x756B.plantSet) do
local _0x5409, _0x6665 = _0xB9E8 % _0x9F6E.w, _0xB9E8 // _0x9F6E.w
if _0xD509(_0x5409, _0x6665) == 0 and _0x0BE0(_0x5409, _0x6665, _0x756B.seed) then _0x66F3 += 1 end
end
return _0x66F3
endfunction _0x3F90.bootstrap(_0x756B)
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or _0xC90B(_0x756B.block) <= 0 or _0x3F90.lavaTarget() then return false end
if _0x3F90.BreakX >= 0 and next(_0x3F90.Tiles) ~= nil then
local _0x2DAE = _0x3F90.breakSession(_0x756B)
if _0x2DAE ~= nil then return _0x2DAE endend
local _0x51E7 = nil
if _0x756B.stand then
local _0x4382 = _0x4C2C()
local _0xF3CD, _0x3A74 = nil, nil
if _0x4382 then _0xF3CD, _0x3A74 = _0x6B94(_0x4382) end
if _0xF3CD ~= _0x756B.stand.x or _0x3A74 ~= _0x756B.stand.y then
_0x3F90.Status = ("Jalan ke posisi pasang-pecah (%d,%d)"):format(_0x756B.stand.x, _0x756B.stand.y)
if not _0x1FC4(_0x756B.stand.x, _0x756B.stand.y, 45, function() return not _0x756B.live() or _0x3F90.lavaTarget() ~= nil end) then _0x756B.stand = nil end
end
if _0x756B.stand and _0x756B.tile then
local _0x2010 = _0xD509(_0x756B.tile.x, _0x756B.tile.y)
if _0x2010 == _0x756B.block or (_0x2010 == 0 and _0xB36B(_0x756B.tile.x, _0x756B.tile.y)) then _0x51E7 = _0x756B.tile end
end
end
if _0x3F90.lavaTarget() or not _0x756B.live() then return false end
local _0x7827 = _0x4C2C()
if not _0x7827 or not _0x7827.grounded then return false end
if not _0x51E7 then
local _0xDD5D = _0x9D4A() - 0.08
local _0x6912 = _0x4748(_0x7827.y - 0.475)
for _0xF439, _0x935C in ipairs({ 1, 2, -1, -2 }) dolocal _0x574E = _0x4748(_0x7827.x) + _0x935C
local _0xB9E8 = _0x6912 * _0x9F6E.w + _0x574E
if _0x574E >= 0 and _0x574E < _0x9F6E.w and _0x6912 >= 0 and _0xD509(_0x574E, _0x6912) == 0
and not (_0x756B.plantSet and _0x756B.plantSet[_0xB9E8]) and not (_0x756B.exclude and _0x756B.exclude[_0xB9E8])
and _0xF81F(_0x7827, _0x574E, _0x6912, _0xDD5D) and not _0xA809(_0x574E, _0x6912, _0x7827) and _0xB36B(_0x574E, _0x6912) then
_0x51E7 = { _0x5409 = _0x574E, _0x6665 = _0x6912 }
break
end
end
end
if not _0x51E7 then return false endlocal _0x964C = _0xC90B(_0x756B.seed)
local _0x0991 = math.max(1, _0x3F90.freeSpots(_0x756B))
for _0xF439 = 1, 300 do
if not _0x756B.live() or _0x3F90.lavaTarget() or _0x1DCC.World ~= _0x9F6E then break end
local _0x5E96 = _0x4C2C()
if not _0x5E96 then break end
local _0xF3CD, _0x3A74 = _0x6B94(_0x5E96)
local _0xEE48, _0x3B8B = _0x2FB0.prepareWork({ _0x51E7 }, _0xF3CD, _0x3A74, function()
return _0x756B.live() and _0x1DCC.World == _0x9F6E and not _0x3F90.lavaTarget()
end, { _0x14EE = true, _0xE60E = _0x756B.seed })
if #_0xEE48 == 0 then _0x3F90.Status = _0x3B8B or"Menunggu collect sebelum produksi seed"; break end
if not _0x756B.live() or _0x1DCC.World ~= _0x9F6E or _0x3F90.lavaTarget() then break end
if _0xC90B(_0x756B.seed) >= _0x964C + _0x0991 or (_0xC90B(_0x756B.block) <= 0 and _0xD509(_0x51E7.x, _0x51E7.y) == 0) then break end
if _0xD509(_0x51E7.x, _0x51E7.y) == 0 then
_0xBF1A("fg", _0x51E7.x, _0x51E7.y, _0x756B.block)
pcall(function() _0x1DCC.Inv:remove(_0x756B.block, 1) end)
_0x0508[_0x51E7.x ..",".. _0x51E7.y] = os.clock()
_0x3F90.Status = ("Pasang & pecah %s untuk dapat seed (%d,%d)"):format(_0x949D(_0x756B.block), _0x51E7.x, _0x51E7.y)
if not _0x3422(_0x5D82.PlaceMs) then break end
end
for _0xF439 = 1, 40 do
if not _0x756B.live() then break end
local _0x2DAE, _0x3330 = _0x3F90.punch(_0x51E7.x, _0x51E7.y, false, _0x756B.live)
if _0x3330 =="lava"or _0x3330 =="stop"or _0x3330 =="range"then return false end
if _0x2DAE == nil or _0x2DAE =="broke"then break end
end
end
return _0xC90B(_0x756B.seed) > _0x964C
endfunction _0x3F90.produceStep(_0x756B)
_0x756B.phase = _0x756B.phase or"panen"if _0x756B.phase =="panen"then
_0x6EC8 = _0x3F90.cfg(_0x756B, true, false)
local _0x2DAE = _0xC054()
if _0x2DAE =="idle"then
_0x756B.phase ="tanam"return"next"end
return _0x2DAE
end
if _0x756B.phase =="tanam"then
if _0xC90B(_0x756B.seed) > 0 and _0x3F90.freeSpots(_0x756B) > 0 then
_0x6EC8 = _0x3F90.cfg(_0x756B, false, true)
local _0x2DAE = _0xC054()
if _0x2DAE ~="idle"then return _0x2DAE end
end
if not _0x756B.broke and _0x3F90.freeSpots(_0x756B) > 0 and _0xC90B(_0x756B.seed) <= 0 and _0xC90B(_0x756B.block) > 0 then
_0x756B.phase ="break"else
_0x756B.phase, _0x756B.broke ="tunggu", nil
end
return"next"end
if _0x756B.phase =="break"then
_0x756B.broke = true_0x756B.bootAt = os.clock()
_0x3F90.bootstrap(_0x756B)
_0x756B.phase ="tanam"return"work"endlocal _0x66F3, _0x67AE = _0x282D(false, _0x756B.seed)
if _0x66F3 > 0 and (_0x67AE == nil or _0x67AE > 20) then
_0x756B.phase ="panen"return"next"end
if _0x66F3 == 0 and _0x67AE == nil and _0x3F90.freeSpots(_0x756B) > 0 and os.clock() - (_0x756B.retryAt or 0) > 10 thenif _0xC90B(_0x756B.seed) > 0 or (_0xC90B(_0x756B.block) > 0 and os.clock() - (_0x756B.bootAt or 0) > 5) then
_0x756B.retryAt = os.clock()
_0x756B.phase ="tanam"return"next"end
end
return"idle", _0x67AE, _0x66F3
endfunction _0x3F90.sweep(_0xDC17, _0x962E, _0x1D5B, maxSec)
if not _0x2FB0.list then return 0 end
local _0xE95B, _0x932D = _0xDC17.x0, _0xDC17.x1 + 1
local _0xA7F4, _0x1F72 = math.max(0, _0xDC17.rows[1] - 1), _0xDC17.rows[_0xDC17.K] + 1
return _0x38E9.fetchDrops(function() return _0x962E() and not _0x3F90.lavaTarget(_0xDC17) end, 999, function(_0x2DDF)
return _0x2DDF.x >= _0xE95B and _0x2DDF.x < _0x932D and _0x2DDF.y >= _0xA7F4 and _0x2DDF.y < _0x1F72 and (not _0x1D5B or _0x1D5B[_0x2DDF.id] == true)
end, maxSec or 60)
end
function _0x3F90.stop(_0x3B8B)
_0x3F90.Running = false
if _0xECF0.Running == false and _0x5D82.Override then _0x5D82.Running = false end
_0x7C3D()
_0x0D00()
_0x3F90.Phase = _0x3B8B or"Dihentikan"if _0x6FB2.BuildToggle then pcall(function() _0x6FB2.BuildToggle:Set(false) end) end
if _0x3B8B then
_0x8021("Bangun Dirt Farm", _0x3B8B, 5)
if not string.find(_0x3B8B,"^Dihentikan") then _0x2479.send("pabrik","Bangun Dirt Farm: ".. _0x3B8B) end
end
end
local function _0xBD83(_0x5431)
local function _0x962E() return _0x3F90.Running and _0xCA76() and _0x3F90.RunId == _0x5431 end
local _0xE60E = _0x4C00(_0x3F90.BlockId)
local _0x756B = { _0xE60E = _0xE60E, _0x9D38 = _0x3F90.BlockId, _0x962E = _0x962E }
local _0x4F28 = nil
local _0xED0B = nil
while _0x962E() do
task.wait()
local _0xDC17 = _0x3F90.plan()
if not _0xDC17 then
_0x3F90.stop("Tidak ada baris Dirt Farm (cek X awal / X akhir / Y baris atas)")
break
end
_0x3F90.ActivePlan = _0xDC17
if _0x3F90.lavaStep(_0xDC17, _0x962E) then continue end
if _0x3F90.Surface == nil then _0x3F90.Surface = _0x3F90.findSurface(_0xDC17) end
local _0xBDA1 = _0x3F90.carveList(_0xDC17)
local _0xA07A = _0x3037(_0x3F90.BlockId, _0xDC17, _0xBDA1)
_0x3F90.Info = _0xA07A
_0x3F90.InfoAt = os.clock()local _0x2DAE ="none"if #_0xBDA1 > 0 then
_0x3F90.Reserve = 0
_0x3F90.Phase = ("Gali: sisa %d tile"):format(#_0xBDA1)
_0x2DAE = _0x3F90.carveStep(_0xDC17, _0xBDA1, _0x962E)
if _0x2DAE ~="none"then _0xED0B = nil end
end
if _0x2DAE =="none"and #_0xBDA1 == 0 and not _0x756B.dugSwept then_0x756B.dugSwept, _0x756B.sweptAt = true, os.clock()
if _0xC90B(_0x3F90.BlockId) < _0xA07A.need then
_0x3F90.Phase ="Ambil block sisa galian yang masih dibutuhkan"_0x3F90.sweep(_0xDC17, _0x962E, { [_0x3F90.BlockId] = true }, 30)
end
continue
end
if _0x2DAE =="none"then
local _0xCD6B = _0xC90B(_0x3F90.BlockId)
if _0xA07A.need == 0 thenif #_0xBDA1 > 0 then
_0xED0B = _0xED0B or os.clock()
local _0xF837 = os.clock() - _0xED0B
if _0xF837 < 45 then
_0x3F90.Status = #_0xBDA1 .." tile gali belum terjangkau, dicoba lagi"if _0xF837 > 20 and not _0x756B.carveReset then
_0x756B.carveReset = true
table.clear(_0x3F90.Skip)
table.clear(_0xF41B)
table.clear(_0x43C8)
_0x9929 = nil
end
if not _0x3422(1000) then break end
continue
end
end_0x3F90.Phase ="Bersihkan drop di Dirt Farm (per baris)"_0x3F90.sweep(_0xDC17, _0x962E, nil, 90)
if not _0x962E() then break end
if _0x3F90.lavaTarget(_0xDC17) then continue end
local _0xC346 = (#_0xBDA1 > 0) and (", ".. #_0xBDA1 .." tile gali dilewati") or""_0x3F90.stop("Dirt Farm selesai (".. _0xA07A.done .." block".. _0xC346 ..")")
if _0x3F90.ThenPabrik then
if not _0xECF0.SeedId then _0xECF0.SeedId = _0xE60E end
_0xECF0.start()
end
break
end
local _0xDCD7 = (_0xCD6B >= _0xA07A.need or not _0xE60E) and 0 or _0x3F90.RESERVE
if _0x4F28 ~="produksi"and _0xCD6B > _0xDCD7 then_0x4F28 ="pasang"_0x3F90.Reserve = _0xDCD7
_0x3F90.Phase = ("Pasang Dirt Farm: sisa %d tile"):format(_0xA07A.need)
.. ((_0xDCD7 > 0) and (" (sisakan ".. _0xDCD7 .." block)") or"")
local _0x6B16 = _0x3F90.placeStep(_0xDC17)
if _0x6B16 =="none"and _0xC90B(_0x3F90.BlockId) > _0xDCD7 then
_0x3F90.Status ="Sisa tile belum terjangkau / terhalang, dicoba lagi"_0xED0B = _0xED0B or os.clock()
if os.clock() - _0xED0B > 20 then_0xED0B = nil
table.clear(_0x3F90.Skip)
table.clear(_0xF41B)
table.clear(_0x43C8)
table.clear(_0x3F90.Under)
_0x9929 = nil
end
if not _0x3422(1500) then break end
elseif _0x6B16 ~="none"then
_0xED0B = nil
end
elseif not _0xE60E then
_0x3F90.stop(("Block habis, masih kurang %d (seed-nya tidak ketemu)"):format(_0xA07A.need))
break
elseif _0x4F28 ~="produksi"then
if os.clock() - (_0x756B.sweptAt or -1e9) > 120 then_0x756B.sweptAt = os.clock()
_0x3F90.Phase ="Ambil drop sisa di Dirt Farm (per baris)"_0x3F90.sweep(_0xDC17, _0x962E, { [_0x3F90.BlockId] = true }, 30)
continue
end
_0x4F28 ="produksi"_0x756B.phase, _0x756B.rowK = nil, nil
_0x8021("Bangun Dirt Farm","Block habis, produksi 1 baris dulu", 4)
end
local _0x81CA = math.min(_0x65ED, _0xA07A.need + _0x3F90.RESERVE)
if _0xCD6B >= _0x81CA then
_0x4F28 ="pasang"_0x8021("Bangun Dirt Farm","Block cukup (".. _0xCD6B .."), lanjut pasang", 4)
else
if _0x756B.rowK and not _0xDC17.rows[_0x756B.rowK] then _0x756B.rowK = nil end
if _0x756B.rowK == nil then
_0x756B.rowK = _0x3F90.prodRow(_0xDC17) or false
table.clear(_0x3F90.Row)
if _0x756B.rowK then
local _0xA21E = _0x3F90.prodSpots(_0xDC17, _0x756B.rowK)
_0x756B.plantSet, _0x756B.stand, _0x756B.tile, _0x756B.exclude = _0xA21E.set, _0xA21E.stand, _0xA21E.tile, nil
else_0x756B.plantSet, _0x756B.stand, _0x756B.tile, _0x756B.exclude = nil, nil, nil, _0xBDBC()
end
end
_0x3F90.Phase = ("Produksi %s: block %d / %d"):format(_0x5621[_0x756B.phase or"panen"] or"-", _0xCD6B, _0x81CA)
.. (_0x756B.rowK and (" | baris y ".. _0xDC17.rows[_0x756B.rowK]) or"")
local _0x6B16, _0x1AB5, _0x1A95 = _0x3F90.produceStep(_0x756B)
if _0x6B16 ~="idle"then _0x756B.stuckAt = nil end
if _0x6B16 =="idle"then
if not _0x1AB5 and (_0x1A95 or 0) == 0 and _0xC90B(_0xE60E) <= 0 and _0xCD6B <= 0 then
_0x3F90.stop("Seed & block habis. Butuh ".. _0xA07A.need .." block")
break
end
if (_0x1A95 or 0) > 0 then
_0x3F90.Status = _0x1A95 .." pohon siap belum terjangkau, dicoba lagi"_0x756B.stuckAt = _0x756B.stuckAt or os.clock()
if os.clock() - _0x756B.stuckAt > 30 then_0x756B.stuckAt = nil
table.clear(_0x3F90.FieldSkip)
table.clear(_0x43C8)
_0x9929 = nil
end
elseif _0x1AB5 then
_0x3F90.Status ="Menunggu pohon siap ±".. _0xBC7F(_0x1AB5)
elseif _0xC90B(_0xE60E) <= 0 then
_0x3F90.Status ="Seed habis & tidak ada tempat pasang-pecah di samping karakter"else
_0x3F90.Status ="Tidak ada tempat tanam, menunggu"end
if not _0x3422(1000) then break end
end
end
end
end
end
_0x0D00()
end
function _0x3F90.start()
if _0x3F90.Running then return end
local _0x8599
local _0x91CB = _0x3F90.BlockId and _0xD7DB[_0x3F90.BlockId]
if not _0x1DCC.World then
_0x8599 ="Data world belum ketemu. Tekan 'Hubungkan ke game'"elseif not _0x4CD3 and not _0x86C8.bindMenu() then
_0x8599 = _0x86C8.Error or"Kontrol gerak game belum terhubung"elseif not _0x4C2C() then
_0x8599 ="Kamu belum masuk world"elseif not (_0x91CB and _0x91CB.solid) then
_0x8599 ="Pilih block padat untuk Dirt Farm"elseif #_0x920A() == 0 then
_0x8599 ="Tidak ada baris yang muat (Y atas terlalu bawah). Berdiri di pojok kiri-ATAS Dirt Farm lalu tekan 'Pakai posisi karakter'"end
if _0x8599 then
_0x8021("Bangun Dirt Farm", _0x8599, 4)
if _0x6FB2.BuildToggle then pcall(function() _0x6FB2.BuildToggle:Set(false) end) end
return
end
if _0x5D82.Running and not _0x5D82.Override then _0xF604("Dihentikan karena Bangun Dirt Farm dimulai") end
if _0xD222.Running then _0xD467("Dihentikan karena Bangun Dirt Farm dimulai") end
if _0x9715.Running then _0x34F2("Dihentikan karena Bangun Dirt Farm dimulai") end
if _0xD808.Running and _0xD808.stop then _0xD808.stop("Dihentikan karena Bangun Dirt Farm dimulai") end
if _0xECF0.Running then _0xECF0.stop("Dihentikan karena Bangun Dirt Farm dimulai") end
if not _0x1DCC.Trees then _0x525C() end
table.clear(_0x3F90.Skip)
table.clear(_0xF41B)
table.clear(_0x3F90.FieldSkip)
table.clear(_0x3F90.Row)
table.clear(_0x3F90.Under)
table.clear(_0x3F90.BreakTimes)
table.clear(_0x3F90.LavaSkip)
table.clear(_0x43C8)
_0x3F90.Surface = nil_0x3F90.Reserve = 0
_0x3F90.Route, _0x3F90.ActivePlan, _0x3F90.NextPunchAt = nil, nil, nil
_0x3F90.LavaCleared = 0
_0x0DAF.Cache = nil
_0xECF0.BreakFailUntil = 0
_0x3F90.Running = true
_0x3F90.RunId = (_0x3F90.RunId or 0) + 1
_0x3F90.Phase ="Menghitung..."_0x433F()
if _0x6FB2.BuildToggle then pcall(function() _0x6FB2.BuildToggle:Set(true) end) end
local _0x2010 = _0x3F90.RunId
task.spawn(function()
local _0xF64E, _0x7BA0 = pcall(_0xBD83, _0x2010)
if not _0xF64E then
warn("[ziey HUB] Bangun Dirt Farm error: ".. tostring(_0x7BA0))
if _0x3F90.Running then _0x3F90.stop("Error: ".. tostring(_0x7BA0)) end
end
end)
end
_0x927E.landInfo = _0x3037
_0x927E.landRows = _0x920A
_0x927E.seedOfBlock = _0x4C00
_0x927E.blockOfSeed = _0xC232
_0x927E.parseDropTarget = _0xBA81
_0x927E.walkTo = _0x1FC4
_0x927E.startSpliceRoam = _0x43E2
_0x927E.stopSpliceRoam = _0xBFC2
_0x927E.treeReadyAt = _0x0FC9
_0x927E.plantSpotOk = _0x0BE0
_0x927E.stopWalk = function() _0x38E9.Homing = false end
_0x927E.here = function()
local _0x7827 = _0x4C2C()
if _0x7827 then return _0x6B94(_0x7827) end
return nil
end
_0x927E.startClear = _0xFB67
_0x927E.startFarmer = _0xD943
_0x927E.updateClearStatus = _0xA037
_0x927E.updateFarmerStatus = _0x88F6
_0x927E.findTreeRefs = _0x525C
_0x927E.tileOpen = _0x99A4
_0x927E.releaseInput = _0x0D00
_0x927E.BadEdge = _0x43C8
_0x927E.ClearFail = _0x9F72
_0x927E.resetReach = function() _0x9929 = nil end
end)() endlocal _0xCEF6 = game:GetService("TextChatService")
local function _0x1442()
local _0x2EEB = _0xCEF6:FindFirstChild("WorldChannels")
if not _0x2EEB then return nil end
local _0xDF0A = _0x1DCC.World and _0x1DCC.World.name
if type(_0xDF0A) =="string"and _0xDF0A ~=""then
local _0xCF72 = _0x2EEB:FindFirstChild(_0xDF0A)
if _0xCF72 then return _0xCF72 end
endfor _0xF439, _0xCF72 in ipairs(_0x2EEB:GetChildren()) do
if _0xCF72:IsA("TextChannel") then
for _0xF439, src in ipairs(_0xCF72:GetChildren()) do
if src:IsA("TextSource") and src.UserId == _0x8270.UserId then return _0xCF72 end
end
end
end
return nil
end
local function _0x61F1(_0xCDA3)
local _0xDB37 = {}
for part in string.gmatch(_0xCDA3 or"","[^|\n]+") do
part = part:gsub("^%s+",""):gsub("%s+$","")
if part ~=""then _0xDB37[#_0xDB37 + 1] = part end
end
return _0xDB37
end
local _0xAF95 = nil
local function _0x6E64()
if not _0x6FB2.SpamStatus then return end
local _0x3E00 ="Status   : ".. (_0x4BB9.On and"JALAN"or"BERHENTI")
.."\nPesan    : ".. #_0x4BB9.Texts .." (bergantian)".."\nTerkirim : ".. _0x4BB9.Sent
.."\nTerakhir : ".. _0x4BB9.Last
if _0x3E00 == _0xAF95 then return end
_0xAF95 = _0x3E00
task.defer(function()
pcall(function() _0x6FB2.SpamStatus:SetDesc(_0x3E00) end)
end)
endlocal function _0xCCD2()
if #_0x4BB9.Texts == 0 then
_0x4BB9.Last ="Daftar pesan kosong"return false
end
local _0xCF72 = _0x1442()
if not _0xCF72 then
_0x4BB9.Last ="Channel chat world belum ada (masuk world dulu)"return false
end
if _0x4BB9.Index > #_0x4BB9.Texts then _0x4BB9.Index = 1 end
local _0xE842 = _0x4BB9.Texts[_0x4BB9.Index]
_0x4BB9.Index = _0x4BB9.Index % #_0x4BB9.Texts + 1
local _0xF64E, _0x8599 = pcall(_0xCF72.SendAsync, _0xCF72, _0xE842)
if _0xF64E then
_0x4BB9.Sent += 1
_0x4BB9.Last = _0xE842
else
_0x4BB9.Last ="Gagal: ".. tostring(_0x8599)
end
return _0xF64E
end
_0x4BB9.NextAt = 0
task.spawn(function()
while _0xCA76() do
if _0x4BB9.On and os.clock() >= _0x4BB9.NextAt then
_0xCCD2()
_0x4BB9.NextAt = os.clock() + math.max(3, _0x4BB9.IntervalSec)
_0x6E64()
end
task.wait(0.25)
end
end)local _0x4A96 = game:GetService("TextService")
local _0x6C89 = { _0x1981 = os.clock() }
local _0x7961 = ColorSequence.new({
ColorSequenceKeypoint.new(0.00, Color3.fromRGB(170, 90, 255)),ColorSequenceKeypoint.new(0.25, Color3.fromRGB(60, 205, 255)),ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 110, 210)),ColorSequenceKeypoint.new(0.75, Color3.fromRGB(60, 205, 255)),
ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 90, 255)),
})
local _0xB387 = Enum.Font.FredokaOnelocal function _0xF292()
local _0x440B = _0xE807:FindFirstChild("GameGui")
local _0x954B = _0x440B and _0x440B:FindFirstChild("World")
local _0x8AD6 = _0x954B and _0x954B:FindFirstChild("Camera")
local _0x45EF = _0xE807:FindFirstChild("ChatGui")
local _0x3984 = _0x45EF and _0x45EF:FindFirstChild("HUD")
local _0x930E = _0x3984 and _0x3984:FindFirstChild("PlayerPanel")
return _0x8AD6 and _0x8AD6:FindFirstChild("NameTag"), _0x930E and _0x930E:FindFirstChild("Name")
end
local function _0x2219(_0xF5A6, size)
local _0xF64E, _0x97A1 = pcall(_0x4A96.GetTextSize, _0x4A96, _0xF5A6, size, _0xB387, Vector2.new(2000, 200))
return (_0xF64E and _0x97A1.X or #_0xF5A6 * size * 0.55) + 6end
local function _0x6610(holder, size, isTag)
local _0x97AD = Instance.new("TextLabel")
_0x97AD.Name ="PianName"_0x97AD.BackgroundTransparency = 1
_0x97AD.Font = _0xB387
_0x97AD.TextSize = size
_0x97AD.TextColor3 = Color3.new(1, 1, 1)
_0x97AD.Text = _0xFA1E.NameText
_0x97AD.ZIndex = isTag and 1017 or 10
if isTag then
_0x97AD.AnchorPoint = Vector2.new(0.5, 0.5)_0x97AD.Position = UDim2.fromScale(0.5, 0.5)
else
_0x97AD.AnchorPoint = Vector2.new(0, 0.5)
_0x97AD.Position = UDim2.new(0, 3, 0.5, 0)
_0x97AD.TextXAlignment = Enum.TextXAlignment.Left
end
local _0xE35E = Instance.new("UIStroke")
_0xE35E.Thickness = 2
_0xE35E.Color = Color3.fromRGB(25, 12, 40)
_0xE35E.Transparency = 0.1
_0xE35E.Parent = _0x97AD
local _0x1A30 = Instance.new("UIGradient")
_0x1A30.Color = _0x7961
_0x1A30.Rotation = 12
_0x1A30.Parent = _0x97AD
local _0xB7B3 = Instance.new("UIScale")
_0xB7B3.Parent = _0x97AD
_0x97AD.Parent = holder
return { holder = holder, bitmap = holder:FindFirstChild("BitmapText"), _0x9C57 = _0x97AD, _0x1A30 = _0x1A30, _0xB7B3 = _0xB7B3,
size = size, isTag = isTag, _0xF5A6 = nil, _0x9F6E = 0 }
end
local function _0x20DB(_0x7BA0)
if not _0x7BA0 then return end
pcall(function() _0x7BA0.label:Destroy() end)
if _0x7BA0.bitmap then pcall(function() _0x7BA0.bitmap.Visible = true end) end
if _0x7BA0.isTag and _0x7BA0.bitmap thenpcall(function()
local _0xFB9D = _0x7BA0.bitmap.Size.X.Offset
_0x7BA0.holder.Size = UDim2.fromOffset(_0xFB9D, _0x7BA0.holder.Size.Y.Offset)
local _0xCD64 = _0x7BA0.holder:FindFirstChild("Wrench")
if _0xCD64 then _0xCD64.Position = UDim2.fromOffset(_0xFB9D + 4, _0xCD64.Position.Y.Offset) end
end)
end
end
local function _0xDBB5()
_0x20DB(_0x6C89.tag)
_0x20DB(_0x6C89.panel)
_0x6C89.tag, _0x6C89.panel = nil, nil
endlocal function _0x1B7D(_0x7BA0, holder, size, isTag)
if not holder then
_0x20DB(_0x7BA0)
return nil
end
if not _0x7BA0 or _0x7BA0.holder ~= holder or not _0x7BA0.label.Parent then
_0x20DB(_0x7BA0)
_0x7BA0 = _0x6610(holder, size, isTag)
end
if _0x7BA0.text ~= _0xFA1E.NameText then
_0x7BA0.text = _0xFA1E.NameText
_0x7BA0.label.Text = _0xFA1E.NameText
_0x7BA0.w = _0x2219(_0xFA1E.NameText, size)
end
if _0x7BA0.bitmap and _0x7BA0.bitmap.Visible then _0x7BA0.bitmap.Visible = false end
if isTag then
local _0x887D = math.max(holder.Size.Y.Offset, size + 6)
if _0x7BA0.label.Size.X.Offset ~= _0x7BA0.w or _0x7BA0.label.Size.Y.Offset ~= _0x887D then
_0x7BA0.label.Size = UDim2.fromOffset(_0x7BA0.w, _0x887D)
end
if holder.Size.X.Offset ~= _0x7BA0.w then
holder.Size = UDim2.fromOffset(_0x7BA0.w, holder.Size.Y.Offset)end
local _0xCD64 = holder:FindFirstChild("Wrench")
if _0xCD64 and _0xCD64.Position.X.Offset ~= _0x7BA0.w + 4 then
_0xCD64.Position = UDim2.fromOffset(_0x7BA0.w + 4, _0xCD64.Position.Y.Offset)
end
else
_0x7BA0.label.Size = UDim2.new(1, -6, 1, 0)
end
return _0x7BA0
endtable.insert(_0x3886, _0xED14.RenderStepped:Connect(function()
if not _0xCA76() or not _0xFA1E.CustomName then return end
local _0x429B, _0x0950 = _0xF292()
_0x6C89.tag = _0x1B7D(_0x6C89.tag, _0x429B, 22, true)
_0x6C89.panel = _0x1B7D(_0x6C89.panel, _0x0950, 21, false)
local _0x615D = os.clock() - _0x6C89.t0
local _0x95E2 = Vector2.new(((_0x615D * 0.45) % 2) - 1, 0)
local _0xC750 = 1 + 0.045 * math.sin(_0x615D * 3.2)
local _0xECC6, _0xA39D = _0x6C89.tag, _0x6C89.panel
if _0xECC6 then
_0xECC6.gr.Offset = _0x95E2
_0xECC6.sc.Scale = _0xC750
end
if _0xA39D then
_0xA39D.gr.Offset = _0x95E2
_0xA39D.sc.Scale = _0xC750
end
end))table.insert(_0x3886, _0x8270.Idled:Connect(function()
if _0x5D82.AntiAfk and _0xCA76() then
_0x2507:CaptureController()
_0x2507:ClickButton2(Vector2.new())
end
end))_0x7528.Report("Menyiapkan panel dan kontrol")
local _0xA91D = _0x7528.GuiParent(_0xE807)
local function _0xEB0A(_0xDF0A)
local _0x375B = Instance.new("ScreenGui")
_0x7528.StartupGuis = _0x7528.StartupGuis or {}
table.insert(_0x7528.StartupGuis, _0x375B)
_0x375B.Name = _0xDF0A
_0x375B.ResetOnSpawn = false
_0x375B.IgnoreGuiInset = true
_0x375B.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0x375B.DisplayOrder = 999
_0x375B.Enabled = false
if syn and syn.protect_gui then pcall(syn.protect_gui, _0x375B) end
_0x375B.Parent = _0xA91D
return _0x375B
end
local _0xBF03 = 2
local _0x1A39 = 38
local _0xDBB1 = 4
local _0xD501 = _0xEB0A("PianGrid")
_0x6FB2.GridGui = _0xD501
local _0x1422 = _0xBF03 * 2 + 1
local _0x5499 = _0x1422 * _0x1A39 + (_0x1422 - 1) * _0xDBB1
local _0x5174 = Instance.new("Frame")
_0x5174.Size = UDim2.fromOffset(_0x5499 + 20, _0x5499 + 96)
_0x5174.Position = UDim2.fromOffset(20, 80)
_0x5174.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
_0x5174.BorderSizePixel = 0
_0x5174.Parent = _0xD501
Instance.new("UICorner", _0x5174).CornerRadius = UDim.new(0, 10)
local _0x6786 = Instance.new("UIStroke", _0x5174)
_0x6786.Color = Color3.fromRGB(70, 70, 90)
local _0xE762 = Instance.new("TextLabel")
_0xE762.Size = UDim2.new(1, -40, 0, 28)
_0xE762.Position = UDim2.fromOffset(10, 4)
_0xE762.BackgroundTransparency = 1
_0xE762.Font = Enum.Font.GothamBold
_0xE762.TextSize = 13
_0xE762.TextXAlignment = Enum.TextXAlignment.Left
_0xE762.TextColor3 = Color3.fromRGB(235, 235, 245)
_0xE762.Text = _0xEAC0.T("Grid Tile")
_0xE762.Parent = _0x5174
local _0x29F7 = Instance.new("TextButton")
_0x29F7.Size = UDim2.fromOffset(24, 24)
_0x29F7.Position = UDim2.new(1, -30, 0, 6)
_0x29F7.BackgroundColor3 = Color3.fromRGB(60, 60, 75)
_0x29F7.Text ="X"_0x29F7.Font = Enum.Font.GothamBold
_0x29F7.TextSize = 12
_0x29F7.TextColor3 = Color3.new(1, 1, 1)
_0x29F7.Parent = _0x5174
Instance.new("UICorner", _0x29F7).CornerRadius = UDim.new(0, 6)
_0x29F7.MouseButton1Click:Connect(function()
_0xD501.Enabled = false
end)
local _0x06D6 = Instance.new("Frame")
_0x06D6.Size = UDim2.fromOffset(_0x5499, _0x5499)
_0x06D6.Position = UDim2.fromOffset(10, 36)
_0x06D6.BackgroundTransparency = 1
_0x06D6.Parent = _0x5174
local _0x6489 = Color3.fromRGB(48, 48, 60)
local _0xD216 = Color3.fromRGB(46, 160, 90)
local _0x791F = Color3.fromRGB(60, 110, 220)
local _0xD686 = {}_0x6FB2.GridMode ="farm"_0x6FB2.gridTarget = function()
if _0x6FB2.GridMode =="pabrik"then return _0xECF0.Tiles end
if _0x6FB2.GridMode =="lahan"then return _0x3F90.Tiles end
return _0x5D82.Offsets
end
local function _0xE878(_0x795E)
local _0x783C = _0xD686[_0x795E]
if _0x783C then _0x783C.BackgroundColor3 = _0x6FB2.gridTarget()[_0x795E] and _0xD216 or _0x6489 end
end
for _0x05DF = 0, _0x1422 - 1 do
for col = 0, _0x1422 - 1 do
local _0x935C, _0x15BA = col - _0xBF03, _0x05DF - _0xBF03
local _0x795E = _0x935C ..",".. _0x15BA
local _0xD0C8 = Instance.new("TextButton")
_0xD0C8.Size = UDim2.fromOffset(_0x1A39, _0x1A39)
_0xD0C8.Position = UDim2.fromOffset(col * (_0x1A39 + _0xDBB1), _0x05DF * (_0x1A39 + _0xDBB1))
_0xD0C8.Font = Enum.Font.GothamBold
_0xD0C8.TextSize = 12
_0xD0C8.TextColor3 = Color3.new(1, 1, 1)
_0xD0C8.Parent = _0x06D6
Instance.new("UICorner", _0xD0C8).CornerRadius = UDim.new(0, 6)
if _0x935C == 0 and _0x15BA == 0 then
_0xD0C8.Text ="ME"_0xD0C8.BackgroundColor3 = _0x791F
_0xD0C8.AutoButtonColor = false
else
_0xD0C8.Text =""_0xD0C8.BackgroundColor3 = _0x6FB2.gridTarget()[_0x795E] and _0xD216 or _0x6489
_0xD686[_0x795E] = _0xD0C8
_0xD0C8.MouseButton1Click:Connect(function()
local _0x2698 = _0x6FB2.gridTarget()
_0x2698[_0x795E] = (not _0x2698[_0x795E]) or nil
_0xE878(_0x795E)
_0xBD39()
end)
end
end
end
local _0xAD3A = Instance.new("TextButton")
_0xAD3A.Size = UDim2.new(1, -20, 0, 30)
_0xAD3A.Position = UDim2.new(0, 10, 1, -54)
_0xAD3A.BackgroundColor3 = _0xD216
_0xAD3A.Font = Enum.Font.GothamBold
_0xAD3A.TextSize = 14
_0xAD3A.TextColor3 = Color3.new(1, 1, 1)
_0xAD3A.Text ="START"_0xAD3A.Parent = _0x5174
Instance.new("UICorner", _0xAD3A).CornerRadius = UDim.new(0, 8)
_0x6FB2.GridStart = _0xAD3A
_0xAD3A.MouseButton1Click:Connect(function()
if _0x6FB2.GridMode =="lahan"then
if _0x3F90.Running then _0x3F90.stop() elseif _0x3F90.start then _0x3F90.start() end
elseif _0x6FB2.GridMode =="pabrik"then
if _0xECF0.Running then _0xECF0.stop() else _0xECF0.start() end
elseif _0x5D82.Running and not _0x5D82.Override then
_0xF604()
else
_0x9F71()
end
end)
local _0xDED5 = Instance.new("TextButton")
_0xDED5.Size = UDim2.new(1, -20, 0, 18)
_0xDED5.Position = UDim2.new(0, 10, 1, -22)
_0xDED5.BackgroundTransparency = 1
_0xDED5.Font = Enum.Font.Gotham
_0xDED5.TextSize = 12
_0xDED5.TextColor3 = Color3.fromRGB(180, 180, 195)
_0xDED5.Text = _0xEAC0.T("Bersihkan pilihan")
_0xDED5.Parent = _0x5174
_0xDED5.MouseButton1Click:Connect(function()
local _0x2698 = _0x6FB2.gridTarget()
for _0x795E in pairs(_0x2698) do
_0x2698[_0x795E] = nil
_0xE878(_0x795E)
end
_0xBD39()
end)do (function()
local _0x1616 = Instance.new("TextButton")
_0x1616.Size = UDim2.fromOffset(62, 22)
_0x1616.Position = UDim2.new(1, -98, 0, 7)
_0x1616.Font = Enum.Font.GothamBold
_0x1616.TextSize = 11
_0x1616.TextColor3 = Color3.new(1, 1, 1)
_0x1616.Parent = _0x5174
Instance.new("UICorner", _0x1616).CornerRadius = UDim.new(0, 6)
_0xE762.Size = UDim2.new(1, -106, 0, 28)
local function _0x1271()
local _0xFB8A = _0x6FB2.GridMode =="pabrik"local _0x2AD4 = _0x6FB2.GridMode =="lahan"_0x1616.Text = _0x2AD4 and _0xEAC0.T("Dirt Farm") or (_0xFB8A and _0xEAC0.T("Pabrik") or"Farm")
_0x1616.BackgroundColor3 = _0x2AD4 and Color3.fromRGB(60, 140, 200)
or (_0xFB8A and Color3.fromRGB(200, 120, 40) or Color3.fromRGB(60, 60, 75))
_0xE762.Text = _0xEAC0.T(_0x2AD4 and"Tile Break Dirt Farm"or (_0xFB8A and"Tile Break Pabrik"or"Grid Tile"))
for _0x795E in pairs(_0xD686) do _0xE878(_0x795E) end
if _0x2AD4 then
_0xAD3A.Text = _0xEAC0.T(_0x3F90.Running and"STOP DIRT FARM"or"START DIRT FARM")
_0xAD3A.BackgroundColor3 = _0x3F90.Running and Color3.fromRGB(200, 60, 60) or _0xD216
elseif _0xFB8A then
_0xAD3A.Text = _0xEAC0.T(_0xECF0.Running and"STOP PABRIK"or"START PABRIK")
_0xAD3A.BackgroundColor3 = _0xECF0.Running and Color3.fromRGB(200, 60, 60) or _0xD216
else
local _0xC634 = _0x5D82.Running and not _0x5D82.Override
_0xAD3A.Text = _0xC634 and"STOP"or"START"_0xAD3A.BackgroundColor3 = _0xC634 and Color3.fromRGB(200, 60, 60) or _0xD216
end
end
_0x6FB2.setGridMode = function(_0xBF65)
_0x6FB2.GridMode = _0xBF65
_0x1271()
end
_0x1616.MouseButton1Click:Connect(function()local _0x67AE = { farm ="pabrik", pabrik ="lahan", lahan ="farm"}
_0x6FB2.setGridMode(_0x67AE[_0x6FB2.GridMode] or"farm")
end)
_0x1271()
end)() enddo (function()local _0x8AA2, _0x0FD1, _0x18C9
_0xE762.Active = true
_0xE762.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1
or input.UserInputType == Enum.UserInputType.Touch then
_0x8AA2 = true
_0x0FD1 = input.Position
_0x18C9 = _0x5174.Position
input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then _0x8AA2 = false end
end)
end
end)
table.insert(_0x3886, _0xE3CF.InputChanged:Connect(function(input)
if _0x8AA2 and (input.UserInputType == Enum.UserInputType.MouseMovement
or input.UserInputType == Enum.UserInputType.Touch) then
local _0x2DDF = input.Position - _0x0FD1
_0x5174.Position = UDim2.new(_0x18C9.X.Scale, _0x18C9.X.Offset + _0x2DDF.X, _0x18C9.Y.Scale, _0x18C9.Y.Offset + _0x2DDF.Y)
end
end))
end)() end
task.spawn(function()
while _0xCA76() do
if _0xD501.Enabled then
local _0x50CF, _0x789A = _0x22CB()
local _0x615D = _0x50CF and ("ME (".. _0x50CF ..",".. _0x789A ..")") or _0xEAC0.T("Grid Tile | tidak di world")
if _0xE762.Text ~= _0x615D then _0xE762.Text = _0x615D end
end
task.wait(0.5)
end
end)local _0xCB68 = _0xEB0A("PianFlyPad")
_0x6FB2.FlyPad = _0xCB68
local function _0xF234(_0xF5A6, yOffset, onHold)
local _0x783C = Instance.new("TextButton")
_0x783C.Size = UDim2.fromOffset(64, 64)
_0x783C.AnchorPoint = Vector2.new(1, 0.5)
_0x783C.Position = UDim2.new(1, -24, 0.5, yOffset)
_0x783C.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
_0x783C.BackgroundTransparency = 0.2
_0x783C.Text = _0xF5A6
_0x783C.Font = Enum.Font.GothamBold
_0x783C.TextSize = 28
_0x783C.TextColor3 = Color3.new(1, 1, 1)
_0x783C.AutoButtonColor = true
_0x783C.Parent = _0xCB68
Instance.new("UICorner", _0x783C).CornerRadius = UDim.new(1, 0)
local _0xE35E = Instance.new("UIStroke", _0x783C)
_0xE35E.Color = Color3.fromRGB(90, 90, 120)
_0xE35E.Thickness = 2local _0x9783 = nil
_0x783C.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.Touch
or input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x9783 = input
onHold(true)
end
end)
table.insert(_0x3886, _0xE3CF.InputEnded:Connect(function(input)
if _0x9783 and (input == _0x9783
or (input.UserInputType == Enum.UserInputType.MouseButton1
and _0x9783.UserInputType == Enum.UserInputType.MouseButton1)) then
_0x9783 = nil
onHold(false)
end
end))
return _0x783C
end
_0xF234("▲", -40, function(_0x97A1) _0xFA1E.UpHeld = _0x97A1 end)
_0xF234("▼", 40, function(_0x97A1) _0xFA1E.DownHeld = _0x97A1 end)_0x7528.Report("Membuat menu Script ziey")
local _0xA661 = _0xEAC0.wrap(_0xAA36:CreateWindow({
_0xE762 ="ziey HUB",
Icon ="sprout",
Author ="v1.9.0 | Growblox ziey",
Folder ="ZieyHUB",
Size = UDim2.fromOffset(640, 380),
Theme ="Dark",
Transparent = true,
SideBarWidth = 150,
ToggleKey = Enum.KeyCode.Insert,}))
assert(_0xA661,"WindUI tidak mengembalikan jendela menu")
_0x7528.MenuCreated = true
_0x7528.StartupWindow = _0xA661
pcall(function() if type(_0xA661.Open) =="function"then _0xA661:Open() end end)
_0x7528.Report("Menu dibuat; menyiapkan tab")pcall(function()
_0xA661:EditOpenButton({
_0xE762 ="ziey HUB",
Icon ="sprout",
Draggable = true,
OnlyMobile = false,
})
end)local function _0xEE48(_0x74A9)
local _0xF64E, _0x8599 = pcall(_0x74A9)
if not _0xF64E then warn("[ziey HUB] UI error: ".. tostring(_0x8599)) end
endlocal _0x831A = {}
for _0xF439, _0x7F8F in ipairs({
{ _0x795E ="farm", title ="Farming", icon ="sprout", opened = true },
{ _0x795E ="fitur", title ="Fitur", icon ="sparkles"},
{ _0x795E ="aman", title ="Keamanan", icon ="shield"},
{ _0x795E ="setel", title ="Setelan", icon ="settings"},
}) do
local _0xF64E, _0x804A = pcall(function()
return _0xA661:Section({ _0xE762 = _0x7F8F.title, Icon = _0x7F8F.icon, Opened = _0x7F8F.opened == true })
end)
if _0xF64E and type(_0x804A) =="table"and type(_0x804A.Tab) =="function"then _0x831A[_0x7F8F.key] = _0x804A end
end
local function _0x4AF3(title, icon, _0x418F)
local _0xDBCE = (_0x418F and _0x831A[_0x418F]) or _0xA661
local _0xF64E, _0xDF65 = pcall(function() return _0xDBCE:Tab({ _0xE762 = title, Icon = icon }) end)
if _0xF64E and _0xDF65 then return _0xDF65 end
return _0xA661:Tab({ _0xE762 = title })
endlocal function _0xC06B(_0xDF65, title, opened)
local _0xF64E, _0x804A = pcall(function()
return _0xDF65:Section({ _0xE762 = title, _0x49B4 = true, BoxBorder = true, Opened = opened == true })
end)
if _0xF64E and type(_0x804A) =="table"and type(_0x804A.Toggle) =="function"then return _0x804A end
pcall(function() _0xDF65:Section({ _0xE762 = title }) end)
return _0xDF65
end
local _0x49B4 = {}local function _0xDC61(_0xDF65, _0x756B)
local _0xF64E = pcall(function()
_0xDF65:Slider({
_0xE762 = _0x756B.Title,
Desc = _0x756B.Desc,
Step = _0x756B.Step or 1,
Value = { Min = _0x756B.Min, Max = _0x756B.Max, Default = _0x756B.Default },
Callback = function(_0x97A1)
_0x97A1 = tonumber(_0x97A1)
if _0x97A1 then _0x756B.Callback(_0x97A1) end
end,
})
end)
if _0xF64E then return end
_0xEE48(function()
_0xDF65:Input({
_0xE762 = _0x756B.Title,
Desc = (_0x756B.Desc and (_0x756B.Desc .." ") or"") .."(".. _0x756B.Min .."-".. _0x756B.Max ..")",
Value = tostring(_0x756B.Default),
Placeholder = tostring(_0x756B.Default),
Callback = function(_0xF5A6)
local _0x97A1 = tonumber(_0xF5A6)
if _0x97A1 then _0x756B.Callback(math.clamp(_0x97A1, _0x756B.Min, _0x756B.Max)) end
end,
})
end)
endlocal _0x5207 = _0x4AF3("Farm","pickaxe","farm")
_0xEE48(function()
_0x6FB2.Status = _0x5207:Paragraph({ _0xE762 ="Status", Desc ="-"})
end)
_0x49B4.FarmCtl = _0xC06B(_0x5207,"Kontrol", true)
_0x49B4.FarmBlock = _0xC06B(_0x5207,"Block", true)
_0x49B4.FarmSpeed = _0xC06B(_0x5207,"Mode & Kecepatan", false)
_0xEE48(function()
_0x6FB2.FarmToggle = _0x49B4.FarmCtl:Toggle({
_0xE762 ="Auto Farm",
Desc ="Bisa juga lewat tombol START di Grid",
Value = false,
Callback = function(_0x4A01)
if _0x4A01 then _0x9F71() elseif _0x5D82.Running then _0xF604() end
end,
})
end)
_0xEE48(function()
_0x49B4.FarmCtl:Toggle({
_0xE762 ="Auto Collect",
Desc ="Ambil drop di semua tile grid (caranya ikut Mode collect)",
Value = _0x5D82.AutoCollect,
Callback = function(_0x4A01) _0x5D82.AutoCollect = _0x4A01 end,
})
end)
_0xEE48(function()
_0x49B4.FarmCtl:Dropdown({
_0xE762 ="Mode collect",
Desc ="Berlaku untuk semua fitur. Sentuhan = seperti main manual. Remote = ambil dari jauh (cara lama, cepat)",
Values = {"Sentuhan","Remote"},
Value = _0x5D82.CollectMode,
Callback = function(_0x97A1)
if type(_0x97A1) =="table"then _0x97A1 = _0x97A1[1] end
if _0x97A1 =="Sentuhan"or _0x97A1 =="Remote"then _0x5D82.CollectMode = _0x97A1 end
end,
})
end)
_0xEE48(function()
_0x49B4.FarmCtl:Toggle({
_0xE762 ="Collect di sekitar karakter",
Desc ="Mode Remote: ambil dalam radius meski Auto Farm mati atau Grid kosong",
Value = _0x5D82.CollectAround,
Callback = function(_0x4A01) _0x5D82.CollectAround = _0x4A01 end,
})
end)
_0xDC61(_0x49B4.FarmCtl, {
_0xE762 ="Radius collect (mode Remote)",
Desc ="Jarak ambil drop di sekitar karakter (tile)",
Min = 1, Max = 5, Step = 1, Default = _0x5D82.CollectRadius,
Callback = function(_0x97A1) _0x5D82.CollectRadius = math.floor(_0x97A1) end,
})
_0xEE48(function()
_0x49B4.FarmCtl:Button({
_0xE762 ="Buka Grid Tile",
Desc ="Kotak 5x5, tengah = karakter",
Callback = function() _0xD501.Enabled = true end,
})
end)local _0x903A = _0x4AF3("Clear World","eraser","farm")
_0xEE48(function()
_0x6FB2.ClearStatus = _0x903A:Paragraph({ _0xE762 ="Status Clear", Desc ="-"})
end)
_0x49B4.ClearCtl = _0xC06B(_0x903A,"Kontrol", true)
_0x49B4.ClearSet = _0xC06B(_0x903A,"Pengaturan", false)
_0xEE48(function()
_0x6FB2.ClearToggle = _0x49B4.ClearCtl:Toggle({
_0xE762 ="Auto Clear World",
Desc ="Bersihkan dari baris atas ke bawah",
Value = false,
Callback = function(_0x4A01)
if _0x4A01 then _0x927E.startClear() elseif _0xD222.Running then _0xD467() end
end,
})
end)
_0xEE48(function()
_0x49B4.ClearSet:Dropdown({
_0xE762 ="Arah sapu",
Desc ="Zig-zag lebih cepat (tidak balik ke kiri)",
Values = {"Kiri → Kanan","Zig-zag"},
Value = _0xD222.Sweep,
Callback = function(opt) _0xD222.Sweep = opt end,
})
end)
_0xEE48(function()
_0x49B4.ClearSet:Toggle({
_0xE762 ="Pakai block pijakan",
Desc ="Taruh block untuk lewat jurang / naik ke block melayang",
Value = _0xD222.UseBlock,
Callback = function(_0x4A01)
_0xD222.UseBlock = _0x4A01
_0x927E.resetReach()
end,
})
end)
_0xEE48(function()
_0x6FB2.ClearBlockDropdown = _0x49B4.ClearSet:Dropdown({
_0xE762 ="Block pijakan",
Desc ="Block yang dipakai untuk pijakan",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = tonumber(string.match(opt or"","%[(%d+)%]$"))
if _0x2010 then
_0xD222.ScaffoldId = _0x2010
_0x927E.resetReach()
end
end,
})
end)
_0xEE48(function()
_0x49B4.ClearSet:Toggle({
_0xE762 ="Auto collect tiap habis pecah",
Desc ="Drop di sekitar disusuri sampai tersentuh badan (tanpa remote)",
Value = _0xD222.Collect,
Callback = function(_0x4A01) _0xD222.Collect = _0x4A01 end,
})
end)
_0xEE48(function()
_0x49B4.ClearCtl:Button({
_0xE762 ="Reset tile yang dilewati",
Desc ="Coba lagi tile yang tadi gagal",
Callback = function()
table.clear(_0xD222.Skip)
table.clear(_0x927E.BadEdge)
table.clear(_0x927E.ClearFail)
_0x927E.updateClearStatus()
end,
})
end)local _0x1056 = _0x4AF3("Farmer","leaf","farm")
_0xEE48(function()
_0x6FB2.FarmerStatus = _0x1056:Paragraph({ _0xE762 ="Status Farmer", Desc ="-"})
end)
_0x49B4.FarmerCtl = _0xC06B(_0x1056,"Kontrol", true)
_0x49B4.FarmerSeed = _0xC06B(_0x1056,"Seed", true)
_0x49B4.FarmerSpeed = _0xC06B(_0x1056,"Kecepatan", false)
_0x49B4.FarmerBlock = _0xC06B(_0x1056,"Block pijakan", false)
_0xEE48(function()
_0x6FB2.FarmerToggle = _0x49B4.FarmerCtl:Toggle({
_0xE762 ="Jalankan Farmer",
Desc ="Fokus panen pohon ready, tanpa auto drop. Auto Plant bisa diaktifkan terpisah",
Value = false,
Callback = function(_0x4A01)
if _0x4A01 then _0x927E.startFarmer() elseif _0x9715.Running then _0x34F2() end
end,
})
end)
_0xEE48(function()
_0x6FB2.SeedDropdown = _0x49B4.FarmerSeed:Dropdown({
_0xE762 ="Seed untuk ditanam",
Desc ="Hanya seed yang ada di inventori",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = tonumber(string.match(opt or"","%[(%d+)%]$"))
if _0x2010 then
_0x9715.SeedId = _0x2010
table.clear(_0x9715.Skip)
_0x927E.updateFarmerStatus()
end
end,
})
end)
_0xEE48(function()
_0x49B4.FarmerSeed:Button({
_0xE762 ="Refresh daftar seed",
Callback = function() _0x6FB2.later("invForce", function() _0x6FB2.checkInventory(true) end) end,
})
end)
_0xEE48(function()
_0x6FB2.FarmerHarvestToggle = _0x49B4.FarmerCtl:Toggle({
_0xE762 ="Auto Harvest",
Desc ="Panen pohon ready atas, bawah, kiri dan kanan dalam jangkauan pukul; Auto Plant mati",
Value = _0x9715.Harvest,
Callback = _0x9715.setHarvest,
})
end)
_0xEE48(function()
_0x6FB2.FarmerPlantToggle = _0x49B4.FarmerCtl:Toggle({
_0xE762 ="Auto Plant",
Desc ="Tanam sambil menyusuri baris, lewati pohon yang sudah ada; ambil seed pilihan saat habis",
Value = _0x9715.Plant,
Callback = _0x9715.setPlant,
})
end)
_0xEE48(function()
_0x49B4.FarmerCtl:Toggle({
_0xE762 ="Auto Collect",
Desc ="Ambil hasil panen di sekitar karakter",
Value = _0x9715.Collect,
Callback = function(_0x4A01) _0x9715.Collect = _0x4A01 end,
})
end)
_0xDC61(_0x49B4.FarmerSpeed, {
_0xE762 ="Speed Harvest (ms)",
Desc ="Farmer: jeda setelah satu putaran panen area",
Min = 140, Max = 2000, Step = 10, Default = _0x9715.HarvestMs,
Callback = function(_0x97A1) _0x9715.HarvestMs = math.floor(_0x97A1) end,
})
_0xDC61(_0x49B4.FarmerSpeed, {
_0xE762 ="Speed Plant (ms)",
Desc ="Farmer: jeda setelah satu putaran tanam area",
Min = 140, Max = 2000, Step = 10, Default = _0x9715.PlantMs,
Callback = function(_0x97A1) _0x9715.PlantMs = math.floor(_0x97A1) end,
})
_0xEE48(function()
_0x49B4.FarmerBlock:Toggle({
_0xE762 ="Pakai block pijakan",
Desc ="Taruh block kalau tidak ada jalan (block tetap tertinggal)",
Value = _0x9715.UseBlock,
Callback = function(_0x4A01)
_0x9715.UseBlock = _0x4A01
_0x927E.resetReach()
end,
})
end)
_0xEE48(function()
_0x6FB2.FarmerBlockDropdown = _0x49B4.FarmerBlock:Dropdown({
_0xE762 ="Block pijakan",
Desc ="Block yang dipakai untuk pijakan",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = tonumber(string.match(opt or"","%[(%d+)%]$"))
if _0x2010 then
_0x9715.ScaffoldId = _0x2010
_0x927E.resetReach()
end
end,
})
end)local _0xB3BC = _0x49B4.FarmSpeed_0xEE48(function()
_0xB3BC:Dropdown({
_0xE762 ="Mode",
Desc ="Place semua tile dulu, lalu break",
Values = {"Place + Break","Break saja","Place saja"},
Value = _0x5D82.Mode,
Callback = function(opt) _0x5D82.Mode = opt end,
})
end)
_0xDC61(_0xB3BC, {
_0xE762 ="Speed Place (ms)",
Desc ="Jeda setelah tiap place",
Min = 140, Max = 1000, Step = 10, Default = _0x5D82.PlaceMs,
Callback = function(_0x97A1) _0x5D82.PlaceMs = math.floor(_0x97A1) end,
})
_0xDC61(_0xB3BC, {
_0xE762 ="Speed Break (ms)",
Desc ="Jeda tiap pukulan (normal 220). Dipakai juga Clear",
Min = 200, Max = 1000, Step = 10, Default = _0x5D82.BreakMs,
Callback = function(_0x97A1) _0x5D82.BreakMs = math.floor(_0x97A1) end,
})
_0xDC61(_0xB3BC, {
_0xE762 ="Multi target break",
Desc ="Auto Farm: tile dipukul bergantian (seperti 2 jari). Pakai Rayman's Fist = 2-3 tile segaris sekali pukul",
Min = 1, Max = 5, Step = 1, Default = _0x5D82.MultiTarget,
Callback = function(_0x97A1) _0x5D82.MultiTarget = math.clamp(math.floor(_0x97A1), 1, 5) end,
})
_0xDC61(_0xB3BC, {
_0xE762 ="Jeda setelah hancur (ms)",
Desc ="Tunggu sebelum lanjut ke tile berikutnya",
Min = 0, Max = 1500, Step = 50, Default = _0x5D82.AfterBreakMs,
Callback = function(_0x97A1) _0x5D82.AfterBreakMs = math.floor(_0x97A1) end,
})local _0x883F = _0x4AF3("Pengaturan","sliders-horizontal","setel")
_0x49B4.SetChar = _0xC06B(_0x883F,"Karakter", true)
_0x49B4.SetOpt = _0xC06B(_0x883F,"Opsi", true)
local _0x9A68 = _0x49B4.SetOpt
_0xEE48(function()
_0x9A68:Toggle({
_0xE762 ="Mode Lite",
Desc ="Matikan particle & suara (HP low-end)",
Value = _0x5D82.LiteMode,
Callback = function(_0x4A01) _0xE522(_0x4A01) end,
})
end)
_0xEE48(function()
_0x9A68:Toggle({
_0xE762 ="Mute suara pukulan",
Value = _0x5D82.MutePunch,
Callback = function(_0x4A01) _0x5D82.MutePunch = _0x4A01 end,
})
end)
_0xEE48(function()
_0x9A68:Toggle({
_0xE762 ="Animasi aksi",
Desc ="Tangan bergerak saat break / place / tanam / panen + efek place. Matikan untuk hemat FPS",
Value = _0x5D82.Visual,
Callback = function(_0x4A01)
_0x5D82.Visual = _0x4A01
if _0x4A01 and not _0x7FB6.fn and _0x1DCC.World then
_0x8021("Animasi","Fungsi animasi game tidak ketemu (tekan 'Hubungkan ke game')", 4)
end
end,
})
end)
_0xEE48(function()
_0x9A68:Toggle({
_0xE762 ="Anti AFK",
Value = _0x5D82.AntiAfk,
Callback = function(_0x4A01) _0x5D82.AntiAfk = _0x4A01 end,
})
end)
_0xDC61(_0x9A68, {
_0xE762 ="Pukulan per block (cadangan)",
Desc ="Dipakai kalau 'Pukul: TIDAK'. 0 = otomatis",
Min = 0, Max = 20, Step = 1, Default = _0x5D82.HitsOverride,
Callback = function(_0x97A1) _0x5D82.HitsOverride = math.floor(_0x97A1) end,
})local _0x203B = _0x49B4.FarmBlock_0xEE48(function()
_0x6FB2.InvDropdown = _0x203B:Dropdown({
_0xE762 ="Pilih Block",
Desc ="Hanya item yang bisa di-place",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = tonumber(string.match(opt or"","%[(%d+)%]$"))
if _0x2010 then
_0x5D82.SelectedId = _0x2010
_0xBD39()
end
end,
})
end)
_0xEE48(function()
_0x203B:Button({
_0xE762 ="Refresh daftar",
Callback = function() _0x6FB2.later("invForce", function() _0x6FB2.checkInventory(true) end) end,
})
end)local _0x4679 = _0x49B4.SetChar
_0xDC61(_0x4679, {
_0xE762 ="Walkspeed (%)",
Desc ="100 = normal",
Min = 50, Max = 500, Step = 10, Default = _0xFA1E.Speed,
Callback = function(_0x97A1) _0x3A57(_0x97A1) end,
})
_0xEE48(function()
_0x4679:Toggle({
_0xE762 ="Infinite Jump",
Desc ="Lompat di udara (bisa kena rollback)",
Value = false,
Callback = function(_0x4A01) _0xAC70(_0x4A01) end,
})
end)
_0xEE48(function()
_0x6FB2.GhostToggle = _0x4679:Toggle({
_0xE762 ="Fly + Tembus Block",
Desc ="Tembus block, pakai tombol ▲/▼ (bisa kena rollback)",
Value = false,
Callback = function(_0x4A01) _0x2623(_0x4A01) end,
})
end)local _0xFC74 = _0x4AF3("Auto Chat","message-circle","fitur")
_0xEE48(function()
_0x6FB2.SpamStatus = _0xFC74:Paragraph({ _0xE762 ="Status Chat", Desc ="-"})
end)
_0x49B4.ChatCtl = _0xC06B(_0xFC74,"Kontrol", true)
_0x49B4.ChatMsg = _0xC06B(_0xFC74,"Pesan", true)
_0xEE48(function()
_0x49B4.ChatMsg:Input({
_0xE762 ="Daftar pesan",
Desc ="Pisahkan dengan |   contoh: halo|jual dirt",
Value = table.concat(_0x4BB9.Texts,"|"),
Placeholder ="pesan 1|pesan 2|pesan 3",
Callback = function(_0xF5A6)
_0x4BB9.Texts = _0x61F1(_0xF5A6)
_0x4BB9.Index = 1
_0x6E64()
end,
})
end)
_0xDC61(_0x49B4.ChatMsg, {
_0xE762 ="Interval (detik)",
Desc ="Jeda antar pesan (min 3 detik)",
Min = 3, Max = 120, Step = 1, Default = _0x4BB9.IntervalSec,
Callback = function(_0x97A1) _0x4BB9.IntervalSec = math.max(3, math.floor(_0x97A1)) end,
})
_0xEE48(function()
_0x6FB2.SpamToggle = _0x49B4.ChatCtl:Toggle({
_0xE762 ="Auto Chat",
Desc ="Kirim pesan bergantian sesuai urutan",
Value = false,
Callback = function(_0x4A01)
_0x4BB9.On = _0x4A01
if _0x4A01 then
if #_0x4BB9.Texts == 0 then _0x8021("Auto Chat","Isi daftar pesan dulu (tekan Enter setelah mengetik)", 4) end
_0x4BB9.NextAt = 0end
_0x6E64()
end,
})
end)
_0xEE48(function()
_0x49B4.ChatCtl:Button({
_0xE762 ="Kirim 1 pesan sekarang",
Desc ="Tes kirim pesan berikutnya",
Callback = function()
task.spawn(function()
_0xCCD2()
_0x6E64()
end)
end,
})
end)do (function()local function _0x617E(_0x7827) return (tostring(_0x7827 or""):gsub("`.","")) end
local function _0x2E4F(_0xFB5C)
if not (_0x274D and type(_0x8EC3) =="table") then return nil end
local _0xEB08, _0x175B = pcall(_0x8EC3.isDeveloper, _0xFB5C)
if _0xEB08 and _0x175B then return"Developer"end
local _0x2672, _0xB467 = pcall(_0x8EC3.isModerator, _0xFB5C)
if _0x2672 and _0xB467 then return"Moderator"end
return nil
end
local function _0xE3B2()
local _0x66F3 = _0x1DCC.World and rawget(_0x1DCC.World,"name")
return type(_0x66F3) =="string"and _0x66F3 or""endlocal function _0x69CF()
local _0xDB37 = {}
local _0x756B = _0x1DCC.Others
if not _0x756B or type(rawget(_0x756B,"list")) ~="function"then return _0xDB37 end
local _0xF64E, _0x026D = pcall(_0x756B.list)
if not _0xF64E or type(_0x026D) ~="table"then return _0xDB37 end
for _0xF439, _0x7BA0 in ipairs(_0x026D) do
local _0xFB5C = type(_0x7BA0) =="table"and tonumber(_0x7BA0[1] or _0x7BA0.userId)
if _0xFB5C and _0xFB5C ~= _0x8270.UserId then
_0xDB37[#_0xDB37 + 1] = { _0x2010 = _0xFB5C, _0xDF0A = _0x617E(_0x7BA0[2] or _0x7BA0.name or _0xFB5C), role = _0x2E4F(_0xFB5C) }
end
end
return _0xDB37
end
_0x5B75.playersHere = _0x69CF
local function _0x4978(_0x026D)
local _0xDB37 = {}
for _0xF439, _0xBFDC in ipairs(_0x026D) do
if _0xBFDC.role or (_0x5B75.Who =="Semua pemain"and not _0x5B75.Allow[_0xBFDC.id]) then
_0xDB37[#_0xDB37 + 1] = _0xBFDC
end
end
return _0xDB37
end
local function _0x9C57(_0xBFDC)
local _0x8604 = false
if _0xBFDC.role and type(_0x8EC3.isUndercover) =="function"then
local _0xF64E, _0x5711 = pcall(_0x8EC3.isUndercover, _0xBFDC.id)
_0x8604 = _0xF64E and _0x5711 == true
end
return _0xBFDC.name .." (".. (_0xBFDC.role or"Pemain") .. (_0x8604 and", undercover"or"") ..")"end
local function _0xFBD6(_0x026D, max)
local _0x615D = {}
for _0x7180, _0xBFDC in ipairs(_0x026D) do
if _0x7180 > (max or 4) then
_0x615D[#_0x615D + 1] ="+".. (#_0x026D - _0x7180 + 1) .." lagi"break
end
_0x615D[#_0x615D + 1] = _0x9C57(_0xBFDC)
end
return table.concat(_0x615D,", ")
end
local function _0xC1F1()
return _0x5D82.Running or _0xD222.Running or _0x9715.Running or _0xD808.Running or _0x4BB9.On
or _0xECF0.Running or _0x3F90.Running
endlocal function _0x920B()
local _0x574E, _0x6912 = _0x927E.here()
return {
farm = _0x5D82.Running and not _0x5D82.Override, _0x505C = _0xD222.Running, farmer = _0x9715.Running,
spam = _0x4BB9.On, splice = _0xD808.Running, pabrik = _0xECF0.Running, build = _0x3F90.Running,
_0x954B = _0xE3B2(), _0x574E = _0x574E, _0x6912 = _0x6912,
}
end
local function _0xD350()
_0x927E.stopWalk()
if _0xECF0.Running then _0xECF0.stop() end
if _0x3F90.Running then _0x3F90.stop() end
if _0x5D82.Running then _0xF604() end
if _0xD222.Running then
_0xD467()
_0xD222.Status ="Dijeda Penjaga"end
if _0x9715.Running then
_0x34F2()
_0x9715.Status ="Dijeda Penjaga"end
if _0xD808.Running and _0xD808.stop then _0xD808.stop() end
if _0x5F2F.Running and _0x5F2F.stop then _0x5F2F.stop() end
if _0x4BB9.On then
_0x4BB9.On = false
if _0x6FB2.SpamToggle then pcall(function() _0x6FB2.SpamToggle:Set(false) end) end
end
_0x927E.releaseInput()
endlocal function _0xB8F9()
local _0xBF65 = _0x1DCC.Menu
if _0xBF65 and type(rawget(_0xBF65,"openPicker")) =="function"and pcall(_0xBF65.openPicker) then
return true
end
local _0x9F6E = _0x1DCC.World
if _0x9F6E and type(rawget(_0x9F6E,"call")) =="function"then
return (pcall(_0x9F6E.call,"LeaveWorld"))
end
return false
endlocal function _0x2FBC(_0xDF0A, _0x962E)
if _0x962E and not _0x962E() then return false,"Perjalanan dibatalkan"end
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or _0xDF0A ==""then return false,"nama world tidak diketahui"end
local _0x45D0 = rawget(_0x9F6E,"fg")
local _0xBF65 = _0x1DCC.Menu
if _0xBF65 and type(rawget(_0xBF65,"enter")) =="function"then
local _0xF64E, _0x8599 = pcall(_0xBF65.enter, _0xDF0A)
if _0x962E and not _0xF64E then return false, tostring(_0x8599) end
elseif type(rawget(_0x9F6E,"enter")) =="function"then
local _0xF64E, _0xD6CD, _0xE842 = pcall(_0x9F6E.enter, _0xDF0A)
if _0xF64E and not _0xD6CD then return false, _0x617E(_0xE842) end
else
return false,"fungsi masuk world tidak ketemu"endlocal _0x1981 = os.clock()
while _0xCA76() and os.clock() - _0x1981 < 8 do
if _0x962E and not _0x962E() then return false,"Perjalanan dibatalkan"end
local _0x5E96 = _0x1DCC.World
if _0x962E and _0x5E96 and _0x5E96 ~= _0x9F6E and rawget(_0x5E96,"name") == _0xDF0A
and type(rawget(_0x5E96,"fg")) =="table"then return true end
if rawget(_0x9F6E,"fg") ~= _0x45D0 then return true end
task.wait(0.25)
end
return false,"world penuh / dikunci / gagal"end
local function _0x1B3E(_0x38A6)
return _0xCA76() and _0x5B75.Token == _0x38A6 and _0x5B75.Mode =="back"endlocal function _0x333A(_0x3A34, _0x38A6)
if not _0x3A34 then return end
if _0x3A34.world ~=""and _0xE3B2() ~= _0x3A34.world then
_0x8021("Penjaga","World sudah beda, aktivitas tidak dilanjutkan", 5)
return
end
if _0x3A34.spam and not _0x4BB9.On and _0x1B3E(_0x38A6) then
if _0x6FB2.SpamToggle then pcall(function() _0x6FB2.SpamToggle:Set(true) end) end
_0x4BB9.On = true
end
if _0x3A34.build then
if _0x1B3E(_0x38A6) then _0x3F90.start() end
elseif _0x3A34.pabrik then
if _0x1B3E(_0x38A6) then _0xECF0.start() end
elseif _0x3A34.farm thenlocal _0xF3CD, _0x3A74 = _0x927E.here()
if _0x3A34.tx and (_0xF3CD ~= _0x3A34.tx or _0x3A74 ~= _0x3A34.ty) then
_0x5B75.BackText = ("Jalan balik ke posisi farm (%d,%d)"):format(_0x3A34.tx, _0x3A34.ty)
local _0xF64E = _0x927E.walkTo(_0x3A34.tx, _0x3A34.ty, 45)
if not _0xF64E and _0x1B3E(_0x38A6) then _0xF64E = _0x927E.walkTo(_0x3A34.tx, _0x3A34.ty, 30) end
if not _0xF64E then
if _0x1B3E(_0x38A6) then
_0x8021("Penjaga","Gagal balik ke posisi farm. Auto Farm tidak dilanjutkan", 6)
end
return
end
end
if _0x1B3E(_0x38A6) then _0x9F71() end
elseif _0x3A34.clear then
if _0x1B3E(_0x38A6) then _0x927E.startClear() end
elseif _0x3A34.farmer then
if _0x1B3E(_0x38A6) then _0x927E.startFarmer() end
elseif _0x3A34.splice then
if _0x1B3E(_0x38A6) and _0xD808.start then _0xD808.start() end
end
end
local function _0x85B7()
local _0x3A34 = _0x5B75.Saved
_0x5B75.Token += 1
local _0x38A6 = _0x5B75.Token
_0x5B75.Mode ="back"_0x5B75.BackText = nil
task.spawn(function()
local _0xF64E, _0x8599 = pcall(_0x333A, _0x3A34, _0x38A6)
if not _0xF64E then warn("[ziey HUB] Penjaga lanjut error: ".. tostring(_0x8599)) end
if _0x5B75.Token == _0x38A6 and _0x5B75.Mode =="back"then
_0x5B75.Mode, _0x5B75.Saved, _0x5B75.BackText ="idle", nil, nil
end
end)
end
local function _0x9299()
if not _0xB8F9() then
_0x8021("Penjaga","Gagal keluar world, aktivitas hanya dijeda", 5)
_0x5B75.Mode ="pause"return
end
task.wait(0.3)
_0x5B75.LeftFg = _0x1DCC.World and rawget(_0x1DCC.World,"fg")
_0x5B75.BackAt = os.clock() + _0x5B75.BackSec
_0x5B75.Mode = _0x5B75.AutoBack and"away"or"out"_0x5B75.Status ="Keluar world"endlocal function _0x227B(_0x908B)
_0x5B75.Detected += #_0x908B
_0x8021("Penjaga","Masuk world: ".. _0xFBD6(_0x908B), 6)
_0x2479.send("penjaga","Masuk world ".. _0xE3B2() ..": ".. _0xFBD6(_0x908B))
if not _0x5B75.StopAll and not _0x5B75.Leave then return endif _0x5B75.Mode ~="back"and (_0xC1F1() or not _0x5B75.Saved) then
_0x5B75.Saved = _0x920B()
end
_0x5B75.Token += 1
_0xD350()
_0x5B75.CalmAt = nil
if _0x5B75.Leave then
_0x9299()
if _0x5B75.Mode =="away"then
_0x8021("Penjaga","Keluar world. Masuk lagi dalam ".. _0x5B75.BackSec .." detik", 5)
_0x2479.send("penjaga","Keluar world, masuk lagi dalam ".. _0x5B75.BackSec .." detik")
elseif _0x5B75.Mode =="out"then
_0x8021("Penjaga","Keluar world", 4)
end
else
_0x5B75.Mode ="pause"end
endlocal function _0xF4FA()
_0x927E.resetReach()
pcall(_0x1761)
pcall(_0x927E.findTreeRefs)
table.clear(_0x6663)
task.wait(1.5)local _0x6B6E = _0x4978(_0x69CF())
if #_0x6B6E > 0 then
for _0xF439, _0xBFDC in ipairs(_0x6B6E) do _0x5B75.Alerted[_0xBFDC.id] = true end
_0x8021("Penjaga","Masih ada ".. _0xFBD6(_0x6B6E) ..". Keluar lagi", 5)
_0x9299()
return
end
_0x8021("Penjaga","World aman, lanjut aktivitas", 4)
_0x2479.send("penjaga","World ".. _0xE3B2() .." aman, lanjut aktivitas")
_0x85B7()
endlocal _0x4630, _0x55E5 = -10,"-"local function _0x9E44()
if os.clock() - _0x4630 < 3 then return _0x55E5 end
_0x4630 = os.clock()
local _0x615D = {}
for _0xF439, plr in ipairs(_0x7F48:GetPlayers()) do
if plr ~= _0x8270 then
local _0x2DAE = _0x2E4F(plr.UserId)
if _0x2DAE then _0x615D[#_0x615D + 1] = (plr.DisplayName or plr.Name) .." (".. _0x2DAE ..")"end
end
end
_0x55E5 = (#_0x615D > 0) and table.concat(_0x615D,", ") or"tidak ada"return _0x55E5
end
function _0x5B75.tick(_0x3732)
if _0x927E.DoorTravel and _0x927E.DoorTravel.Busy then
_0x5B75.Status ="Sedang pindah lewat ID Door"return
end
if not _0x5B75.On then
_0x5B75.Status ="Mati"return
end
local _0x4DD4 = os.clock()
local _0xB364 = _0x5B75.Modeif _0xB364 =="away"or _0xB364 =="out"then
local _0x9582 = _0x1DCC.World and rawget(_0x1DCC.World,"fg")
if _0x5B75.LeftFg and _0x9582 ~= _0x5B75.LeftFg thenif _0xB364 =="away"and _0x5B75.Saved and _0xE3B2() == _0x5B75.Saved.world then
_0xF4FA()
else
_0x5B75.Mode, _0x5B75.Saved ="idle", nil
end
return
end
local _0xDF0A = _0x5B75.Saved and _0x5B75.Saved.world or""if _0xB364 =="out"or _0xDF0A ==""then
_0x5B75.Status ="Sudah keluar world (lanjut otomatis mati)"return
end
local _0xBE18 = _0x5B75.BackAt - _0x4DD4
if _0xBE18 > 0 then
_0x5B75.Status = ("Di luar world. Masuk lagi ke %s dalam %d detik"):format(_0xDF0A, math.ceil(_0xBE18))
return
end
_0x5B75.Status ="Masuk lagi ke ".. _0xDF0A .."..."_0x5B75.updateStatus({})
local _0xF64E, _0x8599 = _0x2FBC(_0xDF0A)
if not _0xF64E then
_0x5B75.BackAt = os.clock() + math.max(15, _0x5B75.BackSec)
_0x8021("Penjaga","Gagal masuk ".. _0xDF0A ..": ".. tostring(_0x8599) ..". Dicoba lagi nanti", 5)
return
end
_0xF4FA()
return
endlocal _0x57D7 = {}
for _0xF439, _0xBFDC in ipairs(_0x3732) do _0x57D7[_0xBFDC.id] = true end
for _0x2010 in pairs(_0x5B75.Alerted) do
if not _0x57D7[_0x2010] then _0x5B75.Alerted[_0x2010] = nil endend
local _0x0898 = _0x4978(_0x3732)
local _0x908B = {}
for _0xF439, _0xBFDC in ipairs(_0x0898) do
if not _0x5B75.Alerted[_0xBFDC.id] then
_0x5B75.Alerted[_0xBFDC.id] = true
_0x908B[#_0x908B + 1] = _0xBFDC
end
end
if #_0x908B > 0 then
_0x227B(_0x908B)
if _0x5B75.Mode =="away"or _0x5B75.Mode =="out"then return end
end
if #_0x0898 > 0 then
_0x5B75.CalmAt = nil
_0x5B75.Status = (_0x5B75.Mode =="pause"and"Dijeda. Ada: "or"Waspada. Ada: ") .. _0xFBD6(_0x0898)
return
end
if _0x5B75.Mode =="pause"then
_0x5B75.CalmAt = _0x5B75.CalmAt or _0x4DD4
local _0x3F95 = _0x5B75.CalmSec - (_0x4DD4 - _0x5B75.CalmAt)
if _0x3F95 > 0 then
_0x5B75.Status = ("Mereka sudah pergi. Lanjut dalam %d detik"):format(math.ceil(_0x3F95))
return
end
_0x5B75.CalmAt = nil
if _0x5B75.AutoBack and _0x5B75.Saved then
_0x8021("Penjaga","Sudah aman, lanjut aktivitas", 4)
_0x85B7()
else
_0x5B75.Mode, _0x5B75.Saved ="idle", nil
end
return
end
if _0x5B75.Mode =="back"then
_0x5B75.Status = _0x5B75.BackText or"Lanjut aktivitas..."return
end
_0x5B75.Status ="Aman"end
function _0x5B75.updateStatus(_0x3732)
local _0x3E00 = table.concat({"Status: ".. _0x5B75.Status .. (_0x1DCC.Others and""or" (data pemain belum ketemu: tekan 'Hubungkan ke game')"),"Pemain di world: ".. ((#_0x3732 == 0) and"tidak ada"or _0xFBD6(_0x3732, 6)),"Staff online di server: ".. _0x9E44(),"Terdeteksi: ".. _0x5B75.Detected .." kali",
},"\n")
if _0x3E00 ~= _0x5B75.LastTxt then
_0x5B75.LastTxt = _0x3E00
if _0x6FB2.GuardStatus then pcall(function() _0x6FB2.GuardStatus:SetDesc(_0x3E00) end) end
end
endfunction _0x5B75.set(_0x4A01)
_0x5B75.On = _0x4A01
_0x5B75.Token += 1
_0x927E.stopWalk()
_0x5B75.Mode, _0x5B75.Saved, _0x5B75.CalmAt, _0x5B75.BackText ="idle", nil, nil, nil
table.clear(_0x5B75.Alerted)
table.clear(_0x5B75.Allow)
if _0x4A01 thenfor _0xF439, _0xBFDC in ipairs(_0x69CF()) do
if not _0xBFDC.role then _0x5B75.Allow[_0xBFDC.id] = true end
end
end
end_0x5B75.snapshot = _0x920B
_0x5B75.stopAll = _0xD350
_0x5B75.enterWorld = _0x2FBC
_0x5B75.leaveWorld = _0xB8F9
_0x5B75.worldName = _0xE3B2
_0x5B75.anyRunning = _0xC1F1
function _0x5B75.afterEnter()
_0x927E.resetReach()
pcall(_0x1761)
pcall(_0x927E.findTreeRefs)
table.clear(_0x6663)
end
function _0x5B75.resumeSaved(_0x3A34)
_0x5B75.Saved = _0x3A34
_0x85B7()
end
function _0x5B75.allowNow()
local _0x66F3 = 0
for _0xF439, _0xBFDC in ipairs(_0x69CF()) do
if not _0xBFDC.role then
_0x5B75.Allow[_0xBFDC.id] = true
_0x66F3 += 1
end
end
return _0x66F3
end
task.spawn(function()
while _0xCA76() do
local _0x3732 = (_0x5B75.Mode ~="away"and _0x5B75.Mode ~="out") and _0x69CF() or {}
local _0xF64E, _0x8599 = pcall(_0x5B75.tick, _0x3732)
if not _0xF64E then warn("[ziey HUB] Penjaga error: ".. tostring(_0x8599)) end
_0x5B75.updateStatus(_0x3732)
task.wait(0.5)
end
end)
end)() end
_0x5D2C.add("Penjaga", _0x5B75, {"On","Who","StopAll","Leave","AutoBack","BackSec","CalmSec"}, { On = true })do (function()local _0xE443 = _0x4AF3("Penjaga","eye","aman")
_0xEE48(function()
_0x6FB2.GuardStatus = _0xE443:Paragraph({ _0xE762 ="Status Penjaga", Desc ="Mati"})
end)
local _0xDDB3 = _0xC06B(_0xE443,"Kontrol", true)
local _0x6FF6 = _0xC06B(_0xE443,"Aksi saat terdeteksi", true)
local _0x9DA8 = _0xC06B(_0xE443,"Waktu", false)
local _0x751A = _0xC06B(_0xE443,"Lainnya", false)
_0xEE48(function()
_0x6FB2.GuardToggle = _0xDDB3:Toggle({
_0xE762 ="Aktifkan Penjaga",
Desc ="Pantau Mod / Dev / pemain yang masuk world",
Value = false,
Callback = function(_0x4A01) _0x5B75.set(_0x4A01) end,
})
end)
_0xEE48(function()
_0xDDB3:Dropdown({
_0xE762 ="Yang dideteksi",
Desc ="Semua pemain: yang sudah ada saat dinyalakan diabaikan",
Values = {"Staff (Mod/Dev)","Semua pemain"},
Value = _0x5B75.Who,
Callback = function(opt) _0x5B75.Who = opt end,
})
end)
_0xEE48(function()
_0x6FF6:Toggle({
_0xE762 ="Diam semua aktivitas",
Desc ="Stop Auto Farm, Clear, Farmer & Auto Chat",
Value = _0x5B75.StopAll,
Callback = function(_0x4A01) _0x5B75.StopAll = _0x4A01 end,
})
end)
_0xEE48(function()
_0x6FF6:Toggle({
_0xE762 ="Keluar world",
Desc ="Langsung keluar world saat terdeteksi",
Value = _0x5B75.Leave,
Callback = function(_0x4A01) _0x5B75.Leave = _0x4A01 end,
})
end)
_0xEE48(function()
_0x6FF6:Toggle({
_0xE762 ="Lanjut otomatis setelah aman",
Desc ="Keluar world: masuk lagi, cek, lalu lanjut aktivitas sebelumnya",
Value = _0x5B75.AutoBack,
Callback = function(_0x4A01) _0x5B75.AutoBack = _0x4A01 end,
})
end)
_0xDC61(_0x9DA8, {
_0xE762 ="Masuk world lagi setelah (detik)",
Desc ="Untuk mode keluar world",
Min = 20, Max = 600, Step = 5, Default = _0x5B75.BackSec,
Callback = function(_0x97A1) _0x5B75.BackSec = math.floor(_0x97A1) end,
})
_0xDC61(_0x9DA8, {
_0xE762 ="Tunggu aman (detik)",
Desc ="Untuk mode diam: jeda setelah mereka pergi",
Min = 2, Max = 60, Step = 1, Default = _0x5B75.CalmSec,
Callback = function(_0x97A1) _0x5B75.CalmSec = math.floor(_0x97A1) end,
})
_0xEE48(function()
_0x751A:Button({
_0xE762 ="Abaikan pemain yang ada sekarang",
Desc ="Untuk teman / akun sendiri (staff tetap dideteksi)",
Callback = function()
_0x8021("Penjaga", _0x5B75.allowNow() .." pemain diabaikan", 3)
end,
})
end)
_0xEE48(function()
_0x751A:Button({
_0xE762 ="Batalkan tunggu / lanjut",
Desc ="Hentikan proses keluar-masuk & lanjut otomatis",
Callback = function()
_0x5B75.set(_0x5B75.On)
_0x8021("Penjaga","Dibatalkan", 3)
end,
})
end)
end)() endlocal _0xE679 = {
Quest = false,
Redeem = false,
QuestEvery = 30,CodeEvery = 300,NextQuest = 0,
NextCode = 0,
Claimed = 0,
Redeemed = 0,
Tried = {},QuestFail = {},QuestText ="-",
CodeText ="-",
ResetAt = nil,
}
do (function()local function _0x617E(_0x7827) return (tostring(_0x7827 or""):gsub("`.","")) end
local function _0x087D(...)
if _0x7025 and type(_0x5E7F) =="table"and type(_0x5E7F.call) =="function"then
return pcall(_0x5E7F.call, ...)
end
return false,"Net.call tidak ada"end
local function _0x370D(_0x804A)
_0x804A = math.max(0, math.floor(_0x804A or 0))
if _0x804A >= 3600 then return ("%dj %dm"):format(_0x804A // 3600, _0x804A % 3600 // 60) end
return ("%dm %dd"):format(_0x804A // 60, _0x804A % 60)
end
local function _0xAF97(_0x66F3)
local _0x7F8F = _0x1DCC.Gems
if type(_0x66F3) =="number"and _0x7F8F and type(rawget(_0x7F8F,"setGems")) =="function"then
pcall(_0x7F8F.setGems, _0x66F3)
end
end
function _0xE679.checkQuests()
if _0xE679.BusyQ then return end
_0xE679.BusyQ = true
local _0xF64E, _0x0416, _0xCB22 = _0x087D("Quests","list")
if not _0xF64E then
_0xE679.QuestText ="Gagal ambil quest: ".. _0x617E(_0x0416)
elseif not _0x0416 or type(_0xCB22) ~="table"or type(_0xCB22.quests) ~="table"then
_0xE679.QuestText ="Quest belum bisa diambil".. (type(_0xCB22) =="string"and (": ".. _0x617E(_0xCB22)) or"")
else
local _0x069C, _0xC49C, _0x3F95 = 0, 0, 0
local _0x4DD4 = os.clock()
for _0xF439, _0x784F in ipairs(_0xCB22.quests) do
_0x069C += 1
local _0xCD6B, _0x5376 = tonumber(_0x784F.have) or 0, tonumber(_0x784F.need) or math.huge
if _0x784F.claimed then
_0xC49C += 1
elseif _0xCD6B >= _0x5376 and not ((_0xE679.QuestFail[_0x784F.id] or 0) > _0x4DD4) thenlocal _0xA7A9, _0x35F3, _0xE842, _0xF439, _0xFE4D = _0x087D("Quests","claim", _0x784F.id)
if _0xA7A9 and _0x35F3 then
_0xC49C += 1
_0xE679.Claimed += 1
local _0xE299 = _0x784F.xp and (tostring(_0x784F.reward) .." XP") or (tostring(_0x784F.reward) .." gems")
_0x8021("Quest diklaim", _0x617E(_0x784F.text or _0x784F.id) .."  +".. _0xE299, 4)
_0x2479.send("bonus","Quest diklaim: ".. _0x617E(_0x784F.text or _0x784F.id) .." +".. _0xE299)
_0xAF97(_0xFE4D)
else
_0x3F95 += 1
_0xE679.QuestFail[_0x784F.id] = _0x4DD4 + 120
if _0xA7A9 and _0xE842 then _0xE679.LastQuestMsg = _0x617E(_0xE842) end
end
task.wait(0.6)
elseif _0xCD6B >= _0x5376 then
_0x3F95 += 1
end
end
_0xE679.ResetAt = os.clock() + (tonumber(_0xCB22.resetIn) or 0)
_0xE679.QuestText = ("Selesai %d/%d | diklaim script: %d"):format(_0xC49C, _0x069C, _0xE679.Claimed)
.. ((_0x3F95 > 0) and (" | ditolak: ".. _0x3F95) or"")
end
_0xE679.BusyQ = false
endfunction _0xE679.redeem(_0xAC40)
local _0xF64E, _0xD6CD = _0x087D("ModCommand","redeemcode", _0xAC40)
if not _0xF64E then return nil,"tidak bisa ke server"end
local _0x440A = type(_0xD6CD) =="table"and type(_0xD6CD.lines) =="table"and _0xD6CD.lines or nil
if not _0x440A then return false,"balasan kosong"end
local _0x25C5 = tostring(_0x440A[1] or"")
local _0x3421 = {}
for _0xF439, _0x2586 in ipairs(_0x440A) do _0x3421[#_0x3421 + 1] = _0x617E(_0x2586) end
return string.sub(_0x25C5, 1, 2) =="`2", table.concat(_0x3421," ")
end
function _0xE679.checkCodes()
if _0xE679.BusyR then return end
_0xE679.BusyR = true
local _0xF64E, _0x026D = _0x087D("ActiveCodes")
if not _0xF64E or type(_0x026D) ~="table"then
_0xE679.CodeText ="Gagal ambil daftar code"elseif _0x026D.note ~= nil then
_0xE679.CodeText ="Redeem sedang ditutup: ".. _0x617E(_0x026D.note)
else
local _0x069C, _0xCD6B, _0x72BF = 0, 0, 0
for _0xF439, _0x5B56 in ipairs(_0x026D) do
_0x069C += 1
local _0xAC40 = _0x5B56.code and tostring(_0x5B56.code)
if _0x5B56.done then
_0xCD6B += 1
elseif _0xAC40 and not _0xE679.Tried[_0xAC40] and not (type(_0x5B56.uses) =="number"and _0x5B56.uses == 0) then
local _0x35F3, _0xE842 = _0xE679.redeem(_0xAC40)
if _0x35F3 ~= nil then _0xE679.Tried[_0xAC40] = true endif _0x35F3 then
_0xCD6B += 1
_0x72BF += 1
_0xE679.Redeemed += 1
_0x8021("Redeem berhasil", _0xAC40 ..": ".. tostring(_0xE842), 5)
_0x2479.send("bonus","Redeem berhasil ".. _0xAC40 ..": ".. tostring(_0xE842))
elseif _0x35F3 == false then
_0xE679.LastCodeMsg = _0xAC40 ..": ".. tostring(_0xE842)
end
task.wait(1)
end
end
_0xE679.CodeText = ("Code aktif: %d | sudah ditukar: %d | ditukar script: %d"):format(_0x069C, _0xCD6B, _0xE679.Redeemed)
end
_0xE679.BusyR = false
end
function _0xE679.updateStatus()
local _0x4DD4 = os.clock()
local _0x784F = _0xE679.QuestText
if _0xE679.ResetAt then _0x784F = _0x784F .."\nQuest baru dalam ".. _0x370D(_0xE679.ResetAt - _0x4DD4) end
if _0xE679.LastQuestMsg then _0x784F = _0x784F .."\nPesan terakhir: ".. _0xE679.LastQuestMsg end
_0x784F = _0x784F .."\n".. (_0xE679.Quest and ("Cek lagi dalam ".. math.max(0, math.ceil(_0xE679.NextQuest - _0x4DD4)) .." detik") or"Auto klaim mati")
local _0x5B56 = _0xE679.CodeText
if _0xE679.LastCodeMsg then _0x5B56 = _0x5B56 .."\nPesan terakhir: ".. _0xE679.LastCodeMsg end
_0x5B56 = _0x5B56 .."\n".. (_0xE679.Redeem and ("Cek lagi dalam ".. _0x370D(_0xE679.NextCode - _0x4DD4)) or"Auto redeem mati")
if _0x6FB2.QuestStatus then pcall(function() _0x6FB2.QuestStatus:SetDesc(_0x784F) end) end
if _0x6FB2.CodeStatus then pcall(function() _0x6FB2.CodeStatus:SetDesc(_0x5B56) end) end
end
task.spawn(function()
while _0xCA76() do
local _0x4DD4 = os.clock()
if _0xE679.Quest and _0x4DD4 >= _0xE679.NextQuest then
_0xE679.NextQuest = _0x4DD4 + _0xE679.QuestEvery
pcall(_0xE679.checkQuests)
end
if _0xE679.Redeem and _0x4DD4 >= _0xE679.NextCode then
_0xE679.NextCode = _0x4DD4 + _0xE679.CodeEvery
pcall(_0xE679.checkCodes)
end
_0xE679.updateStatus()
task.wait(1)
end
end)
end)() end
_0x5D2C.add("Bonus", _0xE679, {"Quest","Redeem"})do (function()local _0x1B17 = _0x4AF3("Bonus","gift","fitur")
local _0xBEF8 = _0xC06B(_0x1B17,"Quest Harian", true)
local _0x2888 = _0xC06B(_0x1B17,"Redeem Code", true)
_0xEE48(function()
_0x6FB2.QuestStatus = _0xBEF8:Paragraph({ _0xE762 ="Status", Desc ="-"})
end)
_0xEE48(function()
_0xBEF8:Toggle({
_0xE762 ="Auto Claim Quest",
Desc ="Klaim hadiah quest yang sudah selesai",
Value = _0xE679.Quest,
Callback = function(_0x4A01)
_0xE679.Quest = _0x4A01
if _0x4A01 then _0xE679.NextQuest = 0 end
end,
})
end)
_0xEE48(function()
_0xBEF8:Button({
_0xE762 ="Cek quest sekarang",
Callback = function() task.spawn(_0xE679.checkQuests) end,
})
end)
_0xEE48(function()
_0x6FB2.CodeStatus = _0x2888:Paragraph({ _0xE762 ="Status", Desc ="-"})
end)
_0xEE48(function()
_0x2888:Toggle({
_0xE762 ="Auto Redeem Code",
Desc ="Tukar semua code aktif yang belum dipakai",
Value = _0xE679.Redeem,
Callback = function(_0x4A01)
_0xE679.Redeem = _0x4A01
if _0x4A01 then _0xE679.NextCode = 0 end
end,
})
end)
_0xEE48(function()
_0x2888:Button({
_0xE762 ="Cek code sekarang",
Callback = function()
table.clear(_0xE679.Tried)
task.spawn(_0xE679.checkCodes)
end,
})
end)
_0xEE48(function()
_0x2888:Input({
_0xE762 ="Redeem code manual",
Desc ="Ketik code lalu tekan Enter",
Value ="",
Placeholder ="KODE",
Callback = function(_0xF5A6)
local _0xAC40 = tostring(_0xF5A6 or""):gsub("^%s+",""):gsub("%s+$","")
if _0xAC40 ==""then return end
task.spawn(function()
local _0x35F3, _0xE842 = _0xE679.redeem(_0xAC40)
if _0x35F3 then _0xE679.Redeemed += 1 end
_0x8021(_0x35F3 and"Redeem berhasil"or"Redeem gagal", _0xAC40 ..": ".. tostring(_0xE842), 5)
end)
end,
})
end)
end)() endlocal _0x009B = {
_0x927E = false,
Layer ="Semua",Filter ="",Every = 2,
Limit = 60,Last = nil,
}
do (function()local function _0x7990(_0x66F3)
local _0x5AC6 = tostring(math.floor(_0x66F3))
local _0xDB37 = _0x5AC6:reverse():gsub("(%d%d%d)","%1."):reverse()
return (_0xDB37:gsub("^%.",""))
end
local function _0xB424(_0x2010)
local _0x91CB = _0xD7DB[_0x2010]
local _0xEE7E = _0x949D(_0x2010)
if _0x91CB and _0x91CB.kind =="seed"then _0xEE7E = _0xEE7E .." (pohon)"end
return _0xEE7E
endlocal function _0x27B0(_0x598C, nameFn)
local _0x026D = {}
for _0x2010, _0x66F3 in pairs(_0x598C) do _0x026D[#_0x026D + 1] = { _0x2010 = _0x2010, _0x66F3 = _0x66F3 } end
table.sort(_0x026D, function(_0xE034, _0x783C)
if _0xE034.n ~= _0x783C.n then return _0xE034.n > _0x783C.n end
return _0xE034.id < _0x783C.id
end)
local _0xEFC3 = string.lower(_0x009B.Filter or"")
local _0x440A, _0x069C = {}, 0
for _0xF439, _0x7BA0 in ipairs(_0x026D) do
local _0xDF0A = nameFn(_0x7BA0.id)
if _0xEFC3 ==""or string.find(string.lower(_0xDF0A), _0xEFC3, 1, true) then
_0x069C += 1
if _0x069C <= _0x009B.Limit then
_0x440A[#_0x440A + 1] = _0xDF0A .."  x".. _0x7990(_0x7BA0.n)
end
end
end
if _0x069C > _0x009B.Limit then _0x440A[#_0x440A + 1] = ("... +%d item lain (pakai Cari item)"):format(_0x069C - _0x009B.Limit) end
if #_0x440A == 0 then _0x440A[1] = (_0xEFC3 ~="") and"Tidak ada yang cocok"or"Kosong"end
return table.concat(_0x440A,"\n"), _0x069C
end
local function _0xAFBB()
local _0x598C, _0x069C, _0x045C = {}, 0, 0
local _0x026D = _0x2FB0.list
if type(_0x026D) ~="table"then return nil end
for _0xF439, _0x2DDF in pairs(_0x026D) do
if type(_0x2DDF) =="table"and type(_0x2DDF.id) =="number"then
local _0x66F3 = tonumber(_0x2DDF.n) or 1
if _0x66F3 > 0 then
_0x598C[_0x2DDF.id] = (_0x598C[_0x2DDF.id] or 0) + _0x66F3
_0x069C += _0x66F3
_0x045C += 1
end
end
end
return _0x598C, _0x069C, _0x045C
end
local function _0x973B()
local _0x9F6E = _0x1DCC.World
if not _0x9F6E or type(_0x9F6E.fg) ~="table"or type(_0x9F6E.w) ~="number"then return nil end
local _0xE59E, _0xC59B, _0xC2E8, _0xBD1C = {}, {}, 0, 0
local _0x9882 = {}local _0xE35E = workspace:GetServerTimeNow()
local _0x46A4 = _0x927E.treeReadyAt
for _0x6665 = 0, _0x9F6E.h - 1 do
local _0x8634 = _0x9F6E.fg[_0x6665]
local _0xA7F2 = _0x9F6E.bg and _0x9F6E.bg[_0x6665]
for _0x5409 = 0, _0x9F6E.w - 1 do
local _0xE034 = _0x8634 and _0x8634[_0x5409] or 0
if _0xE034 ~= 0 then
_0xE59E[_0xE034] = (_0xE59E[_0xE034] or 0) + 1
_0xC2E8 += 1
local _0x91CB = _0xD7DB[_0xE034]
if _0x46A4 and _0x91CB and _0x91CB.kind =="seed"then
local _0xAF6E = _0x46A4(_0x5409, _0x6665, _0xE034)
if _0xAF6E then
local _0x7BA0 = _0x9882[_0xE034]
if not _0x7BA0 then
_0x7BA0 = { _0x2DAE = 0, _0x7F8F = 0 }
_0x9882[_0xE034] = _0x7BA0
end
if _0xE35E >= _0xAF6E then
_0x7BA0.r += 1
else
_0x7BA0.g += 1
if not _0x7BA0.nxt or _0xAF6E - _0xE35E < _0x7BA0.nxt then _0x7BA0.nxt = _0xAF6E - _0xE35E end
end
end
end
end
local _0x783C = _0xA7F2 and _0xA7F2[_0x5409] or 0
if _0x783C ~= 0 then
_0xC59B[_0x783C] = (_0xC59B[_0x783C] or 0) + 1
_0xBD1C += 1
end
end
if _0x6665 % 64 == 63 then task.wait() endend
return _0xE59E, _0xC59B, _0xC2E8, _0xBD1C, _0x9882
end
local function _0xBC7F(_0x804A)
_0x804A = math.max(0, math.floor(_0x804A or 0))
if _0x804A >= 3600 then return ("%dj %dm"):format(_0x804A // 3600, _0x804A % 3600 // 60) end
return ("%dm %dd"):format(_0x804A // 60, _0x804A % 60)
endlocal function _0x81B5(_0x9882)
local _0x026D, _0xDD20, _0x154D = {}, 0, 0
local _0xEFC3 = string.lower(_0x009B.Filter or"")
for _0x2010, _0x7BA0 in pairs(_0x9882) do
_0xDD20 += _0x7BA0.r
_0x154D += _0x7BA0.g
local _0xDF0A = _0x949D(_0x2010)
if _0xEFC3 ==""or string.find(string.lower(_0xDF0A), _0xEFC3, 1, true) then
_0x026D[#_0x026D + 1] = { _0xDF0A = _0xDF0A, _0x7BA0 = _0x7BA0 }
end
end
table.sort(_0x026D, function(_0xE034, _0x783C)
if _0xE034.e.r ~= _0x783C.e.r then return _0xE034.e.r > _0x783C.e.r end
return (_0xE034.e.nxt or math.huge) < (_0x783C.e.nxt or math.huge)
end)
local _0x440A = {}
for _0x7180, _0x97A1 in ipairs(_0x026D) do
if _0x7180 > _0x009B.Limit then
_0x440A[#_0x440A + 1] = ("... +%d jenis lain"):format(#_0x026D - _0x009B.Limit)
break
end
local _0x93E0 = ("%s: %d siap | %d tumbuh"):format(_0x97A1.name, _0x97A1.e.r, _0x97A1.e.g)
if _0x97A1.e.nxt then _0x93E0 = _0x93E0 .." (berikut ".. _0xBC7F(_0x97A1.e.nxt) ..")"end
_0x440A[#_0x440A + 1] = _0x93E0
end
if #_0x440A == 0 then _0x440A[1] = (_0xEFC3 ~="") and"Tidak ada yang cocok"or"Tidak ada pohon"end
return table.concat(_0x440A,"\n"), _0xDD20, _0x154D
end
local function _0xD6EE(el, _0x3E00, _0x795E)
if _0x009B[_0x795E] == _0x3E00 then return end
_0x009B[_0x795E] = _0x3E00
if el then pcall(function() el:SetDesc(_0x3E00) end) end
end
function _0x009B.run()
if _0x009B.Busy then return end
_0x009B.Busy = true
local _0x9F6E = _0x1DCC.World
local _0x9C3C, _0x4F00, _0x045C = _0xAFBB()
local _0xE59E, _0xC59B, _0xC2E8, _0xBD1C, _0x9882 = _0x973B()
local _0xD258, _0x837F, _0xF5C5 ="Data pohon belum ketemu", nil, nil
if _0x9882 then _0xD258, _0x837F, _0xF5C5 = _0x81B5(_0x9882) end
local _0x2DDC = _0x9C3C and select(1, _0x27B0(_0x9C3C, _0x949D)) or"Data drop belum ketemu. Tekan 'Hubungkan ke game'"local _0x48F7 ="Data world belum ketemu. Tekan 'Hubungkan ke game'"if _0xE59E then
local _0xA6BA
if _0x009B.Layer =="Depan"then
_0xA6BA = _0xE59E
elseif _0x009B.Layer =="Background"then
_0xA6BA = _0xC59B
else
_0xA6BA = {}
for _0x2010, _0x66F3 in pairs(_0xE59E) do _0xA6BA[_0x2010] = (_0xA6BA[_0x2010] or 0) + _0x66F3 end
for _0x2010, _0x66F3 in pairs(_0xC59B) do _0xA6BA[_0x2010] = (_0xA6BA[_0x2010] or 0) + _0x66F3 end
end
_0x48F7 = select(1, _0x27B0(_0xA6BA, _0xB424))
end
local _0xDF0A = _0x9F6E and rawget(_0x9F6E,"name")
local _0xA07A = table.concat({"World: ".. ((type(_0xDF0A) =="string"and _0xDF0A ~="") and _0xDF0A or"-")
.. (_0x9F6E and type(_0x9F6E.w) =="number"and (" (".. _0x9F6E.w .."x".. _0x9F6E.h ..")") or""),"Block depan: ".. (_0xC2E8 and _0x7990(_0xC2E8) or"-") .." | Background: ".. (_0xBD1C and _0x7990(_0xBD1C) or"-"),"Floating: ".. (_0x4F00 and (_0x7990(_0x4F00) .." item (".. _0x045C .." tumpukan)") or"-"),"Pohon: ".. (_0x837F and (_0x7990(_0x837F) .." siap panen | ".. _0x7990(_0xF5C5) .." tumbuh") or"-"),"Scan terakhir: ".. os.date("%H:%M:%S"),
},"\n")
_0xD6EE(_0x6FB2.ScanInfo, _0xA07A,"_info")
_0xD6EE(_0x6FB2.ScanFloat, _0x2DDC,"_float")
_0xD6EE(_0x6FB2.ScanBlocks, _0x48F7,"_blocks")
_0xD6EE(_0x6FB2.ScanTrees, _0xD258,"_trees")
_0x009B.Busy = false
end
task.spawn(function()
local _0xA98F = 0
while _0xCA76() do
if _0x009B.Auto and os.clock() - _0xA98F >= _0x009B.Every then
_0xA98F = os.clock()
pcall(_0x009B.run)
end
task.wait(0.5)
end
end)
end)() end
_0x5D2C.add("Growscan", _0x009B, {"Auto","Layer"})do (function()local _0xBE20 = _0x4AF3("Growscan","scan-search","fitur")
_0xEE48(function()
_0x6FB2.ScanInfo = _0xBE20:Paragraph({ _0xE762 ="Info World", Desc ="Tekan Scan sekarang"})
end)
local _0x367D = _0xC06B(_0xBE20,"Kontrol", true)
local _0xF5E6 = _0xC06B(_0xBE20,"Floating Items", true)
local _0x2D17 = _0xC06B(_0xBE20,"World Blocks", false)
local _0xB7DB = _0xC06B(_0xBE20,"Pohon (siap panen)", true)
_0xEE48(function()
_0x367D:Toggle({
_0xE762 ="Auto Scan",
Desc ="Update otomatis tiap 2 detik",
Value = _0x009B.Auto,
Callback = function(_0x4A01)
_0x009B.Auto = _0x4A01
if _0x4A01 then task.spawn(_0x009B.run) end
end,
})
end)
_0xEE48(function()
_0x367D:Button({
_0xE762 ="Scan sekarang",
Callback = function() task.spawn(_0x009B.run) end,
})
end)
_0xEE48(function()
_0x367D:Input({
_0xE762 ="Cari item",
Desc ="Saring nama item (kosongkan = semua)",
Value ="",
Placeholder ="contoh: seed",
Callback = function(_0xF5A6)
_0x009B.Filter = tostring(_0xF5A6 or""):gsub("^%s+",""):gsub("%s+$","")
task.spawn(_0x009B.run)
end,
})
end)
_0xEE48(function()
_0x6FB2.ScanFloat = _0xF5E6:Paragraph({ _0xE762 ="Daftar", Desc ="-"})
end)
_0xEE48(function()
_0x2D17:Dropdown({
_0xE762 ="Layer",
Values = {"Semua","Depan","Background"},
Value = _0x009B.Layer,
Callback = function(opt)
_0x009B.Layer = opt
task.spawn(_0x009B.run)
end,
})
end)
_0xEE48(function()
_0x6FB2.ScanBlocks = _0x2D17:Paragraph({ _0xE762 ="Daftar", Desc ="-"})
end)
_0xEE48(function()
_0x6FB2.ScanTrees = _0xB7DB:Paragraph({ _0xE762 ="Daftar", Desc ="-"})
end)
end)() enddo (function()
local function _0xA03E()
local _0x7F8F = _0x1DCC.Gems
local _0x509A = _0x7F8F and rawget(_0x7F8F,"addGems")
if type(_0x509A) ~="function"then return nil end
for _0xF439, _0x97A1 in pairs(_0x466E(_0x509A)) do
if type(_0x97A1) =="number"then return _0x97A1 end
end
return nil
end
_0x2CBF.gemsNow = _0xA03E
local function _0x3B44(_0x66F3)
local _0x5AC6 = tostring(math.floor(_0x66F3 or 0))
local _0x92F4 = string.sub(_0x5AC6, 1, 1) =="-"if _0x92F4 then _0x5AC6 = string.sub(_0x5AC6, 2) end
local _0xDB37 = _0x5AC6:reverse():gsub("(%d%d%d)","%1."):reverse()
_0xDB37 = _0xDB37:gsub("^%.","")
return (_0x92F4 and"-"or"") .. _0xDB37
end
local function _0xEF4A(_0x804A)
_0x804A = math.max(0, math.floor(_0x804A))
return ("%dj %dm %dd"):format(_0x804A // 3600, _0x804A % 3600 // 60, _0x804A % 60)
endlocal function _0xBC26()
return {
broken = _0x5D82.Broken, _0xBF69 = _0x5D82.Placed, collected = _0x5D82.Collected,
_0x6DDA = _0x9715.Harvested, _0x841A = _0x9715.Planted,
}
end
function _0x2CBF.reset()
_0x2CBF.T0 = os.clock()
_0x2CBF.Gems0 = _0xA03E()
_0x2CBF.Items = {}
_0x2CBF.Base = _0xBC26()
end
_0x2CBF.Base = _0xBC26()
function _0x2CBF.text()
local _0x6B0B = math.max((os.clock() - _0x2CBF.T0) / 3600, 1 / 3600)
local _0x4DD4, _0xF2D3 = _0xBC26(), _0x2CBF.Base
local function _0x93E0(_0x9C57, _0x795E)
local _0x97A1 = _0x4DD4[_0x795E] - (_0xF2D3[_0x795E] or 0)
return ("%s: %s  (%s/jam)"):format(_0x9C57, _0x3B44(_0x97A1), _0x3B44(_0x97A1 / _0x6B0B))
end
local _0x7F8F = _0xA03E()
if _0x7F8F and not _0x2CBF.Gems0 then _0x2CBF.Gems0 = _0x7F8F end
local _0x4484 ="Gems: -"if _0x7F8F and _0x2CBF.Gems0 then
local _0x2DDF = _0x7F8F - _0x2CBF.Gems0
_0x4484 = ("Gems: %s  (%s%s, %s/jam)"):format(_0x3B44(_0x7F8F), _0x2DDF >= 0 and"+"or"", _0x3B44(_0x2DDF), _0x3B44(_0x2DDF / _0x6B0B))
endlocal _0x5AB5 = {}
for _0x2010, _0x66F3 in pairs(_0x2CBF.Items) do _0x5AB5[#_0x5AB5 + 1] = { _0x2010 = _0x2010, _0x66F3 = _0x66F3 } end
table.sort(_0x5AB5, function(_0xE034, _0x783C) return _0xE034.n > _0x783C.n end)
local _0x9EA4 = {}
for _0x7180 = 1, math.min(5, #_0x5AB5) do _0x9EA4[_0x7180] = _0x949D(_0x5AB5[_0x7180].id) .." x".. _0x3B44(_0x5AB5[_0x7180].n) end
return table.concat({"Lama sesi: ".. _0xEF4A(os.clock() - _0x2CBF.T0),
_0x4484,
_0x93E0("Block pecah","broken"),
_0x93E0("Block di-place","placed"),
_0x93E0("Drop diambil","collected"),
_0x93E0("Panen","harvested"),
_0x93E0("Tanam","planted"),"Item terbanyak: ".. ((#_0x9EA4 > 0) and table.concat(_0x9EA4,", ") or"-"),
},"\n")
end
task.spawn(function()
local _0xAD22 = os.clock()
while _0xCA76() do
local _0xF64E, _0x3E00 = pcall(_0x2CBF.text)
if _0xF64E and _0x6FB2.StatsText and _0x3E00 ~= _0x2CBF.Shown then
_0x2CBF.Shown = _0x3E00
pcall(function() _0x6FB2.StatsText:SetDesc(_0x3E00) end)
endif _0x2479.ReportMin > 0 and os.clock() - _0xAD22 >= _0x2479.ReportMin * 60 then
_0xAD22 = os.clock()
if _0xF64E then _0x2479.send("report","Laporan statistik\n```\n".. _0x3E00 .."\n```") end
elseif _0x2479.ReportMin <= 0 then
_0xAD22 = os.clock()
end
task.wait(1)
end
end)
end)() enddo (function()
local _0x646E = _0x4AF3("Statistik","bar-chart-3","fitur")
_0xEE48(function()
_0x6FB2.StatsText = _0x646E:Paragraph({ _0xE762 ="Sesi ini", Desc ="-"})
end)
_0xEE48(function()
_0x646E:Button({
_0xE762 ="Reset statistik",
Desc ="Mulai hitung dari nol",
Callback = function()
_0x2CBF.reset()
_0x8021("Statistik","Direset", 2)
end,
})
end)
_0xEE48(function()
_0x646E:Button({
_0xE762 ="Kirim ke Discord sekarang",
Desc ="Perlu webhook di tab Discord",
Callback = function()
local _0xF64E, _0x3E00 = pcall(_0x2CBF.text)
if not (_0x2479.On and _0x2479.valid(_0x2479.Url)) then
_0x8021("Statistik","Aktifkan webhook Discord dulu", 3)
elseif _0xF64E then
_0x2479.send("report","Laporan statistik\n```\n".. _0x3E00 .."\n```")
_0x8021("Statistik","Masuk antrian kirim", 2)
end
end,
})
end)
end)() endlocal _0xA413 = {
TrashOn = false,
TrashList = {},TrashAt = 150,Keep = 0,LockOn = false,
Recycled = 0,
Converted = 0,
Status ="-",
}
do (function()
local _0xAC0D = { [242] = true, [1796] = true, [7188] = true }
local _0x501C = {
{ from = 242, to = 1796, _0xDF0A ="Diamond Lock"},
{ from = 1796, to = 7188, _0xDF0A ="Blue Gem Lock"},
}
local function _0x83F4(...)
local _0x9F6E = _0x1DCC.World
local _0x509A = _0x9F6E and rawget(_0x9F6E,"call")
if type(_0x509A) ~="function"then return false end
return pcall(_0x509A, ...)
end
local function _0xD9CC(_0x2010)
local _0x91CB = _0xD7DB[_0x2010]
return _0x91CB ~= nil and _0x91CB.kind ~="tool"and not _0xAC0D[_0x2010]
end
function _0xA413.recycle(_0x2010, _0x66F3)
if not _0x1DCC.Inv or _0x66F3 <= 0 or not _0xD9CC(_0x2010) then return false end
_0x66F3 = math.min(_0x66F3, _0xC90B(_0x2010))
if _0x66F3 <= 0 then return false end
pcall(function() _0x1DCC.Inv:remove(_0x2010, _0x66F3) end)
local _0xF64E = _0x83F4("Recycle", _0x2010, _0x66F3)
if _0xF64E then
_0xA413.Recycled += _0x66F3
_0xA413.Status = ("Recycle %s x%d"):format(_0x949D(_0x2010), _0x66F3)
end
return _0xF64E
endlocal function _0x4321(step)
local _0xD81C = _0x1DCC.Inv
if not _0xD81C or _0xC90B(step.from) < 100 then return false end
local _0x0C27, _0x4469 = pcall(function() return _0xD81C:used() end)
local _0x919E, _0x0030 = pcall(function() return _0xD81C.capacity end)
if _0xC90B(step.to) + 1 > 200 then return false end
if _0xC90B(step.to) == 0 and _0xC90B(step.from) ~= 100 and _0x0C27 and _0x919E
and type(_0x4469) =="number"and type(_0x0030) =="number"and _0x4469 >= _0x0030 then
return false
end
pcall(function()
_0xD81C:remove(step.from, 100)
_0xD81C:add(step.to, 1)
end)
local _0xF64E = _0x83F4("ConvertLock", step.from, step.to)
if _0xF64E then
_0xA413.Converted += 1
_0xA413.Status ="Convert ke ".. step.name
end
return _0xF64E
end
function _0xA413.tick()
if _0xA413.TrashOn then
for _0xF439, _0x2010 in ipairs(_0xA413.TrashList) do
local _0x66F3 = _0xC90B(_0x2010)
if _0x66F3 >= _0xA413.TrashAt and _0x66F3 > _0xA413.Keep then
_0xA413.recycle(_0x2010, _0x66F3 - _0xA413.Keep)
task.wait(0.5)
end
end
end
if _0xA413.LockOn then
for _0xF439, step in ipairs(_0x501C) do
if _0x4321(step) then task.wait(0.5) end
end
end
endfunction _0xA413.labels()
local _0xDB37, _0xC95D = {}, {}
for _0xF439, slot in ipairs(_0x1DCC.inventoryEntries()) do
local _0x2010 = slot.id
if not _0xC95D[_0x2010] and _0xD9CC(_0x2010) then
_0xC95D[_0x2010] = true
_0xDB37[#_0xDB37 + 1] = { _0x2010 = _0x2010, _0x9C57 = ("%s [%d]"):format(_0x949D(_0x2010), _0x2010) }
end
endfor _0xF439, _0x2010 in ipairs(_0xA413.TrashList) do
if not _0xC95D[_0x2010] then
_0xC95D[_0x2010] = true
_0xDB37[#_0xDB37 + 1] = { _0x2010 = _0x2010, _0x9C57 = ("%s [%d]"):format(_0x949D(_0x2010), _0x2010) }
end
end
table.sort(_0xDB37, function(_0xE034, _0x783C) return _0xE034.id < _0x783C.id end)
local _0x4394, _0xC44B = {}, {}
for _0xF439, _0x7BA0 in ipairs(_0xDB37) do
_0x4394[#_0x4394 + 1] = _0x7BA0.label
if table.find(_0xA413.TrashList, _0x7BA0.id) then _0xC44B[#_0xC44B + 1] = _0x7BA0.label end
end
return _0x4394, _0xC44B
end
task.spawn(function()
while _0xCA76() do
pcall(_0xA413.tick)
if _0x6FB2.BagStatus then
local _0x3E00 = ("Status: %s\nDi-recycle: %d item | Convert lock: %d kali\nItem dipilih: %d"):format(
_0xA413.Status, _0xA413.Recycled, _0xA413.Converted, #_0xA413.TrashList)
if _0x3E00 ~= _0xA413.Shown then
_0xA413.Shown = _0x3E00
pcall(function() _0x6FB2.BagStatus:SetDesc(_0x3E00) end)
end
end
task.wait(3)
end
end)
end)() end
_0x5D2C.add("Tas", _0xA413, {"TrashOn","TrashList","TrashAt","Keep","LockOn"})do (function()
local _0xFD2B = _0x4AF3("Tas","backpack","fitur")
_0xEE48(function()
_0x6FB2.BagStatus = _0xFD2B:Paragraph({ _0xE762 ="Status", Desc ="-"})
end)
local _0xAF71 = _0xC06B(_0xFD2B,"Auto Recycle (buang item)", true)
local _0xCDAC = _0xC06B(_0xFD2B,"Auto Convert Lock", false)
_0xEE48(function()
_0xAF71:Toggle({
_0xE762 ="Auto Recycle",
Desc ="Item yang dipilih di-recycle otomatis",
Value = _0xA413.TrashOn,
Callback = function(_0x4A01) _0xA413.TrashOn = _0x4A01 end,
})
end)
_0xEE48(function()
local _0x4394, _0xC44B = _0xA413.labels()
_0x6FB2.TrashDropdown = _0xAF71:Dropdown({
_0xE762 ="Item yang di-recycle",
Desc ="Bisa pilih banyak. Tool & lock tidak ditampilkan",
Values = (#_0x4394 > 0) and _0x4394 or {"(inventori belum terbaca)"},
Value = _0xC44B,
Multi = true,
AllowNone = true,
Callback = function(opts)
local _0x026D = {}
for _0xF439, _0x9C57 in ipairs(type(opts) =="table"and opts or { opts }) do
local _0x2010 = tonumber(string.match(tostring(_0x9C57),"%[(%d+)%]$"))
if _0x2010 then _0x026D[#_0x026D + 1] = _0x2010 end
end
_0xA413.TrashList = _0x026D
end,
})
end)local _0x0A48 = nil
_0x6FB2.TrashRefresh = function(force)
local _0x4394, _0xC44B = _0xA413.labels()
local _0x1DA0 = table.concat(_0x4394,"|")
if not force and _0x1DA0 == _0x0A48 then return end
if not _0x6FB2.TrashDropdown then return end
local _0xF64E = _0x6FB2.ddRefresh(_0x6FB2.TrashDropdown, (#_0x4394 > 0) and _0x4394 or {"(inventori kosong)"})
if _0xF64E and #_0xC44B > 0 then
local _0x8599
_0xF64E, _0x8599 = _0x6FB2.exec(function() _0x6FB2.TrashDropdown:Select(_0xC44B) end)
if not _0xF64E then _0x6FB2.DropErr ="Tas: ".. tostring(_0x8599) end
end
_0x0A48 = _0xF64E and _0x1DA0 or nil
end
_0xDC61(_0xAF71, {
_0xE762 ="Recycle kalau jumlah >=",
Desc ="200 = hanya saat penuh 1 slot",
Min = 1, Max = 200, Step = 1, Default = _0xA413.TrashAt,
Callback = function(_0x97A1) _0xA413.TrashAt = math.floor(_0x97A1) end,
})
_0xDC61(_0xAF71, {
_0xE762 ="Sisakan",
Desc ="Jumlah yang tidak ikut di-recycle",
Min = 0, Max = 199, Step = 1, Default = _0xA413.Keep,
Callback = function(_0x97A1) _0xA413.Keep = math.floor(_0x97A1) end,
})
_0xEE48(function()
_0xAF71:Button({
_0xE762 ="Refresh daftar item",
Callback = function() _0x6FB2.later("trash", function() _0x6FB2.TrashRefresh(true) end) end,
})
end)
_0xEE48(function()
_0xCDAC:Toggle({
_0xE762 ="Auto Convert Lock",
Desc ="100 WL -> 1 DL, 100 DL -> 1 BGL (sama seperti game)",
Value = _0xA413.LockOn,
Callback = function(_0x4A01) _0xA413.LockOn = _0x4A01 end,
})
end)
end)() enddo (function()
local _0x8173, _0x2252 = _0xA5D7:Load("Splice")
function _0xD808.result(_0xE034, _0x783C)
if not (_0x8173 and type(_0x2252) =="table"and type(_0x2252.result) =="function") then return nil end
if not (_0xE034 and _0x783C) then return nil end
local _0xF64E, _0x2DAE = pcall(_0x2252.result, _0xE034, _0x783C)
return _0xF64E and _0x2DAE or nil
end
local function _0x3A5B()
if _0x6FB2.SpliceToggle then pcall(function() _0x6FB2.SpliceToggle:Set(_0xD808.Running) end) end
end
function _0xD808.stop(_0x3B8B)
_0xD808.Running = false
if _0xD808.Roaming then _0x927E.stopSpliceRoam() end
_0xD808.Status = _0x3B8B or"Dihentikan"_0x3A5B()
if _0x3B8B then _0x8021("Auto Splice", _0x3B8B, 4) end
end
local function _0xF5E2(_0x5409, _0x6665)
local _0x615D = _0x927E.treeEntry(_0x5409, _0x6665)
return type(_0x615D) =="table"and _0x615D.s == true
end
local function _0x14AB(_0x5409, _0x6665)
local _0x9F6E = _0x1DCC.World
local _0x509A = _0x9F6E and rawget(_0x9F6E,"spliceSeed")
if type(_0x509A) ~="function"then return false,"fungsi splice game tidak ketemu"end
local _0xF64E, _0xEC31 = pcall(_0x509A, _0x5409, _0x6665, _0xD808.B)
if _0xF64E and _0xEC31 and _0xD7DB[_0xEC31] then
pcall(function() _0x1DCC.Inv:remove(_0xD808.B, 1) end)
if _0x1DCC.SetTile then pcall(_0x1DCC.SetTile,"fg", _0x5409, _0x6665, _0xEC31, true) end_0xD808.Made += 1
_0xD808.Status = ("Splice jadi %s (%d,%d)"):format(_0x949D(_0xEC31), _0x5409, _0x6665)
return true
end
return false,"ditolak server"end
local function _0x498B(_0x5431)
while _0xD808.Running and _0xCA76() and _0xD808.RunId == _0x5431 do
local _0x50CF, _0x789A = _0x22CB()
if not _0x50CF then
_0xD808.stop("Karakter tidak ditemukan (keluar world?)")
return
end
local _0x4F45, _0x4112 = _0xD808.A, _0xD808.B
local _0xC220 = false
local _0x4DD4 = os.clock()
for _0xF439, _0x756B in ipairs(_0xC17F()) do
if not _0xD808.Running then break end
local _0x5409, _0x6665 = _0x50CF + _0x756B.dx, _0x789A + _0x756B.dy
local _0x795E = _0x5409 ..",".. _0x6665
if not (_0xD808.Fail[_0x795E] and _0xD808.Fail[_0x795E] > _0x4DD4) then
local _0xC8CC = _0x3270("fg", _0x5409, _0x6665)if _0xC8CC == 0 and _0xC90B(_0x4F45) > 0 and _0xC90B(_0x4112) > 0 and _0x927E.plantSpotOk(_0x5409, _0x6665, _0x4F45) then
_0xBF1A("fg", _0x5409, _0x6665, _0x4F45)
pcall(function() _0x1DCC.Inv:remove(_0x4F45, 1) end)
_0xD808.Planted += 1
_0xD808.Status = ("Tanam %s (%d,%d)"):format(_0x949D(_0x4F45), _0x5409, _0x6665)
_0xC220 = true
task.wait(_0xD808.Ms / 1000)
_0xC8CC = _0x3270("fg", _0x5409, _0x6665)
endif _0xC8CC == _0x4F45 and _0xC90B(_0x4112) > 0 and not _0xF5E2(_0x5409, _0x6665) then
local _0xF64E, _0x3330 = _0x14AB(_0x5409, _0x6665)
if not _0xF64E then
_0xD808.Fail[_0x795E] = os.clock() + 30
_0xD808.Status = ("Gagal splice (%d,%d): %s"):format(_0x5409, _0x6665, _0x3330)
end
_0xC220 = true
task.wait(_0xD808.Ms / 1000)
end
end
end
if not _0xC220 then
if _0xC90B(_0x4F45) <= 0 or _0xC90B(_0x4112) <= 0 then
_0xD808.stop("Seed habis")
return
end
_0xD808.Status ="Menunggu tile Grid kosong (panen dulu pohonnya)"task.wait(1)
end
end
end
function _0xD808.start()
if _0xD808.Running then return end
local _0x8599
if not _0x1DCC.World then
_0x8599 ="Data world belum ketemu. Tekan 'Hubungkan ke game'"elseif not (_0xD808.A and _0xD808.B) then
_0x8599 ="Pilih Seed A dan Seed B dulu"elseif _0xD808.A == _0xD808.B then
_0x8599 ="Seed A dan Seed B harus beda"elseif not _0xD808.result(_0xD808.A, _0xD808.B) then
_0x8599 ="Kombinasi ini tidak bisa di-splice"elseif not _0xD808.Roam and next(_0x5D82.Offsets) == nil then
_0x8599 ="Pilih tile dulu di Grid Tile (tab Farm), atau nyalakan Keliling world"elseif _0x5D82.Running or _0xD222.Running or _0x9715.Running then
_0x8599 ="Hentikan Auto Farm / Clear / Farmer dulu"end
if _0x8599 then
_0x8021("Auto Splice", _0x8599, 4)
_0x3A5B()
return
end
table.clear(_0xD808.Fail)
_0xD808.Running = true
_0xD808.RunId = (_0xD808.RunId or 0) + 1
_0x3A5B()
if _0xD808.Roam then
local _0x7BA0 = _0x927E.startSpliceRoam()
if _0x7BA0 then _0xD808.stop(_0x7BA0) end
else
task.spawn(_0x498B, _0xD808.RunId)
end
end
function _0xD808.resultText()
if not (_0xD808.A and _0xD808.B) then return"Pilih Seed A dan Seed B"end
local _0x2DAE = _0xD808.result(_0xD808.A, _0xD808.B)
if not _0x2DAE then return"Hasil: tidak bisa di-splice"end
return"Hasil: ".. _0x949D(_0x2DAE)
end
task.spawn(function()
while _0xCA76() do
if _0x6FB2.SpliceStatus then
local _0x3E00 = ("Status: %s\n%s\nSeed A: %s (x%d) | Seed B: %s (x%d)\nDitanam: %d | Splice jadi: %d"):format(
_0xD808.Running and _0xD808.Status or ("BERHENTI - ".. _0xD808.Status), _0xD808.resultText(),
_0xD808.A and _0x949D(_0xD808.A) or"-", _0xD808.A and _0xC90B(_0xD808.A) or 0,
_0xD808.B and _0x949D(_0xD808.B) or"-", _0xD808.B and _0xC90B(_0xD808.B) or 0,
_0xD808.Planted, _0xD808.Made)
if _0x3E00 ~= _0xD808.Shown then
_0xD808.Shown = _0x3E00
pcall(function() _0x6FB2.SpliceStatus:SetDesc(_0x3E00) end)
end
end
task.wait(1)
end
end)
end)() end
_0x5D2C.add("Splice", _0xD808, {"A","B","Ms","Roam"})
_0xD808.Ms = math.max(_0xD808.Ms, 140)do (function()
local _0x6FE2 = _0x4AF3("Splice","git-merge","farm")
_0xEE48(function()
_0x6FB2.SpliceStatus = _0x6FE2:Paragraph({ _0xE762 ="Status Splice", Desc ="-"})
end)
local _0x367D = _0xC06B(_0x6FE2,"Kontrol", true)
local _0x1C68 = _0xC06B(_0x6FE2,"Seed", true)
local _0x759B = _0xC06B(_0x6FE2,"Kecepatan", false)
_0xEE48(function()
_0x6FB2.SpliceToggle = _0x367D:Toggle({
_0xE762 ="Auto Splice",
Desc ="Tanam Seed A lalu splice Seed B",
Value = false,
Callback = function(_0x4A01)
if _0x4A01 then _0xD808.start() elseif _0xD808.Running then _0xD808.stop() end
end,
})
end)
local function _0x706C()
local _0x4394 = {}
for _0xF439, _0x2010 in ipairs(_0x122B()) do _0x4394[#_0x4394 + 1] = ("%s [%d]"):format(_0x949D(_0x2010), _0x2010) end
if #_0x4394 == 0 then _0x4394 = {"(tidak ada seed di inventori)"} end
return _0x4394
end
local function _0x1885(opt) return tonumber(string.match(tostring(opt or""),"%[(%d+)%]$")) end
_0xEE48(function()
_0x6FB2.SpliceA = _0x1C68:Dropdown({
_0xE762 ="Seed A (ditanam)",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = _0x1885(opt)
if _0x2010 then _0xD808.A = _0x2010 end
end,
})
end)
_0xEE48(function()
_0x6FB2.SpliceB = _0x1C68:Dropdown({
_0xE762 ="Seed B (di-splice)",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = _0x1885(opt)
if _0x2010 then _0xD808.B = _0x2010 end
end,
})
end)local _0x0A48 = nil
_0x6FB2.SpliceRefresh = function(force)
local _0x4394 = _0x706C()
local _0x1DA0 = table.concat(_0x4394,"|")
if not force and _0x1DA0 == _0x0A48 then return end
local _0xF64E = true
for _0xF439, pair in ipairs({ { _0x6FB2.SpliceA, _0xD808.A }, { _0x6FB2.SpliceB, _0xD808.B } }) do
local _0x95E7, _0x2010 = pair[1], pair[2]
if _0x95E7 then
local _0x21ED = _0x6FB2.ddRefresh(_0x95E7, _0x4394)
if _0x21ED then _0x21ED = _0x6302(_0x95E7, _0x4394, _0x2010) end
_0xF64E = _0xF64E and _0x21ED
end
end
_0x0A48 = _0xF64E and _0x1DA0 or nil
end
_0xEE48(function()
_0x1C68:Button({
_0xE762 ="Refresh daftar seed",
Callback = function() _0x6FB2.later("splice", function() _0x6FB2.SpliceRefresh(true) end) end,
})
end)
_0xEE48(function()
_0x367D:Toggle({
_0xE762 ="Keliling world (A*)",
Desc ="Nyala: jalan ke seluruh world. Mati: hanya tile Grid 5x5",
Value = _0xD808.Roam,
Callback = function(_0x4A01)
if _0xD808.Running then _0xD808.stop("Mode diganti, nyalakan lagi") end
_0xD808.Roam = _0x4A01
end,
})
end)
_0xDC61(_0x759B, {
_0xE762 ="Jeda tanam / splice (ms)",
Min = 140, Max = 2000, Step = 10, Default = _0xD808.Ms,
Callback = function(_0x97A1) _0xD808.Ms = math.floor(_0x97A1) end,
})
end)() enddo (function()
local _0x1DC0 = _0x4AF3("Dirt Farm","layout-grid","farm")
_0xEE48(function()
_0x6FB2.LahanStatus = _0x1DC0:Paragraph({ _0xE762 ="Status Dirt Farm", Desc ="-"})
end)
local _0x183D = _0xC06B(_0x1DC0,"Bangun Dirt Farm", true)
local _0x9F59 = _0xC06B(_0x1DC0,"Bentuk Dirt Farm", true)
_0xEE48(function()
_0x6FB2.BuildToggle = _0x183D:Toggle({
_0xE762 ="Bangun Dirt Farm",
Desc ="Gali per baris tanpa kembali ke awal, pukulan lebih rapat, lava terjangkau didahulukan. Block kurang: produksi 1 baris",
Value = false,
Callback = function(_0x4A01)
if _0x4A01 then _0x3F90.start() elseif _0x3F90.Running then _0x3F90.stop() end
end,
})
end)
_0xEE48(function()
_0x6FB2.BuildBlockDropdown = _0x183D:Dropdown({
_0xE762 ="Block Dirt Farm",
Desc ="Block padat dari inventori",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = tonumber(string.match(opt or"","%[(%d+)%]$"))
if _0x2010 then _0x3F90.BlockId = _0x2010 end
end,
})
end)
local function _0x52F5(_0xF5A6, def)
local _0x97A1 = tonumber(tostring(_0xF5A6 or""):match("%-?%d+"))
return _0x97A1 or def
end
_0xEE48(function()
_0x9F59:Input({
_0xE762 ="X awal",
Desc ="Kolom paling kiri",
Value = tostring(_0x0DAF.X0),
Placeholder ="0",
Callback = function(_0x615D) _0x0DAF.X0 = math.max(0, _0x52F5(_0x615D, _0x0DAF.X0)) end,
})
end)
_0xEE48(function()
_0x9F59:Input({
_0xE762 ="X akhir",
Desc ="Kolom paling kanan (lebih dari lebar world = sampai ujung)",
Value = tostring(_0x0DAF.X1),
Placeholder ="99",
Callback = function(_0x615D) _0x0DAF.X1 = math.max(0, _0x52F5(_0x615D, _0x0DAF.X1)) end,
})
end)
_0xEE48(function()
_0x9F59:Input({
_0xE762 ="Y baris atas",
Desc ="Baris block paling atas. Baris di bawahnya otomatis sampai di atas bedrock (tanah digali)",
Value = tostring(_0x0DAF.Y0),
Placeholder ="2",
Callback = function(_0x615D) _0x0DAF.Y0 = math.max(1, _0x52F5(_0x615D, _0x0DAF.Y0)) end,
})
end)
_0xEE48(function()
_0x9F59:Button({
_0xE762 ="Pakai posisi karakter sebagai pojok kiri-atas",
Desc ="Berdiri di atas block pertama baris paling atas, lalu tekan (tangga kiri di sebelah kirinya)",
Callback = function()
local _0x5409, _0x6665 = _0x927E.here()
if not _0x5409 then
_0x8021("Dirt Farm","Kamu belum masuk world", 3)
return
end_0x0DAF.X0, _0x0DAF.Y0 = math.max(0, _0x5409 - 1), _0x6665 + 1
_0x8021("Dirt Farm", ("X awal %d, Y baris atas %d"):format(_0x0DAF.X0, _0x0DAF.Y0), 4)
end,
})
end)
_0xEE48(function()
_0x183D:Toggle({
_0xE762 ="Lanjut Pabrik setelah selesai",
Value = _0x3F90.ThenPabrik,
Callback = function(_0x4A01) _0x3F90.ThenPabrik = _0x4A01 end,
})
end)
_0xEE48(function()
_0x183D:Button({
_0xE762 ="Posisi break produksi = posisi karakter",
Desc ="Berdiri di tempat break lalu tekan. Tekan lagi di tempat yang sama = kembali otomatis",
Callback = function()
local _0x5409, _0x6665 = _0x927E.here()
if not _0x5409 then
_0x8021("Dirt Farm","Kamu belum masuk world", 3)
return
end
if _0x3F90.BreakX == _0x5409 and _0x3F90.BreakY == _0x6665 then
_0x3F90.BreakX, _0x3F90.BreakY = -1, -1
_0x8021("Dirt Farm","Posisi break produksi: otomatis", 3)
else
_0x3F90.BreakX, _0x3F90.BreakY = _0x5409, _0x6665
if next(_0x3F90.Tiles) == nil then _0x3F90.Tiles["1,0"] = true end
_0x8021("Dirt Farm", ("Posisi break produksi (%d,%d)"):format(_0x5409, _0x6665), 3)
end
end,
})
end)
_0xEE48(function()
_0x183D:Button({
_0xE762 ="Pilih tile break produksi (Grid)",
Desc ="Grid terbuka dalam mode Dirt Farm (terpisah dari Auto Farm & Pabrik)",
Callback = function()
if _0x6FB2.setGridMode then _0x6FB2.setGridMode("lahan") end
if _0x6FB2.GridGui then _0x6FB2.GridGui.Enabled = true end
end,
})
end)
task.spawn(function()
while _0xCA76() do
local _0x3E00
if _0x1DCC.World then
local _0xA07A = _0x3F90.Info
if not (_0x3F90.Running and _0xA07A) then
local _0x795E = tostring(_0x3F90.BlockId) .."|".. _0x0DAF.X0 .."|".. _0x0DAF.X1 .."|".. _0x0DAF.Y0
if not _0xA07A or not _0x3F90.InfoAt or os.clock() - _0x3F90.InfoAt > 5 or _0x3F90.InfoKey ~= _0x795E then
_0xA07A = _0x927E.landInfo(_0x3F90.BlockId)
_0x3F90.Info, _0x3F90.InfoAt, _0x3F90.InfoKey = _0xA07A, os.clock(), _0x795E
end
end
local _0x7D85 = _0x927E.landRows()
local _0xCD6B = _0x3F90.BlockId and _0xC90B(_0x3F90.BlockId) or 0
local _0xE60E = _0x927E.seedOfBlock(_0x3F90.BlockId)
_0x3E00 = table.concat({"Status   : ".. (_0x3F90.Running and"JALAN"or"BERHENTI") .." - ".. _0x3F90.Phase,
(#_0x7D85 > 0) and ("Bentuk   : %d baris (y %d-%d), x %d-%d, 1 kosong per baris, tangga kiri & kanan"):format(
#_0x7D85, _0x7D85[1], _0x7D85[#_0x7D85], math.min(_0x0DAF.X0, _0x0DAF.X1), math.max(_0x0DAF.X0, _0x0DAF.X1))
or"Bentuk   : tidak ada baris yang muat (Y atas terlalu bawah)",
("Block    : %s | punya %d | butuh %d%s"):format(_0x3F90.BlockId and _0x949D(_0x3F90.BlockId) or"-",
_0xCD6B, _0xA07A.need, (_0xA07A.need > _0xCD6B) and (" (kurang ".. (_0xA07A.need - _0xCD6B) ..")") or" (cukup)"),
("Terpasang: %d / %d%s"):format(_0xA07A.done, _0xA07A.total,
_0xA07A.blocked > 0 and (" | terhalang block lain: ".. _0xA07A.blocked) or""),
(_0xA07A.carve > 0) and ("Gali     : sisa ".. _0xA07A.carve .." tile (celah, tangga, background)")
or"Gali     : selesai","Seed block: ".. (_0xE60E and (_0x949D(_0xE60E) .." x".. _0xC90B(_0xE60E)) or"-"),
("Produksi : panen %d | tanam %d"):format(_0x3F90.Harvested, _0x3F90.Planted),"Break    : ".. ((_0x3F90.BreakX >= 0 and next(_0x3F90.Tiles) ~= nil)
and ("(".. _0x3F90.BreakX ..",".. _0x3F90.BreakY ..") | grid Dirt Farm")
or"otomatis (kanan karakter, dekat ujung baris)"),"Aksi     : ".. _0x3F90.Status,
("Lava     : prioritas otomatis | dibersihkan %d | jeda pukul %d ms"):format(
_0x3F90.LavaCleared or 0, _0x3F90.PunchMs or 200),
},"\n")
else
_0x3E00 ="Data world belum ketemu"end
if _0x6FB2.LahanStatus and _0x3E00 ~= _0x3F90.Shown then
_0x3F90.Shown = _0x3E00
pcall(function() _0x6FB2.LahanStatus:SetDesc(_0x3E00) end)
endif _0x6FB2.GridMode =="lahan"and _0x6FB2.GridStart then
_0x6FB2.GridStart.Text = _0xEAC0.T(_0x3F90.Running and"STOP DIRT FARM"or"START DIRT FARM")
_0x6FB2.GridStart.BackgroundColor3 = _0x3F90.Running and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(46, 160, 90)
end
task.wait(1)
end
end)
end)() enddo (function()
local _0xC458 = _0x4AF3("Vending","store","farm")
_0xEE48(function()
_0x6FB2.VendStatus = _0xC458:Paragraph({ _0xE762 ="Status Vending", Desc ="-"})
end)
local _0xC0BB = _0xC06B(_0xC458,"Kontrol", true)
local _0x19B1 = _0xC06B(_0xC458,"Pilih item", true)
local _0x208A = _0xC06B(_0xC458,"Titik drop vending", true)
_0xEE48(function()
_0x6FB2.VendToggle = _0xC0BB:Toggle({
_0xE762 ="Jalankan Vending",
Desc ="Jalankan di world vending milikmu",
Value = false,
Callback = function(_0x4A01)
if _0x4A01 then _0x5F2F.start() elseif _0x5F2F.Running then _0x5F2F.stop() end
end,
})
end)
_0xEE48(function()
_0xC0BB:Dropdown({
_0xE762 ="Mode",
Values = _0x927E.VEND_MODES,
Value = _0x5F2F.Mode,
Callback = function(_0x97A1)
if type(_0x97A1) =="table"then _0x97A1 = _0x97A1[1] end
if type(_0x97A1) =="string"then _0x5F2F.Mode = _0x97A1 end
end,
})
end)
_0xEE48(function()
local _0x4394, _0xC44B = _0x5F2F.labels(_0x1DCC.World and _0x5F2F.machines() or nil)
_0x6FB2.VendItems = _0x19B1:Dropdown({
_0xE762 ="Item yang diambil",
Desc ="Bisa pilih banyak. Kosong = semua item. Daftar: isi vending, tas & drop yang terlihat",
Values = (#_0x4394 > 0) and _0x4394 or {"(belum ada item)"},
Value = _0xC44B,
Multi = true,
AllowNone = true,
Callback = function(opts)
local _0x026D = {}
for _0xF439, _0x9C57 in ipairs(type(opts) =="table"and opts or { opts }) do
local _0x2010 = tonumber(string.match(tostring(_0x9C57),"%[(%d+)%]$"))
if _0x2010 then _0x026D[#_0x026D + 1] = _0x2010 end
end
_0x5F2F.Items = _0x026D
end,
})
end)function _0x5F2F.refreshItems(force, machines)
if not _0x6FB2.VendItems then return 0,"dropdown belum dibuat"end
local _0xF64E, _0x4394, _0xC44B, _0xE35E = pcall(function()
local _0xBF65 = machines
if not _0xBF65 and _0x1DCC.World then
local _0x2672, _0xD6CD = pcall(_0x5F2F.machines)
_0xBF65 = _0x2672 and _0xD6CD or nil
end
return _0x5F2F.labels(_0xBF65)
end)
if not _0xF64E then
warn("[ziey HUB] daftar item vending error: ".. tostring(_0x4394))
return 0,"error: ".. tostring(_0x4394)
end
local _0xA07A = ("tas %d | drop %d | vending %d"):format(_0xE35E.inv, _0xE35E.drop, _0xE35E.vend)
local _0x1DA0 = table.concat(_0x4394,"|")
if not force and _0x1DA0 == _0x5F2F.ItemSig then return #_0x4394, _0xA07A end
_0x5F2F.ItemSig = _0x1DA0
_0x6FB2.later("vendItems", function()
local _0x1475, _0xEF11 = _0x6FB2.exec(function()
_0x6FB2.VendItems:Refresh((#_0x4394 > 0) and _0x4394 or {"(belum ada item)"})
end)
if not _0x1475 then
_0x5F2F.ItemSig = nil
warn("[ziey HUB] refresh dropdown item vending gagal: ".. tostring(_0xEF11))
_0x8021("Vending","Daftar item gagal dimuat: ".. tostring(_0xEF11), 6)
return
end
if #_0xC44B > 0 then _0x6FB2.exec(function() _0x6FB2.VendItems:Select(_0xC44B) end) end
end)
return #_0x4394, _0xA07A
end
_0xEE48(function()
_0x19B1:Button({
_0xE762 ="Muat ulang daftar item",
Desc ="Ambil item dari vending, tas & drop di world ini",
Callback = function()
local _0x66F3, _0xA07A = _0x5F2F.refreshItems(true)
_0x8021("Vending", ("Daftar item: %d item (%s)"):format(_0x66F3, tostring(_0xA07A)), 5)
end,
})
end)
_0xEE48(function()
_0x19B1:Button({
_0xE762 ="Tambah item yang dipegang",
Desc ="Pilih item di tas game (dipegang), lalu tekan. Masuk ke daftar item yang diambil",
Callback = function()
local _0x2010 = nil
if _0x1DCC.Inv then pcall(function() _0x2010 = tonumber(_0x1DCC.Inv.selected) end) end
local _0x91CB = _0x2010 and _0xD7DB[_0x2010]
if not _0x91CB or _0x91CB.kind =="tool"or _0x91CB.lock then
_0x8021("Vending","Pegang dulu block / seed di tas game (bukan tool)", 4)
return
end
if not table.find(_0x5F2F.Items, _0x2010) then table.insert(_0x5F2F.Items, _0x2010) end
_0x5F2F.Seen[_0x2010] = true
_0x5F2F.refreshItems(true)
_0x8021("Vending","Item dipilih: ".. _0x949D(_0x2010), 3)
end,
})
end)
_0xEE48(function()
_0x19B1:Button({
_0xE762 ="Hapus pilihan item",
Desc ="Kembali ke semua item",
Callback = function()
table.clear(_0x5F2F.Items)
_0x5F2F.ItemSig = nil
_0x6FB2.later("vendClear", function() _0x6FB2.exec(function() _0x6FB2.VendItems:Select(nil) end) end)
_0x5F2F.refreshItems(true)
_0x8021("Vending","Pilihan item dihapus: semua item", 3)
end,
})
end)
_0xEE48(function()
_0x6FB2.VendPointInput = _0x208A:Input({
_0xE762 ="Titik drop vending",
Desc ="WORLD atau WORLD:ID (kosong = world ini). Isi stock: ambil drop di sini. Kosongkan: drop di sini",
Value = _0x5F2F.Point,
Placeholder ="STORAGE:ID",
Callback = function(_0x615D) _0x5F2F.Point = tostring(_0x615D or"") end,
})
end)
_0xEE48(function()
_0x208A:Button({
_0xE762 ="Simpan posisi drop vending (posisi karakter)",
Desc ="Berdiri di tempat drop (boleh di world titik drop), lalu tekan. Dipakai mode isi stock & kosongkan",
Callback = function()
local _0x5409, _0x6665 = _0x927E.here()
if not _0x5409 then
_0x8021("Vending","Kamu belum masuk world", 3)
return
end
_0x5F2F.DropX, _0x5F2F.DropY = _0x5409, _0x6665local _0xF439, _0x80D9 = _0x5F2F.point()
if not _0x80D9 then
_0x5F2F.Point = _0x5B75.worldName()
if _0x6FB2.VendPointInput then pcall(function() _0x6FB2.VendPointInput:Set(_0x5F2F.Point) end) end
end
_0x8021("Vending", ("Posisi drop vending (%d,%d) di %s"):format(_0x5409, _0x6665, _0x5F2F.Point), 4)
end,
})
end)
_0xEE48(function()
_0x208A:Button({
_0xE762 ="Hapus posisi drop vending",
Desc ="Drop / tunggu di titik kedatangan (pintu) saja",
Callback = function()
_0x5F2F.DropX, _0x5F2F.DropY = -1, -1
_0x8021("Vending","Posisi drop vending dihapus", 3)
end,
})
end)
task.spawn(function()
while _0xCA76() do
local _0x3E00
if _0x1DCC.World then
local _0x026D = _0x5F2F.machines()
local _0x069C, _0x7AF2 = 0, 0
for _0xF439, _0xBF65 in ipairs(_0x026D) do
if _0xBF65.id and _0xBF65.stock > 0 then _0x069C += _0xBF65.stock else _0x7AF2 += 1 end
end
local _0xDF0A, _0x80D9 = _0x5F2F.point()
local _0xFBD6 = {}
for _0x7180, _0x2010 in ipairs(_0x5F2F.Items) do
if _0x7180 > 4 then
_0xFBD6[#_0xFBD6 + 1] ="+".. (#_0x5F2F.Items - 4)
break
end
_0xFBD6[#_0xFBD6 + 1] = _0x949D(_0x2010)
end
if not _0x5F2F.Running then _0x5F2F.refreshItems(false, _0x026D) end
_0x3E00 = table.concat({"Status  : ".. (_0x5F2F.Running and"JALAN"or"BERHENTI") .." - ".. _0x5F2F.Mode,"Item    : ".. ((#_0xFBD6 > 0) and table.concat(_0xFBD6,", ") or"semua item yang bisa dijual"),
("Vending : %d milikmu di world ini | isi %d | kosong %d"):format(#_0x026D, _0x069C, _0x7AF2),"Titik   : ".. ((_0xDF0A ~=""or _0x80D9) and (_0xDF0A .. (_0x80D9 and (":".. _0x80D9) or"")) or"world ini")
.. (_0x5F2F.DropX >= 0 and (" (".. _0x5F2F.DropX ..",".. _0x5F2F.DropY ..")") or" (titik kedatangan)"),
("Hasil   : stock +%d | diambil %d | di-drop %d"):format(_0x5F2F.Stocked, _0x5F2F.Taken, _0x5F2F.Dropped),"Aksi    : ".. _0x5F2F.Status,
},"\n")
else
_0x3E00 ="Data world belum ketemu"end
if _0x6FB2.VendStatus and _0x3E00 ~= _0x5F2F.Shown then
_0x5F2F.Shown = _0x3E00
pcall(function() _0x6FB2.VendStatus:SetDesc(_0x3E00) end)
end
task.wait(1)
end
end)
end)() enddo (function()
local _0x0287 = _0x4AF3("Pabrik","factory","farm")
_0xEE48(function()
_0x6FB2.PabrikStatus = _0x0287:Paragraph({ _0xE762 ="Status Pabrik", Desc ="-"})
end)
local _0x68B6 = _0xC06B(_0x0287,"Kontrol", true)
local _0xB33F = _0xC06B(_0x0287,"Posisi & tile break", true)
local _0xC932 = _0xC06B(_0x0287,"Drop seed", true)
_0xEE48(function()
_0x6FB2.PabrikToggle = _0x68B6:Toggle({
_0xE762 ="Jalankan Pabrik",
Desc ="Panen pohon ready -> ambil block -> break -> tanam; ulang otomatis",
Value = false,
Callback = function(_0x4A01)
if _0x4A01 then _0xECF0.start() elseif _0xECF0.Running then _0xECF0.stop() end
end,
})
end)
_0xEE48(function()
_0x6FB2.PabrikSeedDropdown = _0x68B6:Dropdown({
_0xE762 ="Seed pabrik",
Desc ="Block-nya otomatis (contoh: Dirt Seed -> Dirt)",
Values = {"(memuat...)"},
Callback = function(opt)
local _0x2010 = tonumber(string.match(opt or"","%[(%d+)%]$"))
if _0x2010 then _0xECF0.SeedId = _0x2010 end
end,
})
end)
_0xEE48(function()
_0x68B6:Toggle({
_0xE762 ="Tanam di seluruh world",
Desc ="Mati = hanya di Dirt Farm (tab Dirt Farm)",
Value = _0xECF0.WholeWorld,
Callback = function(_0x4A01) _0xECF0.WholeWorld = _0x4A01 end,
})
end)
_0xEE48(function()
_0xB33F:Button({
_0xE762 ="Pakai posisi sekarang untuk break",
Desc ="Berdiri di tempat break, lalu tekan",
Callback = function()
local _0x5409, _0x6665 = _0x927E.here()
if not _0x5409 then
_0x8021("Pabrik","Kamu belum masuk world", 3)
return
end
_0xECF0.BreakX, _0xECF0.BreakY = _0x5409, _0x6665
_0x8021("Pabrik", ("Posisi break (%d,%d)"):format(_0x5409, _0x6665), 3)
end,
})
end)
_0xEE48(function()
_0xB33F:Button({
_0xE762 ="Pilih tile break (Grid)",
Desc ="Grid terbuka dalam mode Pabrik (terpisah dari tile Auto Farm)",
Callback = function()
if _0x6FB2.setGridMode then _0x6FB2.setGridMode("pabrik") end
if _0x6FB2.GridGui then _0x6FB2.GridGui.Enabled = true end
end,
})
end)
_0xEE48(function()
_0xC932:Toggle({
_0xE762 ="Auto drop seed",
Desc ="Ke titik drop (tab Titik Drop)",
Value = _0xECF0.Drop,
Callback = function(_0x4A01) _0xECF0.Drop = _0x4A01 end,
})
end)
_0xDC61(_0xC932, {
_0xE762 ="Sisakan seed",
Desc ="Untuk ditanam lagi",
Min = 0, Max = 199, Step = 1, Default = _0xECF0.Keep,
Callback = function(_0x97A1) _0xECF0.Keep = math.floor(_0x97A1) end,
})
_0xDC61(_0xC932, {
_0xE762 ="Drop kalau seed sudah",
Desc ="Contoh 200 & sisakan 50 = drop 150",
Min = 2, Max = 200, Step = 1, Default = _0xECF0.DropAt,
Callback = function(_0x97A1) _0xECF0.DropAt = math.floor(_0x97A1) end,
})
local function _0x6707(_0x615D)
local _0x66F3 = 0
for _0xF439 in pairs(_0x615D) do _0x66F3 += 1 end
return _0x66F3
end
task.spawn(function()
while _0xCA76() do
local _0xE60E, _0x9D38 = _0xECF0.SeedId, _0x927E.blockOfSeed(_0xECF0.SeedId)
local _0xDF0A, _0x80D9 = _0x927E.parseDropTarget()
local _0xF560 = (_0xDF0A ~=""and _0xDF0A or"world ini") .. (_0x80D9 and (" pintu ".. _0x80D9) or"")
.. (_0xECF0.DropX >= 0 and (" (".. _0xECF0.DropX ..",".. _0xECF0.DropY ..")") or"")
local _0x3E00 = table.concat({"Status : ".. (_0xECF0.Running and ("JALAN - fase ".. tostring(_0xECF0.Phase or"-")) or"BERHENTI"),
("Seed   : %s x%d | block %s x%d"):format(_0xE60E and _0x949D(_0xE60E) or"-", _0xE60E and _0xC90B(_0xE60E) or 0,
_0x9D38 and _0x949D(_0x9D38) or"-", _0x9D38 and _0xC90B(_0x9D38) or 0),
("Break  : %s | tile %d"):format(_0xECF0.BreakX >= 0 and ("(".. _0xECF0.BreakX ..",".. _0xECF0.BreakY ..")")
or"belum diatur", _0x6707(_0xECF0.Tiles)),
("Drop   : %s | sisakan %d, drop saat >= %d"):format(_0xECF0.Drop and _0xF560 or"mati", _0xECF0.Keep, _0xECF0.DropAt),"Pola   : panen ready -> ambil block -> break -> tanam",
("Hasil  : panen %d | ambil block %d | tanam %d | di-drop %d"):format(_0xECF0.Harvested,
_0xECF0.BlocksTaken or 0, _0xECF0.Planted, _0xECF0.Dropped),"Panen  : ".. _0xECF0.harvestStatus(),"Aksi   : ".. _0xECF0.Status
.. (_0xECF0.CollectReason and ("\nCollect: ".. _0xECF0.CollectReason) or"")
.. (_0xECF0.DropError and ("\nDrop tertunda: ".. _0xECF0.DropError) or""),
},"\n")
if _0x6FB2.PabrikStatus and _0x3E00 ~= _0xECF0.Shown then
_0xECF0.Shown = _0x3E00
pcall(function() _0x6FB2.PabrikStatus:SetDesc(_0x3E00) end)
endif _0x6FB2.GridMode =="pabrik"and _0x6FB2.GridStart then
_0x6FB2.GridStart.Text = _0xEAC0.T(_0xECF0.Running and"STOP PABRIK"or"START PABRIK")
_0x6FB2.GridStart.BackgroundColor3 = _0xECF0.Running and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(46, 160, 90)
end
task.wait(1)
end
end)
end)() endlocal _0xC778 = {
On = false,
World = true,Server = true,DelaySec = 5,
ScriptUrl ="",
Keep = false,Target ="",LastWorld ="",Last = nil,LastAt = 0,
Busy = false,
Count = 0,
Status ="-",
}
do (function()
local _0xB19F = game:GetService("HttpService")
local _0x7977 = game:GetService("TeleportService")
local _0x9D2E = game:GetService("GuiService")
local _0x86F5 = type(writefile) =="function"and type(readfile) =="function"and type(isfile) =="function"local _0x18F1 ="ZieyHUB/rejoin_".. tostring(_0x8270.UserId) ..".json"task.spawn(function()
while _0xCA76() do
local _0x4DD4 = os.clock()
local _0x3583 = _0x5B75.worldName and _0x5B75.worldName() or""if _0x3583 ~=""and not _0xECF0.Traveling then _0xC778.LastWorld = _0x3583 end
if _0x5B75.anyRunning and _0x5B75.anyRunning() and _0x5B75.Mode =="idle"then
_0xC778.Last = _0x5B75.snapshot()
_0xC778.LastAt = _0x4DD4
elseif _0x4DD4 - _0xC778.LastAt > 3 and _0x5B75.Mode =="idle"and _0x3583 ~=""then_0xC778.Last = nil
end
task.wait(1)
end
end)
local function _0x4253(_0x3A34, _0x3B8B)
_0x5B75.afterEnter()
_0xC778.Count += 1
_0xC778.Status ="Masuk lagi berhasil, lanjut aktivitas"_0x8021("Auto Reconnect", _0x3B8B ..": lanjut aktivitas", 4)
_0x2479.send("rejoin", _0x3B8B .." ke ".. tostring(_0x3A34.world) ..", aktivitas dilanjutkan")
_0x5B75.resumeSaved(_0x3A34)
endlocal function _0xDC93(_0xE842)
if not (_0xC778.On and _0xC778.World) or _0xC778.Busy or _0xECF0.Traveling then return end
if _0x5B75.Mode =="away"or _0x5B75.Mode =="out"then return endlocal _0x3A34 = _0xC778.Last
if not _0x3A34 or _0x3A34.world ==""or os.clock() - _0xC778.LastAt > 10 then return end
_0xC778.Busy = true
task.spawn(function()
_0x5B75.stopAll()
local _0xF5A6 = tostring(_0xE842 or""):gsub("`.","")
_0xC778.Status ="Terlempar dari ".. _0x3A34.world ..". Masuk lagi..."_0x2479.send("rejoin","Terlempar dari world ".. _0x3A34.world .. (_0xF5A6 ~=""and (" (".. _0xF5A6 ..")") or""))
task.wait(_0xC778.DelaySec + 1.5)for try = 1, 3 do
if not (_0xCA76() and _0xC778.On) then break end
local _0xF64E, _0x8599 = _0x5B75.enterWorld(_0x3A34.world)
if _0xF64E then
task.wait(1.5)
_0x4253(_0x3A34,"Masuk lagi")
_0xC778.Busy = false
return
end
_0xC778.Status = ("Gagal masuk (%d/3): %s"):format(try, tostring(_0x8599))
task.wait(10)
end
_0xC778.Status ="Gagal masuk lagi ke ".. _0x3A34.world
_0x8021("Auto Reconnect", _0xC778.Status, 5)
_0x2479.send("rejoin", _0xC778.Status)
_0xC778.Busy = false
end)
endlocal _0xAB4C = false
if _0x7025 and type(_0x5E7F) =="table"and type(_0x5E7F.on) =="function"and type(_0x5E7F.EVENTS) =="table"and _0x5E7F.EVENTS.WorldClosed then
_0xAB4C = pcall(_0x5E7F.on,"WorldClosed", function(_0xE842)
if _0xCA76() then _0xDC93(_0xE842) end
end, function()
local _0x9F6E = _0x1DCC.World
return _0x9F6E and rawget(_0x9F6E,"name") or""end)
end
if not _0xAB4C then
local _0x991A = _0x84AE:FindFirstChild("WorldClosed")
if _0x991A and _0x991A:IsA("RemoteEvent") then
table.insert(_0x3886, _0x991A.OnClientEvent:Connect(function(_0xE842)
if _0xCA76() then _0xDC93(_0xE842) end
end))
end
endfunction _0xC778.targetWorld()
local _0x615D = tostring(_0xC778.Target or""):upper():gsub("[^A-Z0-9]","")
if _0x615D ~=""then return _0x615D end
return _0xC778.LastWorld or""end
local function _0xDE2C(_0x954B, _0x3A34, _0x3B8B)
for try = 1, 3 do
if not _0xCA76() then return false end
local _0xF64E, _0x8599 = _0x5B75.enterWorld(_0x954B)
if _0xF64E then
task.wait(1.5)
if _0x3A34 and _0x3A34.world == _0x954B then
_0x4253(_0x3A34, _0x3B8B)
else
_0x5B75.afterEnter()
_0xC778.Count += 1
_0xC778.Status = _0x3B8B .." ke ".. _0x954B .." berhasil"_0x2479.send("rejoin", _0x3B8B .." ke ".. _0x954B)
end
return true
end
_0xC778.Status = ("Gagal masuk %s (%d/3): %s"):format(_0x954B, try, tostring(_0x8599))
task.wait(8)
end
_0x8021("Auto Rejoin","Gagal masuk ".. _0x954B, 5)
_0x2479.send("rejoin","Gagal masuk ".. _0x954B)
return false
end
function _0xC778.now()
if _0xC778.Busy then
_0x8021("Auto Rejoin","Sedang proses masuk world, tunggu dulu", 3)
return
end
local _0x954B = _0xC778.targetWorld()
if _0x954B ==""then
_0x8021("Auto Rejoin","World tujuan belum ada. Isi 'World tujuan' atau masuk world dulu", 4)
return
end
_0xC778.Busy = true
task.spawn(function()
local _0x3A34 = nil
if _0x5B75.worldName() ~=""then
if _0x5B75.anyRunning() then _0x3A34 = _0x5B75.snapshot() end
_0x5B75.stopAll()
_0xC778.Status ="Keluar world..."if not _0x5B75.leaveWorld() then
_0xC778.Status ="Gagal keluar world"_0x8021("Auto Rejoin", _0xC778.Status, 4)
_0xC778.Busy = false
return
end
task.wait(math.max(2, _0xC778.DelaySec))
end
if _0x3A34 and _0x3A34.world ~= _0x954B then _0x3A34 = nil end_0xC778.Status ="Masuk ke ".. _0x954B .."..."_0xDE2C(_0x954B, _0x3A34,"Rejoin")
_0xC778.Busy = false
end)
end
task.spawn(function()
local _0x35F1 = nil
while _0xCA76() do
task.wait(2)
local _0xDB37 = _0x5B75.worldName() ==""local _0xC42C = _0xC778.On and _0xC778.Keep and not _0xC778.Busy and not _0xC778.Leaving and not _0xECF0.Traveling
and _0x5B75.Mode =="idle"if not (_0xDB37 and _0xC42C) then
_0x35F1 = nil
else
_0x35F1 = _0x35F1 or os.clock()
local _0x954B = _0xC778.targetWorld()
if _0x954B ~=""and os.clock() - _0x35F1 >= _0xC778.DelaySec then
_0x35F1 = nil
_0xC778.Busy = true
local _0x3A34 = _0xC778.Last
if _0x3A34 and (_0x3A34.world ~= _0x954B or os.clock() - _0xC778.LastAt > 600) then _0x3A34 = nil end
_0xC778.Status ="Di luar world, masuk ke ".. _0x954B .."..."_0xDE2C(_0x954B, _0x3A34,"Kembali otomatis")
_0xC778.Busy = false
end
end
end
end)local function _0x8CF1()
local _0x784F = queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
local _0xD8C6 = tostring(_0xC778.ScriptUrl or"")
if type(_0x784F) =="function"and string.sub(_0xD8C6, 1, 8) =="https://"then
pcall(_0x784F, ("loadstring(game:HttpGet(%q))()"):format(_0xD8C6))
return true
end
return false
end
local function _0x91AD(_0xE842)
if not (_0xC778.On and _0xC778.Server) or _0xC778.Leaving then return end
_0xC778.Leaving = true
local _0x3A34 = _0xC778.Last or (_0x5B75.anyRunning() and _0x5B75.snapshot()) or nil
local _0x954B = _0x3A34 and _0x3A34.world or _0x5B75.worldName()
if _0x86F5 and _0x3A34 then
local _0xCB22 = {
_0x954B = _0x3A34.world, farm = _0x3A34.farm, _0x505C = _0x3A34.clear, farmer = _0x3A34.farmer,
spam = _0x3A34.spam, splice = _0x3A34.splice, pabrik = _0x3A34.pabrik, build = _0x3A34.build,
_0x574E = _0x3A34.tx, _0x6912 = _0x3A34.ty, _0xC4F6 = os.time(),
}
pcall(function() writefile(_0x18F1, _0xB19F:JSONEncode(_0xCB22)) end)
end
local _0x78E8 = _0x8CF1()
_0xC778.Status ="Disconnect: rejoin...".. (_0x78E8 and""or" (script tidak di-queue)")
_0x2479.send("rejoin","Disconnect dari server (".. tostring(_0xE842) .."). Rejoin ke ".. (_0x954B ~=""and _0x954B or"game"))
task.spawn(function()
task.wait(_0xC778.DelaySec)
while _0xCA76() do
pcall(function()
_0x7977:Teleport(game.PlaceId, _0x8270, (_0x954B ~="") and { _0x954B = _0x954B } or nil)
end)
task.wait(15)end
end)
end
pcall(function()
table.insert(_0x3886, _0x9D2E.ErrorMessageChanged:Connect(function(_0xE842)
if _0xCA76() and type(_0xE842) =="string"and _0xE842 ~=""then _0x91AD(_0xE842) end
end))
end)function _0xC778.startup(reconnectFn)
if not _0x86F5 then return end
local _0x6192, _0x4A56 = pcall(isfile, _0x18F1)
if not _0x6192 or not _0x4A56 then return end
local _0x1475, _0xCDA3 = pcall(readfile, _0x18F1)
if type(delfile) =="function"then pcall(delfile, _0x18F1) end
if not _0x1475 or type(_0xCDA3) ~="string"then return end
local _0xEB08, _0x3A34 = pcall(_0xB19F.JSONDecode, _0xB19F, _0xCDA3)
if not _0xEB08 or type(_0x3A34) ~="table"or type(_0x3A34.world) ~="string"or _0x3A34.world ==""then return end
if os.time() - (tonumber(_0x3A34.at) or 0) > 15 * 60 then return end_0xC778.Busy = true
_0xC778.Status ="Rejoin: menunggu masuk ".. _0x3A34.worldlocal _0x1981 = os.clock()
local _0xC8B0 = false
while _0xCA76() and os.clock() - _0x1981 < 60 do
if _0x1DCC.World and _0x5B75.worldName() == _0x3A34.world and _0x927E.here() then break end
if not _0x1DCC.World then pcall(reconnectFn) end
if _0x1DCC.World and not _0xC8B0 and os.clock() - _0x1981 > 12 then
_0xC8B0 = true
_0x5B75.enterWorld(_0x3A34.world)
end
task.wait(2)
end
if _0xCA76() and _0x5B75.worldName() == _0x3A34.world then
pcall(reconnectFn)
task.wait(1)
_0x4253(_0x3A34,"Rejoin server")
else
_0xC778.Status ="Rejoin: gagal masuk ".. _0x3A34.world
_0x2479.send("rejoin", _0xC778.Status)
end
_0xC778.Busy = false
end
end)() end
_0x5D2C.add("Reconnect", _0xC778, {"On","World","Server","DelaySec","ScriptUrl","Keep","Target"})
_0x5D2C.add("Discord", _0x2479, {"On","Url","Penjaga","Stop","Full","Bonus","Rejoin","Pabrik","ReportMin"})do (function()
local _0xF04A = { World ="", Id ="", Busy = false, Cancelled = false,
Status ="Isi world dan ID Door, lalu tekan Teleport"}
_0x927E.DoorTravel = _0xF04A
_0x7528.DoorTravel = _0xF04A
_0x5D2C.add("TeleportDoor", _0xF04A, {"World","Id"})
function _0xF04A.parse(_0x954B, _0x2010, _0x3732)
local function _0x0121(_0x09FD) return tostring(_0x09FD or""):match("^%s*(.-)%s*$") end
local _0xDF0A, _0x80D9 = _0x0121(_0x954B), _0x0121(_0x2010)
if _0xDF0A:find(":", 1, true) then
local _0xE034, _0x783C = _0xDF0A:match("^([^:]*):([^:]*)$")
if not _0xE034 then return nil, nil,"Format tujuan harus WORLD:ID"end
_0xE034, _0x783C = _0x0121(_0xE034), _0x0121(_0x783C)
if _0x80D9 ~=""and _0x80D9 ~= _0x783C then return nil, nil,"ID Door di kedua kolom berbeda"end
_0xDF0A, _0x80D9 = _0xE034, _0x783C
end
if _0xDF0A ==""then _0xDF0A = _0x0121(_0x3732) end
_0xDF0A = _0xDF0A:upper()
if _0xDF0A ==""then return nil, nil,"Isi nama world tujuan dulu"end
if _0xDF0A:find("[^A-Z0-9]") then return nil, nil,"Nama world hanya boleh huruf dan angka"end
if _0x80D9 ==""then return nil, nil,"Isi ID Door tujuan dulu"end
if _0x80D9:find("[%s%c:]") then return nil, nil,"ID Door tidak boleh berisi spasi atau titik dua"end
return _0xDF0A, _0x80D9
end
function _0xF04A.status(_0xF55F)
_0xF04A.Status = _0xF55F
if _0x6FB2.DoorStatus then pcall(function() _0x6FB2.DoorStatus:SetDesc(_0xF55F) end) end
end
function _0xF04A.perform(_0xDF0A, _0x2010, _0x962E)
if not _0x962E() then return false,"Perjalanan dibatalkan"end_0x5B75.Token = (_0x5B75.Token or 0) + 1
_0x5B75.Saved, _0x5B75.Mode, _0x5B75.CalmAt, _0x5B75.BackText = nil,"idle", nil, nil
_0xC778.Last, _0xC778.LastAt = nil, os.clock()
_0x5B75.stopAll()
if _0x5B75.worldName() ~=""then
_0xF04A.status("Keluar world untuk menuju ".. _0xDF0A ..":".. _0x2010)
if not _0x5B75.leaveWorld() then return false,"Gagal keluar world lewat menu game"end
local _0xE7AB = os.clock() + 2
while os.clock() < _0xE7AB do
if not _0x962E() then return false,"Perjalanan dibatalkan"end
task.wait(0.1)
end
end
if not _0x962E() then return false,"Perjalanan dibatalkan"end
local _0x9F6E = _0x1DCC.World
if not _0x9F6E then return false,"Data world terputus; tekan Hubungkan ke game"end
local _0xC242 = rawget(_0x9F6E,"arriveDoor")
rawset(_0x9F6E,"arriveDoor", _0x2010)local _0xF64E, _0xE2E6, _0xF55F = pcall(function()
_0xF04A.status("Masuk ".. _0xDF0A .." lewat ID Door ".. _0x2010 .."...")
local _0x43A1, _0x8599 = _0x5B75.enterWorld(_0xDF0A, _0x962E)
if not _0x962E() then return false,"Perjalanan dibatalkan"end
if not _0x43A1 then return false, tostring(_0x8599 or"Gagal masuk world") end
local _0x4B13, _0x91BD = os.clock() + 5, false
repeat
if not _0x962E() then return false,"Perjalanan dibatalkan"end
local _0x5E96 = _0x1DCC.World
if _0x5E96 and _0x5B75.worldName() == _0xDF0A and type(rawget(_0x5E96,"fg")) =="table"and _0x927E.here() ~= nil then
_0x91BD = true
break
end
task.wait(0.1)
until os.clock() >= _0x4B13
if not _0x91BD then return false,"World tujuan belum termuat; periksa nama world dan aksesnya"endlocal _0xE7AB = os.clock() + 0.5
while os.clock() < _0xE7AB do
if not _0x962E() then return false,"Perjalanan dibatalkan"end
task.wait(0.1)
end
pcall(_0x5B75.afterEnter)
return true,"World ".. _0xDF0A .." dimuat; ID Door ".. _0x2010 .." diminta"end)if rawget(_0x9F6E,"arriveDoor") == _0x2010 then rawset(_0x9F6E,"arriveDoor", _0xC242) end
if not _0xF64E then return false, tostring(_0xE2E6) end
return _0xE2E6, _0xF55F
end
function _0xF04A.start()
if _0xF04A.Busy then return false,"Perpindahan masih berjalan"end
if _0xC778.Busy or _0xECF0.Traveling then
_0xF04A.status("Tunggu proses pindah world yang sedang berjalan selesai")
return false, _0xF04A.Status
end
local _0xDF0A, _0x2010, _0x8599 = _0xF04A.parse(_0xF04A.World, _0xF04A.Id, _0x5B75.worldName())
if not _0xDF0A then
_0xF04A.status(_0x8599)
_0x8021("Teleport ID Door", _0x8599, 4)
return false, _0x8599
end
local _0x9F6E, _0x638E = _0x1DCC.World, _0x1DCC.Menu
if not _0x9F6E or not ((_0x638E and type(rawget(_0x638E,"enter")) =="function")
or type(rawget(_0x9F6E,"enter")) =="function") then
_0xF04A.status("Fungsi masuk world belum terbaca; tekan Hubungkan ke game")
return false, _0xF04A.Status
end
_0xF04A.Busy, _0xF04A.Cancelled, _0xC778.Busy = true, false, true
_0xF04A.status("Menyiapkan tujuan ".. _0xDF0A ..":".. _0x2010)
task.spawn(function()
local function _0x962E() return _0xCA76() and not _0xF04A.Cancelled end
local _0xF64E, _0xE2E6, _0xF55F = pcall(_0xF04A.perform, _0xDF0A, _0x2010, _0x962E)
_0xF04A.Busy, _0xC778.Busy = false, false
if not _0xCA76() then return end
if _0xF04A.Cancelled then
_0xF04A.status("Perjalanan dibatalkan")
elseif not _0xF64E or not _0xE2E6 then
_0xF04A.status("Gagal: ".. tostring(_0xF64E and _0xF55F or _0xE2E6))
_0x8021("Teleport ID Door", _0xF04A.Status, 5)
else
_0xC778.LastWorld = _0xDF0A
_0xF04A.status(_0xF55F)
_0x8021("Teleport ID Door", _0xF55F, 5)
end
end)
return true
end
function _0xF04A.cancel()
if not _0xF04A.Busy then return end
_0xF04A.Cancelled = true
_0xF04A.status("Membatalkan perjalanan...")
end
_0xEE48(function()
local _0xDF65 = _0x4AF3("Teleport ID Door","door-open","fitur")
_0x6FB2.DoorStatus = _0xDF65:Paragraph({ _0xE762 ="Status ID Door", Desc = _0xF04A.Status })
local _0x81CA = _0xC06B(_0xDF65,"Tujuan", true)
_0xEE48(function()
_0x81CA:Input({
_0xE762 ="World tujuan",
Desc ="Kosong = world saat ini. Bisa juga WORLD:ID",
Value = _0xF04A.World,
Placeholder ="Contoh: NAMAWORLD",
Callback = function(_0xF5A6) _0xF04A.World = tostring(_0xF5A6 or"") end,
})
end)
_0xEE48(function()
_0x81CA:Input({
_0xE762 ="ID Door",
Desc ="ID pintu tujuan, mengikuti tulisan di game",
Value = _0xF04A.Id,
Placeholder ="Contoh: FARM1",
Callback = function(_0xF5A6) _0xF04A.Id = tostring(_0xF5A6 or"") end,
})
end)
_0xEE48(function()
_0x81CA:Button({
_0xE762 ="Teleport ke ID Door",
Desc ="Hentikan aktivitas otomatis, lalu masuk lewat pintu tujuan",
Callback = function() _0x6FB2.later("doorTravel", _0xF04A.start) end,
})
end)
_0xEE48(function()
_0x81CA:Button({ _0xE762 ="Batal", Callback = _0xF04A.cancel })
end)
_0xDF65:Paragraph({
_0xE762 ="Cara pakai",
Desc ="Isi world dan ID pintu yang sudah dipasang di game. Kosongkan world untuk memakai world ini. Setelah masuk, periksa lokasi kedatangan.",
})
end)
end)() enddo (function()
local _0xAF79 = _0x4AF3("Titik Drop","map-pin","farm")
_0xEE48(function()
_0x6FB2.DropPointStatus = _0xAF79:Paragraph({ _0xE762 ="Titik Drop", Desc ="-"})
end)
local _0x0796 = _0xC06B(_0xAF79,"Atur titik drop", true)
_0xEE48(function()
_0x6FB2.DropWorldInput = _0x0796:Input({
_0xE762 ="World drop",
Desc ="Kosong = world ini | WORLD | WORLD:ID (masuk lewat pintu ID)",
Value = _0xECF0.DropWorld,
Placeholder ="STORAGE:1",
Callback = function(_0x615D) _0xECF0.DropWorld = tostring(_0x615D or"") end,
})
end)
_0xEE48(function()
_0x0796:Button({
_0xE762 ="Pakai posisi sekarang untuk drop",
Desc ="Berdiri di tempat drop (boleh di world lain), lalu tekan",
Callback = function()
local _0x5409, _0x6665 = _0x927E.here()
if not _0x5409 then
_0x8021("Titik Drop","Kamu belum masuk world", 3)
return
end
_0xECF0.DropX, _0xECF0.DropY = _0x5409, _0x6665if not string.find(_0xECF0.DropWorld or"",":", 1, true) then
_0xECF0.DropWorld = _0x5B75.worldName()
if _0x6FB2.DropWorldInput then pcall(function() _0x6FB2.DropWorldInput:Set(_0xECF0.DropWorld) end) end
end
_0x8021("Titik Drop", ("Posisi drop (%d,%d) di %s"):format(_0x5409, _0x6665, _0xECF0.DropWorld), 4)
end,
})
end)
_0xEE48(function()
_0x0796:Button({
_0xE762 ="Hapus posisi drop",
Desc ="Drop di titik kedatangan (pintu) saja",
Callback = function()
_0xECF0.DropX, _0xECF0.DropY = -1, -1
_0x8021("Titik Drop","Posisi drop dihapus", 3)
end,
})
end)
task.spawn(function()
while _0xCA76() do
local _0xDF0A, _0x80D9 = _0x927E.parseDropTarget()
local _0x3732 = _0x5B75.worldName()
local _0xE038
if _0xECF0.DropX < 0 and not _0x80D9 and (_0xDF0A ==""or _0xDF0A == _0x3732) then
_0xE038 ="belum diatur"else
_0xE038 = (_0xDF0A ~=""and _0xDF0A or"world ini") .. (_0x80D9 and (" pintu ".. _0x80D9) or"")
.. (_0xECF0.DropX >= 0 and (" (".. _0xECF0.DropX ..",".. _0xECF0.DropY ..")") or" (titik kedatangan)")
end
local _0x3E00 = table.concat({"Titik  : ".. _0xE038,"Dipakai: Pabrik (seed) & Auto Farm (otomatis saat item ~190)",
("Di-drop: Pabrik %d | Auto Farm %d"):format(_0xECF0.Dropped, _0x5D82.Dropped),"Catatan: drop di titik ini tidak di-collect lagi",
},"\n")
if _0x6FB2.DropPointStatus and _0x3E00 ~= _0x6FB2.DropPointShown then
_0x6FB2.DropPointShown = _0x3E00
pcall(function() _0x6FB2.DropPointStatus:SetDesc(_0x3E00) end)
end
task.wait(1)
end
end)
end)() endlocal _0xA2E1 = _0x4AF3("Koneksi","plug","setel")
_0xEE48(function()
_0x6FB2.RefInfo = _0xA2E1:Paragraph({ _0xE762 ="Referensi game", Desc ="-"})
end)
_0x49B4.ConnMain = _0xC06B(_0xA2E1,"Koneksi", true)
_0x49B4.ConnCfg = _0xC06B(_0xA2E1,"Config", true)
_0x49B4.ConnCalib = _0xC06B(_0xA2E1,"Koreksi posisi", false)
_0x49B4.ConnLang = _0xC06B(_0xA2E1,"Bahasa / Language", false)
local function _0x3222(show)if _0xD222.Running then _0xD467("Dihentikan: hubungkan ulang ke game") end
if _0x9715.Running then _0x34F2("Dihentikan: hubungkan ulang ke game") end
_0x927E.resetReach()if pcall(_0x7FB6.quickRefs) and _0x1DCC.Inv then
_0x6FB2.checkInventory(true, true)
task.wait()end_0xE6B1()
_0x86C8.bindMenu()
_0x61C2()
_0x6FB2.checkInventory(true, true)_0x1761(true)
_0x2FB0.LastError = nil
_0x927E.findTreeRefs()
table.clear(_0x6663)
_0x7FB6.fn, _0x7FB6.idx = nil, nil
pcall(_0x7FB6.findFast)
if _0x5D82.LiteMode then _0xE522(true) end
if _0xFA1E.InfJump then _0xE9A3() end
pcall(function() _0x6FB2.RefInfo:SetDesc(_0xF8D8()) end)
_0xBD39()
if show then _0x8021(show, _0xF8D8(), 5) end
end
_0xEE48(function()
_0x49B4.ConnMain:Button({
_0xE762 ="Hubungkan ke game",
Desc ="Pakai setelah pindah world",
Callback = function()
_0x6FB2.later("reconnect", function() _0x3222("Koneksi") end)
end,
})
end)
_0xEE48(function()
_0x6FB2.ConfigStatus = _0x49B4.ConnCfg:Paragraph({ _0xE762 ="Status", Desc = _0x5D2C.Status })
end)
_0xEE48(function()
_0x49B4.ConnCfg:Toggle({
_0xE762 ="Auto Save Config",
Desc ="Simpan pengaturan otomatis, dimuat lagi saat execute",
Value = _0x5D2C.AutoSave,
Callback = function(_0x4A01)
_0x5D2C.AutoSave = _0x4A01
_0x5D2C.save(true)end,
})
end)
_0xEE48(function()
_0x49B4.ConnCfg:Button({
_0xE762 ="Simpan config sekarang",
Callback = function()
local _0xF64E = _0x5D2C.save(true)
_0x8021("Config", _0xF64E and"Tersimpan"or _0x5D2C.Status, 3)
end,
})
end)
_0xEE48(function()
_0x49B4.ConnCfg:Button({
_0xE762 ="Reset config (default)",
Desc ="Hapus file config, lalu execute ulang",
Callback = function()
_0x5D2C.reset()
_0x8021("Config", _0x5D2C.Status, 4)
end,
})
end)
_0xEE48(function()
_0x49B4.ConnLang:Dropdown({
_0xE762 ="Bahasa / Language",
Desc ="Ganti bahasa, lalu execute ulang",
Values = {"Indonesia","English"},
Value = _0xEAC0.Saved =="en"and"English"or"Indonesia",
Callback = function(_0x97A1)
local _0xA627 = (_0x97A1 =="English") and"en"or"id"if _0xA627 == _0xEAC0.Saved then return end
_0xEAC0.Saved = _0xA627
_0x5D2C.save(true)
_0x8021("Bahasa / Language","Execute ulang untuk ganti bahasa / Re-execute to apply", 5)
end,
})
end)
_0xEE48(function()
_0x49B4.ConnLang:Toggle({
_0xE762 ="Tanya bahasa saat execute",
Desc ="Pilihan muncul setelah menu terbuka; pergantian bahasa berlaku saat execute ulang",
Value = _0xEAC0.Ask,
Callback = function(_0x4A01) _0xEAC0.Ask = _0x4A01 end,
})
end)
_0xEE48(function()
_0x49B4.ConnCalib:Input({
_0xE762 ="Koreksi posisi X",
Desc ="Isi 1 / -1 kalau tile meleset",
Value = tostring(_0x5D82.CalibX),
Callback = function(_0xF5A6) _0x5D82.CalibX = tonumber(_0xF5A6) or 0 end,
})
end)
_0xEE48(function()
_0x49B4.ConnCalib:Input({
_0xE762 ="Koreksi posisi Y",
Value = tostring(_0x5D82.CalibY),
Callback = function(_0xF5A6) _0x5D82.CalibY = tonumber(_0xF5A6) or 0 end,
})
end)do (function()
local _0xF8B1 = _0xC06B(_0xA2E1,"Auto Reconnect", false)
_0xEE48(function()
_0x6FB2.RejoinStatus = _0xF8B1:Paragraph({ _0xE762 ="Status", Desc = _0xC778.Status })
end)
_0xEE48(function()
_0xF8B1:Toggle({
_0xE762 ="Auto Reconnect",
Desc ="Masuk lagi & lanjut aktivitas kalau terlempar",
Value = _0xC778.On,
Callback = function(_0x4A01) _0xC778.On = _0x4A01 end,
})
end)
_0xEE48(function()
_0xF8B1:Toggle({
_0xE762 ="Terlempar dari world",
Desc ="World ditutup / di-kick: masuk lagi ke world yang sama",
Value = _0xC778.World,
Callback = function(_0x4A01) _0xC778.World = _0x4A01 end,
})
end)
_0xEE48(function()
_0xF8B1:Toggle({
_0xE762 ="Selalu kembali ke world",
Desc ="Kalau berada di luar world (layar pilih world), masuk lagi otomatis",
Value = _0xC778.Keep,
Callback = function(_0x4A01) _0xC778.Keep = _0x4A01 end,
})
end)
_0xEE48(function()
_0xF8B1:Input({
_0xE762 ="World tujuan",
Desc ="Kosongkan = world terakhir yang kamu masuki",
Value = _0xC778.Target,
Placeholder ="NAMAWORLD",
Callback = function(_0xF5A6) _0xC778.Target = tostring(_0xF5A6 or"") end,
})
end)
_0xEE48(function()
_0xF8B1:Button({
_0xE762 ="Rejoin world sekarang",
Desc ="Keluar lalu masuk lagi, aktivitas dilanjutkan",
Callback = function() _0xC778.now() end,
})
end)
_0xEE48(function()
_0xF8B1:Toggle({
_0xE762 ="Disconnect dari server",
Desc ="Teleport ulang ke game lalu masuk world terakhir",
Value = _0xC778.Server,
Callback = function(_0x4A01) _0xC778.Server = _0x4A01 end,
})
end)
_0xDC61(_0xF8B1, {
_0xE762 ="Jeda sebelum masuk lagi (detik)",
Min = 2, Max = 60, Step = 1, Default = _0xC778.DelaySec,
Callback = function(_0x97A1) _0xC778.DelaySec = math.floor(_0x97A1) end,
})
_0xEE48(function()
_0xF8B1:Input({
_0xE762 ="URL script (untuk rejoin server)",
Desc ="Link raw script ini, supaya jalan lagi setelah teleport. Kosong = pakai autoexec",
Value = _0xC778.ScriptUrl,
Placeholder ="https://...",
Callback = function(_0xF5A6)
_0xC778.ScriptUrl = tostring(_0xF5A6 or""):gsub("^%s+",""):gsub("%s+$","")
end,
})
end)
end)() enddo (function()
local _0x7512 = _0x4AF3("Discord","bell","setel")
_0xEE48(function()
_0x6FB2.HookStatus = _0x7512:Paragraph({ _0xE762 ="Status", Desc = _0x2479.Status })
end)
local _0x122D = _0xC06B(_0x7512,"Webhook", true)
local _0x069B = _0xC06B(_0x7512,"Yang dikirim", false)
_0xEE48(function()
_0x122D:Toggle({
_0xE762 ="Notifikasi Discord",
Desc ="Kirim kabar penting ke channel Discord kamu",
Value = _0x2479.On,
Callback = function(_0x4A01) _0x2479.On = _0x4A01 end,
})
end)
_0xEE48(function()
_0x122D:Input({
_0xE762 ="URL Webhook",
Desc ="Channel Discord > Edit > Integrasi > Webhook > Salin URL",
Value = _0x2479.Url,
Placeholder ="https://discord.com/api/webhooks/...",
Callback = function(_0xF5A6)
_0xF5A6 = tostring(_0xF5A6 or""):gsub("^%s+",""):gsub("%s+$","")
_0x2479.Url = _0xF5A6
if _0xF5A6 ~=""and not _0x2479.valid(_0xF5A6) then
_0x8021("Discord","URL webhook tidak valid", 4)
end
end,
})
end)
_0xEE48(function()
_0x122D:Button({
_0xE762 ="Tes kirim",
Callback = function()
if not _0x2479.valid(_0x2479.Url) then
_0x8021("Discord","Isi URL webhook dulu", 3)
return
end
local _0x4943 = _0x2479.On
_0x2479.On = true
_0x2479.send("test","Tes notifikasi dari ziey HUB")
_0x2479.On = _0x4943
_0x8021("Discord","Pesan tes masuk antrian", 3)
end,
})
end)
_0xDC61(_0x122D, {
_0xE762 ="Laporan statistik (menit)",
Desc ="Kirim statistik sesi tiap X menit. 0 = mati",
Min = 0, Max = 180, Step = 5, Default = _0x2479.ReportMin,
Callback = function(_0x97A1) _0x2479.ReportMin = math.floor(_0x97A1) end,
})
for _0xF439, item in ipairs({
{"Penjaga","Mod / Dev / pemain masuk world"},
{"Stop","Aktivitas berhenti (block habis / error)"},
{"Full","Inventori penuh"},
{"Bonus","Quest diklaim / redeem berhasil"},
{"Rejoin","Terlempar / disconnect / masuk lagi"},
{"Pabrik","Pabrik drop seed / Dirt Farm selesai / berhenti"},
}) do
_0xEE48(function()
_0x069B:Toggle({
_0xE762 = item[2],
Value = _0x2479[item[1]],
Callback = function(_0x4A01) _0x2479[item[1]] = _0x4A01 end,
})
end)
end
end)() enddo
task.spawn(function()
while _0xCA76() do
local _0xF64E, _0x8599 = pcall(_0x6FB2.runJobs)
if not _0xF64E then warn("[ziey HUB] UI runner: ".. tostring(_0x8599)) end
task.wait(0.1)
end
end)
end
task.spawn(function()
_0x3222("ziey HUB v1.9")if _0x5D2C.saved("Penjaga","On") == true and _0xCA76() then
if _0x6FB2.GuardToggle then pcall(function() _0x6FB2.GuardToggle:Set(true) end) end
if not _0x5B75.On then _0x5B75.set(true) end
end
_0x5D2C.start()_0xC778.startup(_0x3222)
end)
task.spawn(function()
while _0xCA76() do
if not _0x5D82.Running then _0xBD39() end
_0x927E.updateClearStatus()
_0x927E.updateFarmerStatus()
_0x6E64()
if _0x6FB2.ConfigStatus and _0x5D2C.Status ~= _0x5D2C.Shown then
_0x5D2C.Shown = _0x5D2C.Status
pcall(function() _0x6FB2.ConfigStatus:SetDesc(_0x5D2C.Status) end)
end
local _0xB109 = ("%s\nWorld tujuan: %s\nBerhasil masuk lagi: %d kali"):format(
_0xC778.Status, (_0xC778.targetWorld and _0xC778.targetWorld() ~="") and _0xC778.targetWorld() or"-", _0xC778.Count)
if _0x6FB2.RejoinStatus and _0xB109 ~= _0xC778.Shown then
_0xC778.Shown = _0xB109
pcall(function() _0x6FB2.RejoinStatus:SetDesc(_0xB109) end)
end
local _0xA7DD = ("%s\nAntrian: %d pesan"):format(_0x2479.Status, #_0x2479.Queue)
if _0x6FB2.HookStatus and _0xA7DD ~= _0x2479.Shown then
_0x2479.Shown = _0xA7DD
pcall(function() _0x6FB2.HookStatus:SetDesc(_0xA7DD) end)
end
task.wait(1)
end
end)_0x7528.Cleanup = function()
_0x7528.CloseBoot()
if _0x7528.DoorTravel then _0x7528.DoorTravel.cancel() end
_0x5D82.Running = false
_0xD222.Running = false
_0x9715.Running = false
_0x4BB9.On = false
if _0x5D2C.AutoSave then pcall(_0x5D2C.save, false) end_0x5B75.On = false
_0xE679.Quest, _0xE679.Redeem = false, false
_0x009B.Auto = false
_0xD808.Running = false
_0xC778.On = false
_0xECF0.Running = false
_0x3F90.Running = false
_0x5D82.Override = nil
pcall(_0x927E.stopWalk)
_0x86C8.active = false
pcall(_0x927E.releaseInput)
for _0xF439, _0x5B56 in ipairs(_0x3886) do pcall(function() _0x5B56:Disconnect() end) end_0xFA1E.CustomName = false
pcall(_0xDBB5)pcall(_0xE522, false)
pcall(_0x6642)
_0x86C8.unbindMenu()
if _0xA5D7.EmptyRemotes then pcall(function() _0xA5D7.EmptyRemotes:Destroy() end) end
if _0x1DCC.World then
if _0xFA1E.Ghost then pcall(function() _0x1DCC.World.ghost = false end) end
if _0xFA1E.Speed ~= 100 then pcall(function() _0x1DCC.World.speedScale = 1 end) end
end
pcall(function() _0xD501:Destroy() end)
pcall(function() _0xCB68:Destroy() end)
pcall(function() _0xA661:Destroy() end)
end
_0x7528.Ready = true
_0x7528.CloseBoot()
if _0xEAC0.Ask then
task.defer(function()
if not _0xCA76() then return end
pcall(function()
local function _0xA6BA(_0xA627)
if _0xA627 == _0xEAC0.Saved then return end
_0xEAC0.Saved = _0xA627
_0x5D2C.save(true)
_0x8021("Bahasa / Language","Execute ulang untuk ganti bahasa / Re-execute to apply", 5)
end
_0xAA36:Popup({
_0xE762 ="Bahasa / Language",
Content ="Menu sudah terbuka. Pilih bahasa untuk execute berikutnya.",
Buttons = {
{ _0xE762 ="Indonesia", Callback = function() _0xA6BA("id") end },
{ _0xE762 ="English", Callback = function() _0xA6BA("en") end },
},
})
end)
end)
end
end, function(_0xF55F)
if debug and type(debug.traceback) =="function"then return debug.traceback(tostring(_0xF55F), 2) end
return tostring(_0xF55F)
end)
if not _0x339D then _0x7528.FailStartup(_0x4DDC) end