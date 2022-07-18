
-- Log Detection 
-- Put at the VERY START OF SCRIPT in GLOBAL 
gg.setVisible(false) 
testnet=gg.makeRequest("http://whatismyip.org/").content 
    if testnet == nil then 
   gg.alert("× Internet Access Required ×\n\n× Restart Script and Allow Internet Access","EXIT",nil,"GOODBYE")
   print("×•×•×•×•×•×•×•×•×•×•×•×•×\n\n• INVICTUS SCRIPTS\n• Demon Slayer GG • <DEMONVIC> \n• Squad Rat\n• BlackStarX19\n• Mohamed (A.R)\n• Hackerboy\n\n× × × HACKING IS THE GAME × × ×")
   gg.setVisible(true) 
   os.exit() 
    return end 
INTER=gg.makeRequest("http://whatismyip.org/").headers["Date"][1]
OSEC=os.date("%s")  
INTER2=string.match(INTER,  "%d+:%d+:%d+")
INTER3=INTER2:gsub(":",'') 
INTER4=string.match(INTER2, "%d+:") 
INTER5=INTER4:gsub(":",'')
SH=INTER5*60*60
INTER6=string.match(INTER2, ":%d+:")
INTER7=INTER6:gsub(":",'') 
SM=INTER7*60
INTER8=string.match(INTER2, ":%d+:%d+")
INTER9=string.match(INTER8, "%d+:%d+")
INTER10=string.match(INTER9, ":%d+") 
INTER11=INTER10:gsub(":",'')
SS=INTER11
ST=SH+SM+SS
SCOMP=OSEC-ST
 gg.toast("please wait") 
 xx=0 zz=0 yy=5
 gg.clearResults() 
gg.searchNumber("0",gg.TYPE_DWORD) 
t1=gg.getResults(2000)
    for i,v in ipairs(t1) do v.value = '0' end
gg.clearResults() 
while zz<5 do
gg.toast("Please Wait  [ "..yy.." ]")
    while xx<100 do 
    gg.setValues(t1)
    xx=xx+1
    end   
zz=zz+1 xx=0 yy=yy-1 
end 
INTERa=gg.makeRequest("http://whatismyip.org/").headers["Date"][1]
OSECa=os.date("%s") 
INTER2a=string.match(INTERa,  "%d+:%d+:%d+")
INTER3a=INTER2a:gsub(":",'')
INTER4a=string.match(INTER2a, "%d+:") 
INTER5a=INTER4a:gsub(":",'')
SHa=INTER5a*60*60
INTER6a=string.match(INTER2a, ":%d+:")
INTER7a=INTER6a:gsub(":",'') 
SMa=INTER7a*60
INTER8a=string.match(INTER2a, ":%d+:%d+")
INTER9a=string.match(INTER8a, "%d+:%d+")
INTER10a=string.match(INTER9a, ":%d+") 
INTER11a=INTER10a:gsub(":",'')
SSa=INTER11a
STa=SHa+SMa+SSa
SCOMPa=OSECa-STa
TCOMP=SCOMP-SCOMPa 
    if TCOMP >= 2 then  
    gg.alert("× RAT DETECTED ×\n\n× Do Not Log Script ×","EXIT",nil,"GOODBYE") 
    print("×•×•×•×•×•×•×•×•×•×•×•×•×\n\n• INVICTUS SCRIPTS\n• Demon Slayer GG • <DEMONVIC> \n• Squad Rat\n• BlackStarX19\n• Mohamed (A.R)\n• Hackerboy\n\n× × × HACKING IS THE GAME × × ×")
    gg.setVisible(true) 
    os.exit() 
    return end   
    if TCOMP <= -2 then 
    gg.alert("× LOGGING DETECTED ×\n\n× Do Not Log Script ×","EXIT",nil,"GOODBYE") 
    print("×•×•×•×•×•×•×•×•×•×•×•×•×\n\n• INVICTUS SCRIPTS\n• Demon Slayer GG • <DEMONVIC> \n• Squad Rat\n• BlackStarX19\n• Mohamed (A.R)\n• Hackerboy\n\n× × × HACKING IS THE GAME × × ×")
    gg.setVisible(true) 
    os.exit() 
    return end 
    
 -- no log detected - continue to script menu
    



Date=19       -- Expiry date
Month=7       -- Expiry month 
Year=2022     -- Expiry year
expiremessage="Script has expired. New version available"  --Expiry message 
--This script will expire on 15/05/2020

--Do not change below code 
function check(t) 
if t<10 then t="0"..t end
return t
end
expiredate=Year.. check(Month).. check(Date)
date=gg.makeRequest("http://www.guimp.com").headers["Date" ][1]  --guimp.com is smallest webpage so takes less time for loading 
month={"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
for i=1,12 do
 if month[i]==string.sub(date,9, 11) then
      if i<10 then
       i="0"..i 
      end 
 currentdate=string.sub(date,13, 16)..i..string.sub(date,6, 7)  
 end
end
if tonumber(currentdate)>=tonumber(expiredate) then gg.alert(expiremessage) os.exit() end 







local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
	if n == lib then
		return startAddress, endAddress
	end
	local ranges = gg.getRangesList(lib or 'libil2cpp.so')
	for i, v in ipairs(ranges) do
		if v.state == "Xa" then
			startAddress = v.start
			endAddress = ranges[#ranges]['end']
			break
		end
	end
	return startAddress, endAddress
end

local function Patch(libname, offset, hex)
	name(libname)
	local t, total = {}, 0
	for h in string.gmatch(hex, "%S%S") do
	    table.insert(t, {
	        address = startAddress + offset + total,
	        flags = gg.TYPE_BYTE,
	        value = h .. "r"
	    })
	    total = total + 1
	end
	local res = gg.setValues(t)
	if type(res) ~= 'string' then
		return true
	else
		gg.alert(res)
		return false
	end
end


-- Field Offset Finder

function valueFromClass(class, offset, tryHard, bit32, valueType)
Get_user_input = {}
Get_user_input[1] = class
Get_user_input[2] = offset
Get_user_input[3] = tryHard
Get_user_input[4] = bit32
Get_user_type = valueType
start()
end


function loopCheck()
if userMode == 1 then
UI()
elseif error == 3 then
stopClose()
end
end






function found_(message)
if error == 1 then
found2(message)
elseif error == 2 then
found3(message)
elseif error == 3 then
found4(message)
else
found(message)
end
end





function found(message)
if count == 0 then
gg.clearResults()
gg.clearList()
first_error = message
error = 1
second_start()
end
end





function found2(message)
if count == 0 then
gg.clearResults()
gg.clearList()
second_error = message
error = 2
third_start()
end
end





function found3(message)
if count == 0 then
gg.clearResults()
gg.clearList()
third_error = message
error = 3
fourth_start()
end
end





function found4(message)
if count == 0 then
gg.clearResults()
gg.clearList()
gg.alert("Value Not Found")
gg.setVisible(true)
loopCheck()
end
end





function user_input_taker()
::stort::
gg.clearResults()
if userMode == 1 then
if Get_user_input == nil then
default1 = "WeaponDefData"
default2 = "0x148"
default3 = false
default4 = false
else
default1 =Get_user_input[1]
default2 = Get_user_input[2]
default3 = Get_user_input[3]
default4 = Get_user_input[4]
end
Get_user_input = gg.prompt(
{"Class Name: ", "Offset: ","Try Harder --(decreases accuracy)","Try For 32 bit"},
{default1,default2,default3,default4},
{"text","text","checkbox","checkbox"})
if Get_user_input ~= nil then
if (Get_user_input[1] == "") or (Get_user_input[2] == "") then
gg.alert(" Don't Leave Input Blank️")
goto stort
end
else
gg.alert(" Error : Try again ")
goto stort
end
Get_user_type = gg.choice({"1. Byte / Boolean","2. Dword / 32 bit Int","3. Qword / 64 bit Int","4. Float","5. Double"},nil," Choose The Output Type ️")
if Get_user_type == 1 then
Get_user_type = gg.TYPE_BYTE
elseif Get_user_type == 2 then
Get_user_type = gg.TYPE_DWORD
elseif Get_user_type == 3 then
Get_user_type = gg.TYPE_QWORD
elseif Get_user_type == 4 then
Get_user_type = gg.TYPE_FLOAT
elseif Get_user_type == 5 then
Get_user_type = gg.TYPE_DOUBLE
end
if Get_user_type ~= gg.TYPE_BYTE then
if (Get_user_input[2] % 4) ~= 0 then
gg.alert("Hex Offset Must Be A Multiple Of 4️")
goto stort
end
end
end
error = 0 
end






function O_initial_search()
gg.setVisible(false)
user_input = ":"..Get_user_input[1] 
if Get_user_input[3] then
offst = 25
else
offst = 0
end
end






function O_dinitial_search()
if error > 1 then
gg.setRanges(gg.REGION_C_ALLOC)
else
gg.setRanges(gg.REGION_OTHER)
end
gg.searchNumber(user_input, gg.TYPE_BYTE)
count = gg.getResultsCount()
if count == 0 then
found_("O_dinitial_search")
return 0
end
Refiner = gg.getResults(1)
gg.refineNumber(Refiner[1].value, gg.TYPE_BYTE)
count = gg.getResultsCount()
if count == 0 then
found_("O_dinitial_search")
return 0
end
val = gg.getResults(count)
gg.addListItems(val)
end






function CA_pointer_search()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.loadResults(gg.getListItems())
gg.searchPointer(offst)
count = gg.getResultsCount()
if count == 0 then
found_("CA_pointer_search")
return 0
end
vel = gg.getResults(count)
gg.clearList()
gg.addListItems(vel)
end






function CA_apply_offset()
if Get_user_input[4] then
tanker = 0xfffffffffffffff8
else
tanker = 0xfffffffffffffff0
end
local copy = false
local l = gg.getListItems()
if not copy then gg.removeListItems(l) end
for i, v in ipairs(l) do
	v.address = v.address + tanker
	if copy then v.name = v.name..' #2' end
end
gg.addListItems(l)
end

function CA2_apply_offset()
if Get_user_input[4] then
tanker = 0xfffffffffffffff8
else
tanker = 0xfffffffffffffff0
end
local copy = false
local l = gg.getListItems()
if not copy then gg.removeListItems(l) end
for i, v in ipairs(l) do
	v.address = v.address + tanker
	if copy then v.name = v.name..' #2' end
end
gg.addListItems(l)
end






function Q_apply_fix()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.loadResults(gg.getListItems())
gg.clearList()
count = gg.getResultsCount()
if count == 0 then
found_("Q_apply_fix")
return 0
end
yy = gg.getResults(1000)
gg.clearResults()
i = 1
c = 1
s = {}
while (i-1) < count do
yy[i].address = yy[i].address + 0xb400000000000000
gg.searchNumber(yy[i].address, gg.TYPE_QWORD)
cnt = gg.getResultsCount()
if 0 < cnt then
bytr = gg.getResults(cnt)
n = 1
while (n-1) < cnt do
s[c] = {}
s[c].address = bytr[n].address
s[c].flags = 32
n = n + 1
c = c + 1
end
end
gg.clearResults()
i = i + 1
end
gg.addListItems(s)
end






function A_base_value()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.loadResults(gg.getListItems())
gg.clearList()
gg.searchPointer(offst)
count = gg.getResultsCount()
if count == 0 then
found_("A_base_value")
return 0
end
tel = gg.getResults(count)
gg.addListItems(tel)
end






function A_base_accuracy()
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.loadResults(gg.getListItems())
gg.clearList()
gg.searchPointer(offst)
count = gg.getResultsCount()
if count == 0 then
found_("A_base_accuracy")
return 0
end
kol = gg.getResults(count)
i = 1
h = {}
while (i-1) < count do
h[i] = {}
h[i].address = kol[i].value
h[i].flags = 32
i = i + 1
end
gg.addListItems(h)
end






function A_user_given_offset()
local old_save_list = gg.getListItems()
for i, v in ipairs(old_save_list) do
v.address = v.address + Get_user_input[2]
v.flags = Get_user_type
end
gg.clearResults()
gg.clearList()
gg.loadResults(old_save_list)
count = gg.getResultsCount()
if count == 0 then
found_("Q_apply_fix++")
return 0
end
gg.setVisible(false)
end





function start()
user_input_taker()
O_initial_search()
O_dinitial_search()
if error > 0 then
return 0
end
CA_pointer_search()
if error > 0 then
return 0
end
CA_apply_offset()
if error > 0 then
return 0
end
A_base_value()
if error > 0 then
return 0
end
if offst == 0 then
A_base_accuracy()
end
if error > 0 then
return 0
end
A_user_given_offset()
if error > 0 then
return 0
end
loopCheck()
if error > 0 then
return 0
end
end






function second_start()
O_dinitial_search()
if error > 1 then
return 0
end
CA_pointer_search()
if error > 1 then
return 0
end
CA_apply_offset()
if error > 1 then
return 0
end
Q_apply_fix()
if error > 1 then
return 0
end
if offst == 0 then
A_base_accuracy()
end
if error > 1 then
return 0
end
A_user_given_offset()
if error > 1 then
return 0
end
loopCheck()
if error > 1 then
return 0
end
end






function third_start()
O_dinitial_search()
if error > 2 then
return 0
end
CA_pointer_search()
if error > 2 then
return 0
end
if offst == 0 then
CA2_apply_offset()
end
if error > 2 then
return 0
end
A_base_value()
if error > 2 then
return 0
end
if offst == 0 then
A_base_accuracy()
end
if error > 2 then
return 0
end
A_user_given_offset()
if error > 2 then
return 0
end
loopCheck()
if error > 2 then
return 0
end
end






function fourth_start()
O_dinitial_search()
CA_pointer_search()
CA2_apply_offset()
Q_apply_fix()
if offst == 0 then
A_base_accuracy()
end
A_user_given_offset()
loopCheck()
end






--Offset Patcher

function patch(offset,replaced)
    local h = {}
    h[1] = {}
    h[1].address = BaseAddress + offset
    h[1].flags = 32
    h[1].value = "h"..replaced
    gg.setValues(h)
    end

function patchQ(offset,replaced)
local h = {}
 h[1] = {}
h[1].address = BaseAddress + offset
h[1].flags = 32
h[1].value = replaced
gg.setValues(h)
end





gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h7F 45 4C 46 02 01 01 00 00 00 00 00 00 00 00 00 03 00 B7 00 01 00 00 00 F0 C9 71 00 00 00 00 00 40 00 00 00 00 00 00 00 A0 AA A5 02 00 00 00 00", gg.TYPE_BYTE)
rCount = gg.getResultCount()
if rCount == 0 then return gg.alert("Can't get libil2cpp base offset") end
BaseAddress = gg.getResults(rCount)[1].address
gg.clearResults()





function GetMemoryValue(address)
	while(address) and (address ~= 0) do
		t = {}
		t[1] = {}
		t[1].address = BaseAddress + address
		t[1].flags = 32
		res = gg.getValues(t)
		result = res[1].value & 0xFFFFFFFFFFFFFFFF
			return result

   end
   return nil
end






-- Declaration Of Offsets
bypass = 0xCA4564 -- 1st 0xCA4564 0xCA483C 0xCA5230 0xCA5674 0xCA4C80 0xCDB820
bypass1 = 0xCA46D0
bypass2 = 0xCA483C
bypass3 = 0xCA49A8
bypass4 = 0xCA4B14
bypass5 = 0xCA5230
bypass6 = 0xD5D390
bypass7 = 0x9E0068
bypass8 = 0xD7F704
bypass9 = 0xD7F5DC
bypass10 = 0x9E14E8
bypass11 = 0x9E18E8
bypass12 = 0x9E13E8
bypass13 = 0x9E15E8
bypass14 = 0x9E12E8
bypass15 = 0xB67F98
bypass16 = 0x9D1FF8
bypass17 = 0xCA539C
bypass18 = 0xCA5508
bypass19 = 0xCA5674
bypass20 = 0xCA57E0
bypass21 = 0xCA594C
bypass22 = 0xCA5AB8
bypass23 = 0xCA4C80
bypass24 = 0xCA4DEC
bypass25 = 0xCA4F58
bypass26 = 0xCA50C4 --last
bypass27 = 0xD0AE84
bypass28 = 0xD05B50
bypass29 = 0xD050C0
bypass30 = 0xD0AF28
bypass31 = 0xD07108
bypass32 = 0xD0AFCC
bypass33 = 0xD0B070
bypass34 = 0xD0B114
bypass35 = 0xD0B1B8
bypass36 = 0xD0B25C
bypass37 = 0xD0B300
bypass38 = 0xD040A4
bypass39 = 0xD0B3A4
bypass40 = 0xD0B448
bypass41 = 0xD0B4EC
bypass42 = 0xD0AB78
bypass43 = 0xC263FC
bypass44 = 0xC26404
bypass45 = 0xC26470
bypass46 = 0xC25960
bypass47 = 0xC25C60
bypass48 = 0xC260CC
bypass49 = 0xC259A0
bypass50 = 0xD08628
bypass51 = 0xD08414
bypass52 = 0xD08608
bypass53 = 0xD084A0
bypass54 = 0xD087BC
bypass55 = 0xD0865C
bypass56 = 0xD086B0
bypass57 = 0xB898BC
bypass58 = 0xB89950
bypass59 = 0xB89B2C
bypass60 = 0xB89A20
bypass61 = 0xB89A8C
bypass62 = 0xB89ADC
bypass63 = 0xB6FCC0
bypass64 = 0xB6F704
bypass65 = 0xB6F70C
bypass66 = 0xD078F4
bypass67 = 0xD0768C
bypass68 = 0xD07880
bypass69 = 0xD07718
bypass70 = 0xD07A04
bypass71 = 0xD07C44
bypass72 = 0xD07A98
bypass73 = 0xD03DD8
bypass74 = 0xD03A20
bypass75 = 0xD03C14
bypass76 = 0xD03AAC
bypass77 = 0xD03F20
bypass78 = 0xD03FB4
bypass79 = 0xD04010
bypass80 = 0xB2BE48
bypass81 = 0xD064C0
bypass82 = 0xD064C8
bypass83 = 0xD062CC
bypass84 = 0xD061A0
bypass85 = 0xD06358
bypass86 = 0xD065A0
bypass87 = 0xD0664C
bypass88 = 0xD06634
bypass89 = 0xD04210
bypass90 = 0xD042BC
bypass91 = 0xD041AC
bypass92 = 0xD04348
bypass93 = 0xD044B0
bypass94 = 0xD04658
bypass95 = 0xD04504
bypass96 = 0xD04560
bypass97 = 0xD06064
bypass98 = 0xD0605C
bypass99 = 0xB89B4C
bypass100 = 0xB89BD8
bypass101 = 0xB89E7C
bypass102 = 0xB89C7C
bypass103 = 0xB89F28
bypass104 = 0xB89DE8
bypass105 = 0xD05778
bypass106 = 0xD05858
bypass107 = 0xD056D4
bypass108 = 0xD058E4
bypass109 = 0xD05BF4
bypass110 = 0xD05A4C
bypass111 = 0xD05AA0
bypass112 = 0xD05AFC
bypass113 = 0xD05F20
bypass114 = 0xD05F28
bypass115 = 0xD05D2C
bypass116 = 0xD05C68
bypass117 = 0xD05DB8
bypass118 = 0xD05FF8
bypass119 = 0xD05FE0
bypass120 = 0xD05F8C
bypass121 = 0xD074D8
bypass122 = 0xD07274
bypass123 = 0xD07468
bypass124 = 0xD07300
bypass125 = 0xD07540
bypass126 = 0xD0754C
bypass127 = 0xD075B4
bypass128 = 0xD0612C
bypass129 = 0xD06124
bypass130 = 0xD06130
bypass131 = 0xA0B790
bypass132 = 0xA0BA40
bypass133 = 0xA0BB50
bypass134 = 0xA0BC60
bypass135 = 0xA0BD70
bypass136 = 0xA0BE80
bypass137 = 0xA0BF90
bypass138 = 0xA0C0A0
bypass139 = 0xA0C1B0
bypass140 = 0xA0C2C0
bypass141 = 0xA0C3C0
bypass142 = 0xA0C4C0
bypass143 = 0xA0C5C0
bypass144 = 0xA0C6C0
bypass145 = 0xA0C7C0
bypass146 = 0xA0C8C0
bypass147 = 0xA0C9C0
bypass148 = 0xA0CAC0
bypass149 = 0xA0CBC0
bypass150 = 0xA0CFC0
bypass151 = 0xA0D0C0
bypass152 = 0xA0D2C0
bypass153 = 0xA0D3C0
bypass154 = 0xA0D4C0
bypass155 = 0xA0D5C0
bypass156 = 0xA0D6C0
bypass157 = 0xA0D7C0
bypass158 = 0xA0D8C0
bypass159 = 0xA0D9C0
bypass160 = 0xD060C0
bypass161 = 0xD060C8
bypass162 = 0xC8B97C
bypass163 = 0xC8BB94
bypass164 = 0xC8BDAC
bypass165 = 0xC8BFC4
bypass166 = 0xC8C1DC
bypass167 = 0xC8C288
bypass168 = 0xC8C4A0
bypass169 = 0xC8C54C
bypass170 = 0xC8C5F8
bypass171 = 0xC8C810
bypass172 = 0xC8C8BC
bypass173 = 0xC8C968
bypass174 = 0xC8CA14
bypass175 = 0xC8CC2C
bypass176 = 0xC8CCD8
bypass177 = 0xC8CEF0
bypass178 = 0xC8CF9C
bypass179 = 0xC8D048
bypass180 = 0xC8D0F4
bypass181 = 0xC8BA28
bypass182 = 0xC8BC40
bypass183 = 0xC8BE58
bypass184 = 0xC8C070
bypass185 = 0xC8C334
bypass186 = 0xC8C6A4
bypass187 = 0xC8CAC0
bypass188 = 0xC8CD84
bypass189 = 0xD08870
bypass190 = 0xD08868
bypass191 = 0xD04E1C
bypass192 = 0xD04C20
bypass193 = 0xD04BC4
bypass194 = 0xD04CAC
bypass195 = 0xD05164
bypass196 = 0xD04EFC
bypass197 = 0xD04F90
bypass198 = 0xD0502C
bypass199 = 0xD069FC
bypass200 = 0xD067A0
bypass201 = 0xD06994
bypass202 = 0xD0682C
bypass203 = 0xD06AA8
bypass204 = 0xD06AB4
bypass205 = 0xD06B1C
bypass206 = 0xD06E88
bypass207 = 0xD06BF0
bypass208 = 0xD06DE4
bypass209 = 0xD06C7C
bypass210 = 0xD06F34
bypass211 = 0xD06FC8
bypass212 = 0xD070B4
bypass213 = 0xD051F0
bypass214 = 0xD05294
bypass215 = 0xD051D0
bypass216 = 0xD05320
bypass217 = 0xD05668
bypass218 = 0xD05488
bypass219 = 0xD05494
bypass220 = 0xD05530
bypass221 = 0xD0806C
bypass222 = 0xD07DD4
bypass223 = 0xD07FC8
bypass224 = 0xD07E60
bypass225 = 0xD0824C
bypass226 = 0xD0814C
bypass227 = 0xD081A0
bypass228 = 0xD04728
bypass229 = 0xD047D4
bypass230 = 0xD046C4
bypass231 = 0xD04B0C
bypass232 = 0xD04860
bypass233 = 0xD049C8
bypass234 = 0xD04A1C
bypass235 = 0xD04AB8
bypass236 = 0x1BE7DA0 --last
bypass237 = 0x5BC654
bypass238 = 0x5BD378
bypass239 = 0x5BCC98
bypass240 = 0x830910
bypass241 = 0x83188C
bypass242 = 0x8315E4
bypass243 = 0x831784
bypass244 = 0x831BB8
bypass245 = 0x831010
bypass246 = 0x830D68
bypass247 = 0x82F980
bypass248 = 0x831994
bypass249 = 0x8321FC
bypass250 = 0x830F8C
bypass251 = 0x8309A4
bypass252 = 0x831A18
bypass253 = 0x8314DC
bypass254 = 0x831CC0
bypass255 = 0x8320F4
bypass256 = 0x831C3C
bypass257 = 0x832178
bypass258 = 0x830BC8
bypass259 = 0x831234
bypass260 = 0x832070
bypass261 = 0x831808
bypass262 = 0x831458
bypass263 = 0x8312B8
bypass264 = 0x831FEC
bypass265 = 0x831560
bypass266 = 0x8311B0
bypass267 = 0x830B44
bypass268 = 0x831EE4
bypass269 = 0x830DEC
bypass270 = 0x831910
bypass271 = 0x83088C
bypass272 = 0x831D44
bypass273 = 0x831F68
bypass274 = 0x82EA6C
bypass275 = 0x76ADEC
bypass276 = 0x76AD20
bypass277 = 0x76AD58
bypass278 = 0x76AD2C
bypass279 = 0x76AD14
bypass280 = 0x76AC98
bypass281 = 0x76AD38
bypass282 = 0x76AD4C
bypass283 = 0x76ACD0
bypass284 = 0x76A9E0
bypass285 = 0x76A9B8
bypass286 = 0x76A9A4
bypass287 = 0x76A8C8
bypass288 = 0x76A9CC
bypass289 = 0x76A8F8
bypass290 = 0x76A904

radar = 0xC339A0
radar2 = 0xC339A4
get_crosshair = 0xACA158
get_height = 0x1E188B4
linecast = 0x1E1A618
dryfire = 0xC35264
isvisible = 0xFECA1C
applyrecoil = 0xFEBA9C
updatespread = 0xFEB9A4
applyaimpunch = 0xFEBBB8
jumpheight = 0xC31714
get_suppressor = 0xACA2F4
raycastgrenade = 0xAD22D4
explodegrenade = 0xC3965C
set_spread = 0xE50D4C
handlecrouching = 0xC35FFC
getcapsuleparameters = 0xA18DB4
setkillnotification = 0xEFB040
updatecollider = 0xAD3B8C
getcurrentmaxspeed = 0xFEB60C
practicestage = 0xB01154
gameplaystage = 0xAF9A90
menustage = 0xB010D0
setbombtimer = 0xC4D170
processwallhits = 0xAD9AD4
isreloadingpossible = 0xA2E60C
settime = 0xE35F80
flashed = 0x107F1D4
test = 0xA38808
test1 = 0xFECA1C
test2 = 0xA389EC
test3 = 0x1759DFC
test4 = 0xFECCE8
setgamedata = 0xADCA28
body = 0xADA380 + 0xD4
head = 0xADA380 + 0xE8
stw = 0xAD9E2C + 0xD8
stw2 = 0xAD9E2C + 0xEC
stwv2 = 0xAD9E2C + 0x158
crouchtime = 0x38
usertype = 0x20
accountage = 0x14
ispayinguser = 0x10
isnewaccount = 0x100
requestbanuser = 0xA36760
requestbanuser2 = 0xA263A4
getmaxrunspeed = 0xFEB6B0
createragdoll = 0xFF86D0
stepsize = 0xFDD57C
get_crouch = 0xFA9964
burst = 0xE82FDC
isowned1 = 0xCAA7C8
isowned2 = 0xCAA71C
isowned3 = 0xCAA620
isowned4 = 0xCAA56C
pwb = 0xE574C4
dumb = 0xD3A260
hands = 0xB2D900
instantequip1 = 0xBF6984
instantequip2 = 0xA7E560
checkvisibility1 = 0xFECCE8 + 0xA8
checkvisibility2 = 0xFECCE8 + 0xAC
makecrouch = 0xC36044

-- for off
radaroff = GetMemoryValue(radar)
radar2off = GetMemoryValue(radar2)
bodyoff = GetMemoryValue(body)
headoff = GetMemoryValue(head)
stwoff = GetMemoryValue(stw)
stw2off = GetMemoryValue(stw2)
stwv2off = GetMemoryValue(stwv2)
jumpheightoff = GetMemoryValue(jumpheight)
crosshairoff = GetMemoryValue(get_crosshair)
heightoff = GetMemoryValue(get_height)
isvisibleoff = GetMemoryValue(isvisible)
recoiloff = GetMemoryValue(applyrecoil)
settimeoff = GetMemoryValue(settime)
flashedoff = GetMemoryValue(flashed)
spreadoff = GetMemoryValue(updatespread)
aimpunchoff = GetMemoryValue(applyaimpunch)
dryfireoff = GetMemoryValue(dryfire)
suppressoroff = GetMemoryValue(get_suppressor)
flashoff = GetMemoryValue(raycastgrenade)
smokeoff = GetMemoryValue(explodegrenade)
bluroff = GetMemoryValue(set_spread)
fakeduckoff = GetMemoryValue(handlecrouching)
noclipoff = GetMemoryValue(getcapsuleparameters)
spooferoff = GetMemoryValue(setkillnotification)
jumpoff = GetMemoryValue(updatecollider)
speedoff = GetMemoryValue(getcurrentmaxspeed)
bombtimeroff = GetMemoryValue(setbombtimer)
processwallhitsoff = GetMemoryValue(processwallhits)
isreloadingpossibleoff = GetMemoryValue(isreloadingpossible)
setgamedataoff = GetMemoryValue(setgamedata)
runspeedoff = GetMemoryValue(getmaxrunspeed)
burstoff = GetMemoryValue(burst)
isowned1off = GetMemoryValue(isowned1)
isowned2off = GetMemoryValue(isowned2)
isowned3off = GetMemoryValue(isowned3)
isowned4off = GetMemoryValue(isowned4)
ragdolloff = GetMemoryValue(createragdoll)
pwboff = GetMemoryValue(pwb)
dumboff = GetMemoryValue(dumb)
handsoff = GetMemoryValue(hands)
instantequip1off = GetMemoryValue(instantequip1)
instantequip2off = GetMemoryValue(instantequip2)
isvisibleoff = GetMemoryValue(isvisible)
linecastoff = GetMemoryValue(linecast)
checkv1off = GetMemoryValue(checkvisibility1)
checkv2off = GetMemoryValue(checkvisibility2)
makecrouchoff = GetMemoryValue(makecrouch)




-- Declaration Of Edits

radar1 = "60 01 08 36"
  radar2 = "1F2003D5"
  true1 = "20 00 80 D2 C0 03 5F D6"
  false1 = "00 00 80 D2 C0 03 5F D6"
  false0 = "00 00 80 D2"
  float05 = "00103C1EC0035FD6"
  float0 = "E003271EC0035FD6"
  float1 = "00102E1EC0035FD6"
  float2 = "0010201EC0035FD6"
  float3 = "0010211EC0035FD6"
  float4 = "0010221EC0035FD6"
  float5 = "0090221EC0035FD6"
  float10 = "0090241E"
  float14 = "0090251EC0035FD6"
  float20 = "0090261E"
  float24 = "0010271EC0035FD6"
  float31 = "00F0271EC0035FD6"
  nop1 = "1F 20 03 D5"
  nop2 = "1F2003D5C0035FD6"
  ret = "C0035FD6"
  headedit = "0090261E221DA94E"
  bodyedit = "0090261E221DA94E"
  stw1edit = "1F2003D56A010054"
  stw2edit = "1F2003D5C2220054"
  stwv2edit = "1F2003D585100054"
  burst1 = "29008052"
  burst10 = "49018052"
  burst20 = "89028052"
  burst30 = "C9038052"





function main()
local menu = gg.choice({
      "Chams",
      "64",
      "Misc",
      "FOV",
      "FireRate",
      "Float",
      "Speed",
      "Security",
      "Skin Changer",
      "EXIT"},
nil,"Critical Ops Mod Menu By xycro#8113")

if menu == nil then gg.toast("minimize menu")
elseif
menu == 1 then hackmenu()
elseif
menu == 2 then hackmenu2()
elseif
menu == 3 then hackmenu3()
elseif
menu == 4 then hackmenu4()
elseif
menu == 5 then hackmenu5()
elseif
menu == 6 then hackmenu6()
elseif
menu == 7 then hackmenu7()
elseif
menu == 8 then hackmenu8()
elseif
menu == 9 then hackmenu9()
elseif

menu == 10 then os.exit()
end
end



function hackmenu()
function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = os.date("Chams"),
{ 
name = "Chams A11/A12",
on = function() 
    gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("593,936;1,669,365,770;1,669,333,011;50,331,648:133",gg.TYPE_DWORD)
gg.refineNumber("1,669,333,011",gg.TYPE_DWORD)
gg.getResults(15)
gg.editAll("5",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Chams")
gg.toast("may need to activate more than once")
	end,
	off = function()
	gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("593,936;1,669,365,770;5;50,331,648:133",gg.TYPE_DWORD)
gg.refineNumber("5",gg.TYPE_DWORD)
gg.getResults(15)
gg.editAll("1669333011",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Chams Off")
	end
	},
	{ 
name = "Green Colour A11/A12",
		on = function()
		gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("811,630,593;1,669,449,986;274,857,984:9", gg.TYPE_DWORD)
  gg.refineNumber("1,669,449,986")
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('Green color A11')
		end,
		off = function()
		gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("811,630,593;0;274,857,984:9", gg.TYPE_DWORD)
  gg.refineNumber("0")
  gg.getResults(1)
  gg.editAll("1669449986", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('Green color A11')
		end
},










}

xycro(Switch)
end





function hackmenu2()
function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = "64",
{ 
name = "Esp Radar",
on = function() 

    gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("h60 00 00 36 00 00 80 12 0A 00 00 14", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h1F2003D5", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("Spectator Radar On")
	end,
	off = function()
	
	gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("h1F 20 03 D5 00 00 80 12 0A 00 00 14", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h60 00 00 36", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("Spectator Radar Off")
	end
	},
	
	{ 
name = "Radar",
on = function() 
     patch(radar,"0020201E")
     patch(radar2,"1F2003D568020039")
    
	end,
	off = function()
	patchQ(radar,radaroff)
	patchQ(radar2,radar2off)
	
	end
	},

	{ 
		name = "Team Radar",
		on = function() 
			 patch(linecast,false1)
			 patch(isvisible,true1)
			 patch(checkvisibility1,"1F010071E8179F1A")
			 patch(checkvisibility2, "0814801A02000014")
			 gg.toast("Team Radar ON")
			
			end,
			off = function()
			patch(isvisible,isvisibleoff)
			patch(linecast,linecastoff)
			patch(checkvisibility1,checkv1off)
			patch(checkvisibility2,checkv2off)
			gg.toast("Team Radar OFF")
			end
			},
	
	{ 
name = "Wide Putin",
		on = function()
		gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.87000000477F;0.87000000477F;0.87000000477F:9",gg.TYPE_FLOAT)
  gg.refineNumber("0.87000000477",gg.TYPE_FLOAT)
  gg.refineAddress("0", nil)
  gg.getResults(100000)
  gg.editAll(6, gg.TYPE_FLOAT)
  gg.toast("Wide Putin")
		end,
		off = function()
		gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6;0.87000000477F;0.87000000477F:9",gg.TYPE_FLOAT)
  gg.refineNumber("6",gg.TYPE_FLOAT)
  gg.refineAddress("0", nil)
  gg.getResults(100000)
  gg.editAll(0.87000000477, gg.TYPE_FLOAT)
  gg.toast("Wide Putin Off")
		end
},

	{ 
name = "Medium Putin",
on = function() 
    gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.87000000477F;0.87000000477F;0.87000000477F:9",gg.TYPE_FLOAT)
  gg.refineNumber("0.87000000477",gg.TYPE_FLOAT)
  gg.refineAddress("0", nil)
  gg.getResults(100000)
  gg.editAll(2.9, gg.TYPE_FLOAT)
  gg.toast("Medium Putin")
	end,
	off = function()
	gg.toast("off?")
	end
	},



	{ 
name = "Small Putin",
on = function() 
    gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.87000000477F;0.87000000477F;0.87000000477F:9",gg.TYPE_FLOAT)
  gg.refineNumber("0.87000000477",gg.TYPE_FLOAT)
  gg.refineAddress("0", nil)
  gg.getResults(100000)
  gg.editAll(1.9, gg.TYPE_FLOAT)
  gg.toast("Small Putin")
	end,
	off = function()
	gg.toast("off?")
	end
	},
	{ 
name = "Legit Putin",
		on = function()
		gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.87000000477F;0.87000000477F;0.87000000477F:9",gg.TYPE_FLOAT)
  gg.refineNumber("0.87000000477",gg.TYPE_FLOAT)
  gg.refineAddress("0", nil)
  gg.getResults(100000)
  gg.editAll(1.4, gg.TYPE_FLOAT)
  gg.toast("Legit Putin")
		end,
		off = function()
		gg.toast("off?")
		end
},
{ 
name = "Increased Aim Assist",
on = function() 

    gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("h00 10 2E 1E 02 89 40 BD 0C 38 2C 1E", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h00F0271E", gg.TYPE_BYTE)
  gg.clearResults()
    gg.toast("Increased Aim Assist On")
	end,
	off = function()
	
	gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("h00 F0 27 1E 02 89 40 BD 0C 38 2C 1E", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h00 10 2E 1E", gg.TYPE_BYTE)
  gg.clearResults()
    gg.toast("Increased Aim Assist Off")
	end
	},

{ 
name = "Increased HitSphere Ratio",
on = function() 

    gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("hC0 26 40 BD C1 3A 40 BD E0 43 00 91", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h00D0251E", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("Increased HitSphere Ratio On")
	end,
	off = function()
	
	gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("h00 D0 25 1E C1 3A 40 BD E0 43 00 91", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("hC0 26 40 BD", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("Increased HitSphere Ratio Off")
	end
	},
	
	
	{ 
name = "Increased Body Hitbox",
on = function() 
     patch(body,bodyedit)
  gg.toast("Increased Body Hitbox On")
	end,
	off = function()
	patchQ(body,bodyoff)
	gg.toast("Increased Body Hitbox Off")
	end
	},
	
		{ 
name = "Increased Head Hitbox",
on = function() 
     patch(head,headedit)
  gg.toast("Increased Head Hitbox On")
	end,
	off = function()
	patchQ(head,headoff)
	gg.toast("Increased Head Hitbox Off")
	end
	},
	
			{ 
name = "Remove Firing Cooldowns",
    on = function() 
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("h00 39 20 1E 60 3A 00 BD 7C 00 00 14 68 3A 40 BD", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h0038201E", gg.TYPE_BYTE)
  gg.clearResults()

  gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h00 39 20 1E 60 3E 00 BD 71 00 00 14", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("h0038201E", gg.TYPE_BYTE)
gg.clearResults()

gg.toast("makes sniper shoot like ak and sa58 automatic")
	end,
	off = function()
	gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("h00 38 20 1E 60 3A 00 BD 7C 00 00 14 68 3A 40 BD", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h0039201E", gg.TYPE_BYTE)
  gg.clearResults()

  gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("h00 38 20 1E 60 3E 00 BD 71 00 00 14", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("h0039201E", gg.TYPE_BYTE)
gg.clearResults()

gg.toast("Rapid fire Off")
	end
	},
	
	{ 
name = "No Recoil",
on = function() 
     patch(applyrecoil,false1)
  gg.toast("No Recoil On")
	end,
	off = function()
	patchQ(applyrecoil,recoiloff)
	gg.toast("No Recoil Off")
	end
	},
	
		{ 
name = "Less Recoil",
on = function() 
     gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000",gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("350.01", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Less Recoil On")
	end,
	off = function()
		gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("350.01",gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Less Recoil Off")
	end
	},
	
	{ 
name = "Less Recoil V2",
on = function() 
     gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000",gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("250.01", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Less Recoil On")
	end,
	off = function()
		gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("250.01",gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Less Recoil Off")
	end
	},
	
		{ 
name = "No Spread",
on = function() 
     patch(updatespread,false1) 

gg.toast("No Spread On")
	end,
	off = function()
		patchQ(updatespread,spreadoff) 

gg.toast("No Spread Off")
	end
	},
	
	 
	
		{ 
name = "No Aimpunch",
on = function() 
     patch(applyaimpunch,false1) 
gg.toast("No Aimpunch On")
	end,
	off = function()
		patchQ(applyaimpunch,aimpunchoff) 
gg.toast("No Aimpunch Off")
	end
	},
	
	{ 
name = "No Dryfire",
on = function() 
     patch(dryfire,false1) 
gg.toast("No Dryfire On")
	end,
	off = function()
		patchQ(dryfire,dryfireoff) 
gg.toast("No Dryfire Off")
	end
	},

	{ 
		name = "No Flash V2",
		on = function() 
			 patch(settime,false1) 
			 patch(flashed,false1)
		gg.toast("No Flash V2 On")
			end,
			off = function()
				patchQ(settime,settimeoff) 
				patchQ(flashed,flashedoff) 
		gg.toast("No Flash V2 Off")
			end
			},
	
	
		{ 
name = "No Flash",
on = function() 
     patch(raycastgrenade,false1) 

gg.toast("No Flash On")
	end,
	off = function()
		patchQ(raycastgrenade,flashoff) 

gg.toast("No Flash Off")
	end
	},
	
		{ 
name = "No Smoke",
on = function() 
     patch(explodegrenade,false1) 

gg.toast("No Smoke On")
	end,
	off = function()
		patchQ(explodegrenade,smokeoff) 

gg.toast("No Smoke Off")
	end
	},
	
		{ 
name = "Sniper Crosshair",
on = function() 
     patch(get_crosshair,true1) 

gg.toast("Sniper Crosshair On")
	end,
	off = function()
		patchQ(get_crosshair,crosshairoff) 

gg.toast("Sniper Crosshair Off")
	end
	},
	
		{ 
name = "No Sniper Blur",
on = function() 
     patch(set_spread,false1) 

gg.toast("No Sniper Blur On")
	end,
	off = function()
		patchQ(set_spread,bluroff) 

gg.toast("No Sniper Blur Off")
	end
	},
	
	{ 
name = "Shoot Through Walls No Kick",
on = function() 
     patch(stw,stw1edit)
     patch(stw2,stw2edit)
     patch(isvisible,true1)
     gg.toast("stw On")
	end,
	off = function()
	patchQ(stw,stwoff)
	patchQ(stw2,stw2off)
	patchQ(isvisible,isvisibleoff)
	gg.toast("stw Off")
	end
	},
	
		{ 
name = "Shoot Through Walls No Kick V2",
on = function() 
     patch(stwv2,stwv2edit) 
     patch(isvisible,true1)

gg.toast("stw On")
	end,
	off = function()
		patchQ(stwv2,stwv2off) 
		patchQ(isvisible,isvisibleoff)

gg.toast("stw Off")
	end
	},
	
		{ 
name = "Noclip",
on = function() 
     patch(getcapsuleparameters,false1) 

gg.toast("Noclip on")
	end,
	off = function()
		patchQ(getcapsuleparameters,noclipoff) 

gg.toast("noclip Off")
	end
	},
	
		{ 
name = "Suppressor",
on = function() 
     patch(get_suppressor,true1) 

gg.toast("Suppressor on")
	end,
	off = function()
		patchQ(get_suppressor,suppressoroff) 

gg.toast("Suppressor Off")
	end
	},
	
		{ 
name = "Killfeed Spoofer",
on = function() 
     patch(setkillnotification,false1) 

gg.toast("Spoofer on")
	end,
	off = function()
		patchQ(setkillnotification,spooferoff) 

gg.toast("Spoofer Off")
	end
	},
	
	{ 
name = "Magic Melee",
on = function() 
     gg.setRanges(gg.REGION_CODE_APP) 
  gg.searchNumber("h08 63 40 BD E8 3B 00 F9 E0 02 40 F9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h0890221E", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("MagicMelee")
	end,
	off = function()
		gg.setRanges(gg.REGION_CODE_APP) 
  gg.searchNumber("h08 90 22 1E E8 3B 00 F9 E0 02 40 F9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h086340BD", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("MagicMelee Off")
	end
	},
{	
	name = "Max Clip Size",
on = function() 
     gg.setRanges(gg.REGION_CODE_APP) 
  gg.searchNumber("h08 71 40 B9 E1 03 00 32 E0 03 14 AA E2 03 1F AA", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h08F0271E", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("Max Clip Size")
	end,
	off = function()
		gg.setRanges(gg.REGION_CODE_APP) 
  gg.searchNumber("h08 F0 27 1E E1 03 00 32 E0 03 14 AA E2 03 1F AA", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("h087140B9", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("Max Clip Size Off")
	end
	},
	
		{ 
name = "Fake Duck",
on = function() 
     patch(handlecrouching,false1) 

gg.toast("Fake Duck on")
	end,
	off = function()
		patchQ(handlecrouching,fakeduckoff) 

gg.toast("Fake Duck Off")
	end
	},
	
		{ 
name = "Jump On Teammates",
on = function() 
     patch(updatecollider,false1) 

gg.toast("Jump On Teammates on")
	end,
	off = function()
		patchQ(updatecollider,jumpoff) 

gg.toast("Jump On Teammates Off")
	end
	},
	
		{ 
name = "Show Bomb Timer",
on = function() 
     patch(setbombtimer,true1) 

gg.toast("Bomb Timer on")
	end,
	off = function()
		patchQ(setbombtimer,bombtimeroff) 

gg.toast("Bomb Timer Off")
	end
	},

	{ 
		name = "Slide",
		on = function() 
			
		
		gg.toast("")
			end,
			off = function()
				
		
		gg.toast("")
			end
			},

			{ 
				name = "Make Everyone Slide",
				on = function() 
					patch(getmaxrunspeed,float31)
				
				gg.toast("make everyone slide On")
					end,
					off = function()
						patchQ(getmaxrunspeed,runspeedoff)
						
				
				gg.toast("make everyone slide Off")
					end
					},

					{ 
						name = "Make Everyone Crouch",
						on = function() 
							patch(makecrouch,"01F0271E1F010071")
						
						gg.toast("make everyone crouch On")
							end,
							off = function()
								patchQ(makecrouch,makecrouchoff)
								
						
						gg.toast("make everyone crouch Off")
							end
							},

					{ 
						name = "1 Burst Shot",
						on = function() 
							patch(burst,burst1)
						
						gg.toast("1 Burst Shot On")
							end,
							off = function()
								patchQ(burst,burstoff)
								
						
						gg.toast("1 Burst Shot Off")
							end
							},

							{ 
								name = "10 Burst Shots",
								on = function() 
									patch(burst,burst10)
								
								gg.toast("10 Burst Shots On")
									end,
									off = function()
										patchQ(burst,burstoff)
										
								
								gg.toast("10 Burst Shots Off")
									end
									},

									{ 
										name = "20 Burst Shots",
										on = function() 
											patch(burst,burst20)
										
										gg.toast("20 Burst Shots On")
											end,
											off = function()
												patchQ(burst,burstoff)
												
										
										gg.toast("20 Burst Shots Off")
											end
											},

											{ 
												name = "30 Burst Shots",
												on = function() 
													patch(burst,burst30)
												
												gg.toast("30 Burst Shots On")
													end,
													off = function()
														patchQ(burst,burstoff)
														
												
												gg.toast("30 Burst Shots Off")
													end
													},

													
	

	

}

xycro(Switch)
end




function hackmenu3()
function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = os.date("Misc"),
{ 
name = "Tutorial Bypass",
on = function() 
    patch(practicestage,true1)
    patch(gameplaystage,true1)
    patch(menustage,true1)
    gg.toast("tut bypass")
	end,
	off = function()
	
	end
	},
	{ 
name = "Instant Crouch",
		on = function()
		gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.00100000005F;0.34999999404F;0.69999998808F:21",gg.TYPE_FLOAT)
  gg.refineNumber("0.34999999404F",gg.TYPE_FLOAT)
  gg.getResults(100000)
  gg.editAll(0, gg.TYPE_FLOAT)
  gg.toast("Instant Crouch")
		end,
		off = function()
		
		end
},

{ 
name = "1.25 Crouch Speed",
		on = function()
		gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.00100000005F;0.34999999404F;0.69999998808F:21",gg.TYPE_FLOAT)
  gg.refineNumber("0.34999999404F",gg.TYPE_FLOAT)
  gg.getResults(100000)
  gg.editAll(0.2, gg.TYPE_FLOAT)
  gg.toast("1.25 Crouch Speed")
		end,
		off = function()
		
		end
},

{ 
name = "Slow Crouch Speed",
		on = function()
		gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.00100000005F;0.34999999404F;0.69999998808F:21",gg.TYPE_FLOAT)
  gg.refineNumber("0.34999999404F",gg.TYPE_FLOAT)
  gg.getResults(100000)
  gg.editAll(0.8, gg.TYPE_FLOAT)
  gg.toast("Slow Crouch Speed")
		end,
		off = function()
		
		end
},

{ 
name = "Change UserType",
		on = function()
		local AccountTypes = gg.prompt({"Spectator","User","Assistant Moderator","Moderator","Veteran Moderator","Developer","Mods","Officials"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
 
 if AccountTypes[1] == true then 
valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(0, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->Spectator")
 end

 if AccountTypes[2] == true then 

valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(1, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->User")
end

 if AccountTypes[3] == true then 

valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(2, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->Assistant Moderator")
end


 if AccountTypes[4] == true then 

valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(4, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->Moderator")
end

 if AccountTypes[5] == true then 
valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(8, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->Veteran Moderator")
end

 if AccountTypes[6] == true then 
valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(64, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->Developer")
end


 if AccountTypes[7] == true then 

valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(14, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->Mods")
end

 if AccountTypes[8] == true then 
 
 valueFromClass("UserBasicInformation", usertype, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(78, gg.TYPE_DWORD)
gg.clearResults()
 gg.toast("Your user type is now->Officials")
end

		end,
		off = function()
		
		end
},

	{ 
name = "Increased Jump Height",
		on = function()
		patch(jumpheight,"0110301E001DA84E")
		end,
		off = function()
		patchQ(jumpheight,jumpheightoff)
		end
},

	

	

{ 
name = "Instant Equip Guns",
		on = function()
		patch(instantequip1,"00F0271E0018281E")
		patch(instantequip2,"E803271E08008012")
		end,
		off = function()
		patchQ(instantequip1,instantequip1off)
		patchQ(instantequip2,instantequip2off)
		end
},

{ 
name = "Increased HitBoxes",
		on = function()
		valueFromClass("HitSphere", 0x18, false, false, gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll(30, gg.TYPE_FLOAT)
gg.clearResults()

valueFromClass("HitSphere", 0x24, false, false, gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll(30, gg.TYPE_FLOAT)
gg.clearResults()
		end,
		off = function()
		
		end
},

{ 
	name = "BigAss Bodies",
			on = function()
			valueFromClass("CharacterSettings", 0x44, false, false, gg.TYPE_FLOAT)
	gg.getResults(9999)
	gg.editAll(1.2, gg.TYPE_FLOAT)
	gg.clearResults()
	

			end,
			off = function()
				valueFromClass("CharacterSettings", 0x44, false, false, gg.TYPE_FLOAT)
	gg.getResults(9999)
	gg.editAll(0.87, gg.TYPE_FLOAT)
	gg.clearResults()
			
			end
	},

	{ 
		name = "Midget Bodies",
				on = function()
				valueFromClass("CharacterSettings", 0x44, false, false, gg.TYPE_FLOAT)
		gg.getResults(9999)
		gg.editAll(0.4, gg.TYPE_FLOAT)
		gg.clearResults()
		
	
				end,
				off = function()
					valueFromClass("CharacterSettings", 0x44, false, false, gg.TYPE_FLOAT)
		gg.getResults(9999)
		gg.editAll(0.87, gg.TYPE_FLOAT)
		gg.clearResults()
				
				end
		},

		{ 
			name = "Spoof Rank",
					on = function()
					local Rank = gg.prompt({"Unranked","Iron","Bronze","Silver","Gold","Platinum","Diamond","Master","SpecOps","EliteOps"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
			 
			 if Rank[1] == true then 
			valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
			gg.getResults(9999)
			gg.editAll(0, gg.TYPE_DWORD)
			gg.clearResults()

			valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
			gg.getResults(9999)
			gg.editAll(0, gg.TYPE_DWORD)
			gg.clearResults()

			 gg.toast("Your Rank is now->Unranked")
			 end
			
			 if Rank[2] == true then 
			
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(1, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(1, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->Iron")
			end
			
			 if Rank[3] == true then 
			
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(2, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(2, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->Bronze")
			end
			
			
			 if Rank[4] == true then 
			
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(3, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(3, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->Silver")
			end
			
			 if Rank[5] == true then 
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(4, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(4, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->Gold")
			end
			
			 if Rank[6] == true then 
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(5, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(5, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->Platinum")
			end
			
			
			 if Rank[7] == true then 
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(6, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(6, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->Diamond")
				
			 end
			
			 if Rank[8] == true then 
			 
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(7, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(7, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->Master")
			end

			if Rank[9] == true then 
			 
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(8, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(8, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->SpecOps")
			   end

			   if Rank[10] == true then 
			 
				valueFromClass("UserRankedStats", 0x14, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(9, gg.TYPE_DWORD)
				gg.clearResults()
	
				valueFromClass("UserRankedStats", 0x10, false, false, gg.TYPE_DWORD)
				gg.getResults(9999)
				gg.editAll(9, gg.TYPE_DWORD)
				gg.clearResults()
	
				 gg.toast("Your Rank is now->EliteOps")
			   end
			
					end,
					off = function()
					
					end
			},

			{ 
				name = "Spoof Rating",
						on = function()
							valueFromClass("UserRankedStats", 0x18, false, false, gg.TYPE_DWORD)
							gg.getResults(500)
							  v = gg.prompt({i = "[setRating]"}, {i = "0"})
							if v == nil then
							gg.clearResults()
							gg.toast("Rating Unchanged")
							else
							save12 = gg.getResults(4)
							gg.editAll(v["i"], gg.TYPE_DWORD, false, gg.SIGN_EQUAL,
							0, -1)
							gg.addListItems(save12)
							gg.clearResults()
							end
				
			
						end,
						off = function()
					
						
						end
				},

				{ 
					name = "Spoof Kills",
							on = function()
								valueFromClass("UserStats", 0x10, false, false, gg.TYPE_DWORD)
								gg.getResults(500)
								  v = gg.prompt({i = "[setKills]"}, {i = "0"})
								if v == nil then
								gg.clearResults()
								gg.toast("Kills Unchanged")
								else
								save12 = gg.getResults(4)
								gg.editAll(v["i"], gg.TYPE_DWORD, false, gg.SIGN_EQUAL,
								0, -1)
								gg.addListItems(save12)
								gg.clearResults()
								end
					
				
							end,
							off = function()
						
							
							end
					},

					{ 
						name = "Spoof Deaths",
								on = function()
									valueFromClass("UserStats", 0x14, false, false, gg.TYPE_DWORD)
									gg.getResults(500)
									  v = gg.prompt({i = "[setDeaths]"}, {i = "0"})
									if v == nil then
									gg.clearResults()
									gg.toast("Deaths Unchanged")
									else
									save12 = gg.getResults(4)
									gg.editAll(v["i"], gg.TYPE_DWORD, false, gg.SIGN_EQUAL,
									0, -1)
									gg.addListItems(save12)
									gg.clearResults()
									end
						
					
								end,
								off = function()
							
								
								end
						},


						{ 
							name = "Spoof Wins",
									on = function()
										valueFromClass("UserStats", 0x1C, false, false, gg.TYPE_DWORD)
										gg.getResults(500)
										  v = gg.prompt({i = "[setWins]"}, {i = "0"})
										if v == nil then
										gg.clearResults()
										gg.toast("Wins Unchanged")
										else
										save12 = gg.getResults(4)
										gg.editAll(v["i"], gg.TYPE_DWORD, false, gg.SIGN_EQUAL,
										0, -1)
										gg.addListItems(save12)
										gg.clearResults()
										end
							
						
									end,
									off = function()
								
									
									end
							},

							{ 
								name = "Spoof Losses",
										on = function()
											valueFromClass("UserStats", 0x20, false, false, gg.TYPE_DWORD)
											gg.getResults(500)
											  v = gg.prompt({i = "[setLosses]"}, {i = "0"})
											if v == nil then
											gg.clearResults()
											gg.toast("Losses Unchanged")
											else
											save12 = gg.getResults(4)
											gg.editAll(v["i"], gg.TYPE_DWORD, false, gg.SIGN_EQUAL,
											0, -1)
											gg.addListItems(save12)
											gg.clearResults()
											end
								
							
										end,
										off = function()
									
										
										end
								},

								{ 
									name = "Unlock All Skins",
									on = function() 
										patch(isowned1,true1)
										patch(isowned2,true1)
										patch(isowned3,true1)
										patch(isowned4,true1)
										gg.toast("Unlock All Skins")
										end,
										off = function()
										patchQ(isowned1, isowned1off)
										patchQ(isowned2, isowned2off)
										patchQ(isowned3, isowned3off)
										patchQ(isowned4, isowned4off)
										end
										},

										{ 
											name = "No Ragdolls",
											on = function() 
												patch(createragdoll,false1)
											
												gg.toast("No Ragdolls")
												end,
												off = function()
										
												patchQ(createragdoll, ragdolloff)
												end
												},

												{ 
													name = "Play While Banned",
													on = function() 
														patch(pwb,true1)
													
														gg.toast("pwb")
														end,
														off = function()
												
														patchQ(pwb, pwboff)
														end
														},

														{ 
															name = "Bots Dont Shoot",
															on = function() 
																patch(dumb,true1)
															
																gg.toast("bots dont shoot")
																end,
																off = function()
														
																patchQ(dumb, dumboff)
																end
																},

																{ 
																	name = "Underground (K)",
																	on = function() 
																		valueFromClass("CharacterSettingsData", 0x44, false, false, gg.TYPE_FLOAT)
		gg.getResults(9999)
		gg.editAll(-120, gg.TYPE_FLOAT)
		gg.clearResults()
																	
																		gg.toast("Underground")
																		end,
																		off = function()
																			valueFromClass("CharacterSettingsData", 0x44, false, false, gg.TYPE_FLOAT)
																			gg.getResults(9999)
																			gg.editAll(1.47, gg.TYPE_FLOAT)
																			gg.clearResults()
																		end
																		},

																		{ 
																			name = "Increased Camera Height (K)",
																			on = function() 
																				valueFromClass("CharacterSettingsData", 0x44, false, false, gg.TYPE_FLOAT)
				gg.getResults(9999)
				gg.editAll(6, gg.TYPE_FLOAT)
				gg.clearResults()
																			
																				gg.toast("Increased Camera Height")
																				end,
																				off = function()
																					valueFromClass("CharacterSettingsData", 0x44, false, false, gg.TYPE_FLOAT)
																					gg.getResults(9999)
																					gg.editAll(1.47, gg.TYPE_FLOAT)
																					gg.clearResults()
																				end
																				},

																				{ 
																					name = "Remove Hands/Gun Models",
																					on = function() 
																						patch(hands,false1)
																					
																						gg.toast("remove hands/gun models")
																						end,
																						off = function()
																				
																						patchQ(hands, handsoff)
																						end
																						},

																						{ 
																							name = "Increased Grenade Velocity (K)",
																							on = function() 
																								valueFromClass("WeaponDefData", 0x13C, false, false, gg.TYPE_FLOAT)
								gg.getResults(9999)
								gg.editAll(100, gg.TYPE_FLOAT)
								gg.clearResults()
																							
																								gg.toast("Increased Grenade Velocity")
																								end,
																								off = function()
																									valueFromClass("CharacterSettingsData", 0x44, false, false, gg.TYPE_FLOAT)
																									gg.getResults(9999)
																									gg.editAll(20, gg.TYPE_FLOAT)
																									gg.clearResults()
																								end
																								},

																								{ 
																									name = "LGBTQ+ Smoke",
																									on = function() 
																										valueFromClass("SmokeGrenadeEffect", 0x4C, false, false, gg.TYPE_FLOAT)
										gg.getResults(9999)
										gg.editAll(100, gg.TYPE_FLOAT)
										gg.clearResults()
																									
																										gg.toast("LGBTQ + Smoke")
																										end,
																										off = function()
																								
																										end
																										},

																										{ 
																											name = "Green Smoke",
																											on = function() 
																												valueFromClass("SmokeGrenadeEffect", 0x4C, false, false, gg.TYPE_FLOAT)
												gg.getResults(9999)
												gg.editAll(-1, gg.TYPE_FLOAT)
												gg.clearResults()
																											
																												gg.toast("Green Smoke")
																												end,
																												off = function()
																										
																												end
																												},



}

xycro(Switch)
end



  


  function hackmenu4()
  
  gg.setRanges(gg.REGION_CODE_APP)
 gg.searchNumber("360",gg.TYPE_FLOAT)
 gg.getResults(5)
 fov = gg.getResults(5)
 gg.addListItems(fov)

    function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = os.date("FOV"),
{ 
name = "FOV 310",
on = function() 
    gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "310"
      gg.setValues(fov)
      gg.toast('FOV 310')
	end,
	off = function()
	gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "360"
      gg.setValues(fov)
      gg.toast('FOV 310 Off')
	end
	},
	{ 
name = "FOV 300",
		on = function()
		gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "300"
      gg.setValues(fov)
      gg.toast('FOV 300')
		end,
		off = function()
		gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "360"
      gg.setValues(fov)
      gg.toast('FOV 300 Off')
		end
},
	{ 
name = "FOV 280",
on = function() 
    gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "280"
      gg.setValues(fov)
      gg.toast('FOV 280')
	end,
	off = function()
	gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "360"
      gg.setValues(fov)
      gg.toast('FOV 280 Off')
	end
	},
	{ 
name = "FOV 250",
		on = function()
		gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "250"
      gg.setValues(fov)
      gg.toast('FOV 250')
		end,
		off = function()
		gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "360"
      gg.setValues(fov)
      gg.toast('FOV 250 Off')
		end
},

{ 
name = "FOV 1000",
		on = function()
		gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "1000"
      gg.setValues(fov)
      gg.toast('FOV 1000')
		end,
		off = function()
		gg.getListItems(fov)
      fov[3].flags = gg.TYPE_FLOAT
      fov[3].value = "360"
      gg.setValues(fov)
      gg.toast('FOV 1000 Off')
		end
},

{ 
	name = "ViewModel X Changer",
			on = function()
			gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("-0.05000000075",gg.TYPE_FLOAT)
		gg.getResults(100000)
		v = gg.prompt({i = "[setViewModel X] -0.5 for left hand guns (varies betwee different display resolutions)"}, {i = "-0.05000000075"})
	if v == nil then
	  gg.clearResults()
	  gg.toast("ViewModel X Unchanged")
	else
	  save12 = gg.getResults(400)
	  gg.editAll(v["i"], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,
	  0, -1)
	  gg.addListItems(save12)
	  gg.clearResults()
	  end
	
	gg.toast("ViewModel X Changed")
			end,
			off = function()
			
			end
	},

	{ 
		name = "Guns On Left",
				on = function()
				gg.setRanges(gg.REGION_ANONYMOUS)
		gg.searchNumber("-0.05000000075",gg.TYPE_FLOAT)
	    gg.getResults(99999)
		gg.editAll("-0.5", gg.TYPE_FLOAT)
		gg.clearResults()
		 		gg.toast("Guns On Left")
				end,
				off = function()
				
				end
		},

		{ 
			name = "Guns On Left For 4:3 Aspect Ratio",
					on = function()
					gg.setRanges(gg.REGION_ANONYMOUS)
			gg.searchNumber("-0.05000000075",gg.TYPE_FLOAT)
			gg.getResults(99999)
			gg.editAll("-0.18", gg.TYPE_FLOAT)
			gg.clearResults()
					 gg.toast("Guns On Left")
					end,
					off = function()
					
					end
			},

			{ 
				name = "Guns Centered",
						on = function()
						gg.setRanges(gg.REGION_ANONYMOUS)
				gg.searchNumber("-0.05000000075",gg.TYPE_FLOAT)
				gg.getResults(99999)
				gg.editAll("0", gg.TYPE_FLOAT)
				gg.clearResults()
						 gg.toast("Guns Centered")
						end,
						off = function()
						
						end
				},

				{ 
					name = "1.22 ViewModel FOV",
							on = function()
							gg.setRanges(gg.REGION_ANONYMOUS)
					gg.searchNumber("-0.05000000075",gg.TYPE_FLOAT)
					gg.getResults(99999)
					gg.editAll("-0.2", gg.TYPE_FLOAT)
					gg.clearResults()
							 gg.toast("1.22 ViewModel FOV")
							end,
							off = function()
							
							end
					},




	

}

xycro(Switch)
end



    function hackmenu5()
      function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = os.date("FireRate"),
{ 
name = "Legit FireRate",
on = function() 
    gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("60",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("50.01", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast('Legit FireRate')
	end,
	off = function()
	gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("50.01",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("60", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast('Legit FireRate Off')
	end
	},
	{ 
name = "Rapid Fire",
		on = function()
		gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("60",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("5.01", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast(' Rapid Fire')
		end,
		off = function()
		gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("5.01",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("60", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast('off')
		end
},
	{ 
name = "Super Rapid Fire",
on = function() 
    gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("60",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("1.01", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast('Super Rapid Fire')
	end,
	off = function()
	gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("1.01",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("60", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast('off')
	end
	},
	{ 
name = "Slow FireRate",
		on = function()
		gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("60",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("101.01", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast('Slow FireRate')
		end,
		off = function()
		gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("101.01",gg.TYPE_FLOAT)
            gg.getResults(100)
            gg.editAll("60", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast('off')
		end
},



}

xycro(Switch)
end


      function hackmenu6()
        function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = os.date("Fly"),
{ 
name = "Fly 3",
on = function() 
    patch(get_height,float3)
	end,
	off = function()
	patchQ(get_height,heightoff)
	end
	},
	{ 
name = "Fly 2",
		on = function()
		patch(get_height,float2)
		end,
		off = function()
		patchQ(get_height,heightoff)
		end
},
	

	{ 
name = "Back",
		on = function()
		gg.toast("return to main")
main()
		end,
		off = function()
		gg.toast("return to main")
main()
		end
},

}

xycro(Switch)
end


        


        function hackmenu7()
function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = os.date("Speed"),
{ 
name = "Usain Bolt ⚡",
on = function() 
    patch(getcurrentmaxspeed,float31)
	end,
	off = function()
	patchQ(getcurrentmaxspeed,speedoff)
	end
	},
	{ 
name = "Speed 2x",
		on = function()
		patch(getcurrentmaxspeed,float24)
		end,
		off = function()
		patchQ(getcurrentmaxspeed,speedoff)
		end
},
	{ 
name = "Speed 1.5x",
on = function() 
    patch(getcurrentmaxspeed,float14)
	end,
	off = function()
	patchQ(getcurrentmaxspeed,speedoff)
	end
	},
	{ 
name = "Legit Speed",
		on = function()
		patch(getcurrentmaxspeed,float5)
		end,
		off = function()
		patchQ(getcurrentmaxspeed,speedoff)
		end
},
	

}

xycro(Switch)
end





          function hackmenu8()
          function xycro(swtch)
local sucessCall = pcall(function()
if type(swtch) ~= "table"  then
return
end
if not(_G["data"]) then
_G["data"]  ={}
end
local strSwtch,count = tostring(swtch):gsub("-- table%((.-)%)",""),0
if not(data[strSwtch]) then
data[strSwtch] = {
keys = {},
values ={},
boolean={},
title = swtch.title
}
for i = 1,#swtch do
table.insert(data[strSwtch].boolean,false)
table.insert(data[strSwtch].keys, swtch[i].name)
table.insert(data[strSwtch].values, {on = swtch[i].on,off= swtch[i].off})
end
end
while(true) do
gg.setVisible(false)
chkd= gg.multiChoice(data[strSwtch].keys,data[strSwtch].boolean,data[strSwtch].title)
if chkd == nil then datag = 0 end
if not(chkd) then
break
end

for x = 1, #data[strSwtch].boolean do
if not(chkd[x]) and not(not(data[strSwtch].boolean[x])) then
data[strSwtch].boolean[x] = false
data[strSwtch].values[x].off()
elseif chkd[x] and not(data[strSwtch].boolean[x]) then
data[strSwtch].boolean[x] = true
data[strSwtch].values[x].on()
end
end
end
end)
if not(sucessCall) then
return
end
end

cfgh = 1



local Switch ={
	title = os.date("Security"),
{ 
name = "Anti-Cheat Bypass",
on = function() 

    
    
    patch(bypass,false1)
    patch(bypass1,false1)
patch(bypass2,false1)
patch(bypass3,false1)
patch(bypass4,false1)
patch(bypass5,false1)
patch(bypass6,false1)
    patch(bypass7,false1)
    patch(bypass8,false1)
    patch(bypass9,false1)
    patch(bypass10,false1)
    patch(bypass11,false1)
    patch(bypass12,false1)
    patch(bypass13,false1)
    patch(bypass14,false1)
    patch(bypass15,false1)
    patch(bypass16,false1)
    patch(bypass17,false1)
    patch(bypass18,false1)  
    patch(bypass19,false1)
    patch(bypass20,false1)
    patch(bypass21,false1)  
    patch(bypass22,false1)
    patch(bypass23,false1)
	patch(bypass24,false1)
	patch(bypass25,false1)
	patch(bypass26,false1)
    
    
    
  
    
    
    
        
    
    
	
	
	
    
	
	
	
    
gg.toast("Anti-Cheat Bypass")
    
    
    
    
    
    
   
    
    
    
    
	end,
	off = function()
	
	end
	},
	{ 
name = "Prevent GameData From Updating",
		on = function()
		patch(setgamedata,false1)
		end,
		off = function()
		patchQ(setgamedata,setgamedataoff)
		end
},

	{ 
name = "Spoof Account Age",
		on = function()
		valueFromClass("AnalyticsData", accountage, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(1000, gg.TYPE_DWORD)
gg.clearResults()

valueFromClass("AnalyticsData", ispayinguser, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(1, gg.TYPE_DWORD)
gg.clearResults()

valueFromClass("LoginData", isnewaccount, false, false, gg.TYPE_DWORD)
gg.getResults(9999)
gg.editAll(0, gg.TYPE_DWORD)
gg.clearResults()

patch(requestbanuser,false1)
patch(requestbanuser2,false1)
		end,
		off = function()
		
		end
},



}

xycro(Switch)
end
            
            
              


              function hackmenu9()
                local menu  = gg.multiChoice({
                     "Skin Changer",
                     "BACK"},
                nil,"Hack Menu")
                
                
                --cancel
                if menu == nil then 
                gg.setVisible(false)
                gg.toast("Minimize menu") 
                else
                
                --hack 1
                if menu[1] == true then
                   
                
                --hack 2
                if menu[2] == true then
                --put your hack here
                gg.alert("Hack 2 Done")
                end
                
                --hack 3
                if menu[3] == true then
                --put your hack here
                gg.alert("Hack 3 Done")
                end
                
                --hack 4
                if menu[4] == true then
                --put your hack here
                gg.alert("Hack 4 Done")
                end
                
                --hack 5
                if menu[5] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[6] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[7] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[8] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[9] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[10] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[11] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[12] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[13] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[14] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                if menu[15] == true then
                --put your hack here
                gg.alert("Hack 5 Done")
                end
                
                --BACK
                if menu[6] == true then
                gg.toast("return to main")
                main()
                end
                end
                end


      


function exit()
gg.alert('Script Has Been Exited')
os.exit()
end

while true do 
if gg.isVisible() then
gg.setVisible(false)
main()
end
end