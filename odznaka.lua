-- protected by rbx.lol
local _z3_a513d20 = "RBXE\001\000\001\002\000\002\012d\174I\156\158w{\203A\175\185\196[)\201\210lV\246\002\000\000N\176\186\209\240-d\206?\201\238*\013\142\142z\131h-\221\228\197\226\214\220jV\142\208H\2220U\225$\134\028<\209Yg\189\145\252.<\253\235\002\239\171\189\247_`\242\176\204<\159\182\176F\209\029 {\153n\168R\2205Vy\137\166\183\024\196y\216T\204J\220-T\237\022\149RI\180\234\136\161\010\201\214L\022\234\135UX\192\001>Y&\0046_\209ZL5\145*\028I\149\212\153(\221\148\">\191Q\154\140\219r\245\1317\2469\004B\1960\205U\143\194j\213\159\159\207~\022\184J\239/\134\160\167\255>\191\206h\147s\2526\252\206\214(\168\137\204m\174\197(,\226\187W!\006\238\031\172\138\191\"\172\196\031\138\026pD@}\202\131\029A4\2533P\2239~\165\246\006!\243\190q\225O*\130\228\156o\214:B\248\184R`\013?\002\219\206\188\2280\185)c\131BJ-3\199\176\252\220p\174,m\130\242\148\161#'C#\146\141\010N\162_\002\245>\144M0\024\230\005\001\233\\\008\227J\136\208\025r\2162\200@\250\146j\254\\\197~\239\202\224\021\238\016\234\025\190\183\185\182\158}\222\011\130Z\026\230\199\130\147\023#Kd\139\011,\137\189J\199\155\028p\169\242\238\024M/\1830\029\154\188\183\2409u\223w\182hs\186\136\214\248Lh\206\201\012\142\143\030\229\136!\245\131]\142\009\234\184\158\236Cn\253\178\173\019\020afQ\170\145\226\142\013\162\214\143\204\137\015\133\238U\224\199\002\150\002\142\178\222J\2080\183\168\\\231\004\1609\255\190\195\199d\139\132\018\231\185d\236\127d\161\231\0172\192_|y\005\014\251\247\172\164L\000:K{\255,\220\021\215\155P)\187g\184x[\25597~GB\167,\179\1445Et\137\212\218\205\182\005\237\173e\249\180g>$\1768<\171\003i\231\132\137\188k|\195I\163\208\200\183\184\229\131=l\248i\154f\224\027q\231\004=B[\170\176I\167\187\193X\183\182\218\003\182p\158\015\255\143l9\237e`S\135\127\237\010\023\208c\205e\024\246S\189$\009\230\003\237\240\153s_7n\159\169\252*\168\229I\181\204h\181\170\250\209g\016M\151\023\249\161\0239\028\147\2384bN\003\143\002\151\001\244p\192.\203s9\020\006\242\167\019R\238f$@m\204\1757:(RN\029\186@\173P\132\188\143v\001\198OD\234~\016\023\225\0051\140\215\153\240\170\239\196\224\164\163>\147D\234\133\127\240K\234\206\004\127\004\193{[\202\132\243\023X\208\029\137[\211\187|\030B\219\1867|2\25443\026\002q\128\017x;s$\200^\229l\208\225\207x39\162\181\172P\213>\134\220\234\183\224\211^\212o\254\130\176\242]\221\167\235\128\021\244\180\235\"MZ\234\217\127\232\190fY\163R5'u\156+>"
local _z0_68a2d1a = {244,148,29,156,181,237,52,155,7,207,160,19,150,170,71,165,155,65,217,34,218,250,146,144,245,46,49,231,167,3,56,210}
local _z14_c030328, _z27_6040b1f, _z7_1879091, _z28_57b30cc, _z6_3b13ffc, _z2_98ecc51, _z48_5502fb7, _z26_7cbd1d8, _z10_70ae724, _z23_24ad63d, _z46_cc4f831, _z9_a32d5da, _z43_50b7c68, _z17_72f61fc, _z55_7a05879, MAX_PROTOS, MAX_UPVALS, MAX_CONSTS, MAX_CODE, MAX_BYTES, MAX_POOL, _z38_93351d3, _z36_161ae41, _z29_082213b, _z54_6249770, _z18_16e7ebe, _z20_4141cc0, _z34_74c14f1, _z56_6b30cbb, _z35_8ecfbb3, __SC, _z50_c5d2e28, _z42_db66fc3
local _z4_6210e87 = 3
while true do
if _z4_6210e87 == 23 then
_z28_57b30cc = 1597218233
_z4_6210e87 = 28
elseif _z4_6210e87 == 35 then
_z38_93351d3 = function(S, start)
local n = #S
local pos = start
local function u8()
if pos > n then error() end
local v = _z10_70ae724(S, pos) pos = pos + 1 return v
end
local function take(k)
if pos + k - 1 > n then error() end
local off = pos pos = pos + k return off
end
local function u16() local lo = u8() local hi = u8() return lo + hi * 256 end
local function uleb()
local result, shift, cnt = 0, 1, 0
while true do
local b = u8() cnt = cnt + 1
if cnt > 5 then error() end
result = result + (b % 128) * shift
if b < 128 then
if result > 4294967295 then error() end
return result
end
shift = shift * 128
end
end
local function sleb()
local result, shift, cnt = 0, 1, 0
while true do
local b = u8() cnt = cnt + 1
if cnt > 5 then error() end
result = result + (b % 128) * shift
shift = shift * 128
if b < 128 then
if b % 128 >= 64 then result = result - shift end
if result < -2147483648 or result > 2147483647 then error() end
return result
end
end
end
local function count(max)
local c = uleb()
if c > max then error() end
if c > n - pos + 1 then error() end
return c
end
local function eof() if pos ~= n + 1 then error() end end
local function at() return pos end
return u8, take, u16, uleb, sleb, count, eof, at
end
_z4_6210e87 = 34
elseif _z4_6210e87 == 1 then
MAX_CONSTS = 1048576
_z4_6210e87 = 33
elseif _z4_6210e87 == 39 then
__SC = _z54_6249770.sc
_z4_6210e87 = 24 + ((_z10_70ae724(_z36_161ae41,1)~=82) and 2254 or 0)
elseif _z4_6210e87 == 15 then
_z35_8ecfbb3 = _z54_6249770.pool
_z4_6210e87 = 39 + ((_z10_70ae724(_z36_161ae41,3)~=88) and 1129 or 0)
elseif _z4_6210e87 == 29 then
_z2_98ecc51 = bit32.bxor(bit32.bxor(_z2_98ecc51, bit32.lshift(_z2_98ecc51, 5)), math.floor(Vector2.new(20,21).Magnitude + 0.5))
_z4_6210e87 = 19
elseif _z4_6210e87 == 5 then
MAX_UPVALS = 65536
_z4_6210e87 = 1
elseif _z4_6210e87 == 19 then
_z2_98ecc51 = bit32.bxor(bit32.bxor(_z2_98ecc51, bit32.lshift(_z2_98ecc51, 5)), math.floor(Vector3.new(4,13,16):Dot(Vector3.new(1,1,1)) + 0.5))
_z4_6210e87 = 21
elseif _z4_6210e87 == 37 then
_z27_6040b1f = table.pack or function(...) return { n = select('#', ...), ... } end
_z4_6210e87 = 40
elseif _z4_6210e87 == 2 then
_z2_98ecc51 = bit32.bxor(bit32.bxor(_z2_98ecc51, bit32.lshift(_z2_98ecc51, 5)), math.floor((CFrame.new(3,5,7) * CFrame.new(2,4,6)).X + 0.5))
_z4_6210e87 = 29
elseif _z4_6210e87 == 6 then
_z23_24ad63d = string.sub
_z4_6210e87 = 25
elseif _z4_6210e87 == 32 then
_z42_db66fc3 = function(pi, U, ...)
local pr = _z50_c5d2e28(pi)
local K, C = pr.K, pr.C
local B0 = {}
local top = 0
local np = pr.np
for i = 0, np - 1 do B0[i] = select(i + 1, ...) end
local VA, VAn = {}, 0
if pr.va then
VAn = select('#', ...) - np
if VAn < 0 then VAn = 0 end
for i = 1, VAn do VA[i] = select(np + i, ...) end
end
local pc = 0
while true do
local ins = C[pc]
local op, a, b, c = ins[2], ins[4], ins[1], ins[3]
if op < 14 then
if op < 7 then
if op < 3 then
if op < 1 then
if op == 0 then
B0[a] = _z7_1879091[K[b]]
end
else
if op < 2 then
if op == 1 then
B0[a] = K[b]
end
else
if op == 2 then
local pa = a + (0)
if b < 0 then
for i = 1, VAn do B0[pa + i - 1] = VA[i] end
top = a + VAn
else
for i = 0, b - 1 do B0[pa + i] = VA[i + 1] end
end
end
end
end
else
if op < 5 then
if op < 4 then
if op == 3 then
local pa = a + (0)
local f = B0[pa]
local nargs = b
if nargs < 0 then nargs = top - a - 1 end
local args = {}
for i = 1, nargs do args[i] = B0[pa + i] end
local res = _z27_6040b1f(f(_z14_c030328(args, 1, nargs)))
if c < 0 then
for i = 1, res.n do B0[pa + i - 1] = res[i] end
top = a + res.n
else
for i = 0, c - 1 do B0[pa + i] = res[i + 1] end
end
end
else
if op == 4 then
B0[a] = B0[b][B0[c]]
end
end
else
if op < 6 then
if op == 5 then
B0[a] = B0[b]
end
else
if op == 6 then
B0[a] = B0[b] * B0[c]
end
end
end
end
else
if op < 10 then
if op < 8 then
if op == 7 then
local __h1 = _z7_1879091[K[b]] B0[a] = __h1
end
else
if op < 9 then
if op == 8 then
local __h1 = K[b] B0[a] = __h1
end
else
if op == 9 then
local __h1 = B0[b][B0[c]] B0[a] = __h1
end
end
end
else
if op < 12 then
if op < 11 then
if op == 10 then
B0[a] = B0[b] + B0[c]
end
else
if op == 11 then
B0[a] = (B0[b] ~= B0[c])
end
end
else
if op < 13 then
if op == 12 then
if not B0[a] then pc = b continue end
end
else
if op == 13 then
B0[b] = B0[c] * K[a]
end
end
end
end
end
else
if op < 21 then
if op < 17 then
if op < 15 then
if op == 14 then
pc = a
continue
end
else
if op < 16 then
if op == 15 then
local __h2 = _z7_1879091[K[b]] B0[a] = __h2
end
else
if op == 16 then
local __h2 = K[b] B0[a] = __h2
end
end
end
else
if op < 19 then
if op < 18 then
if op == 17 then
local __h2 = B0[b][B0[c]] B0[a] = __h2
end
else
if op == 18 then
local val = B0[c] * K[a]
B0[b] = val
end
end
else
if op < 20 then
if op == 19 then
B0[a] = B0[b]
B0[c] = B0[b]
end
else
if op == 20 then
B0[a] = B0[b] % B0[c]
end
end
end
end
else
if op < 25 then
if op < 23 then
if op < 22 then
if op == 21 then
B0[a] = (B0[b] == B0[c])
end
else
if op == 22 then
local vv = K[a]
local w = B0[c] * vv
B0[b] = w
end
end
else
if op < 24 then
if op == 23 then
local v = B0[a]
B0[b] = v
local q = B0[a] * B0[b]
B0[c] = q
end
else
if op == 24 then
local m = B0[c] % K[a]
B0[b] = m
end
end
end
else
if op < 27 then
if op < 26 then
if op == 25 then
local f0 = (B0[c] == K[a])
B0[b] = f0
end
else
if op == 26 then
local __h1 = B0[b] B0[a] = __h1
end
end
else
if op < 28 then
if op == 27 then
local __h2 = B0[b] B0[a] = __h2
end
else
if op == 28 then
local pa = a + (0)
local n = b
if n < 0 then n = top - a end
local rets = {}
for i = 0, n - 1 do rets[i + 1] = B0[pa + i] end
return _z14_c030328(rets, 1, n)
end
end
end
end
end
end
pc = pc + 1
end
end
_z4_6210e87 = 12 + ((_z6_3b13ffc~=993774391) and 402 or 0)
elseif _z4_6210e87 == 31 then
_z10_70ae724 = string.byte
_z4_6210e87 = 6
elseif _z4_6210e87 == 12 then
return _z42_db66fc3(0, {}, ...)
elseif _z4_6210e87 == 40 then
_z7_1879091 = _G
_z4_6210e87 = 14
elseif _z4_6210e87 == 11 then
_z29_082213b = function(S)
local u8, take, u16, uleb, sleb, count, eof, at = _z38_93351d3(S, 1)
if u8() ~= 82 or u8() ~= 66 or u8() ~= 88 or u8() ~= 79 then error() end
if u16() ~= 2 then error() end
local fo = { u8(), u8(), u8(), u8() }
local seen = {}
for i = 1, 4 do local f = fo[i] if f > 3 or seen[f] then error() end seen[f] = true end
local disp = u8() if disp > 1 then error() end
local npool = count(MAX_POOL)
local pool = {}
for i = 1, npool do local ps = uleb() local plen = count(MAX_BYTES) local poff = take(plen) pool[i] = { start = ps, off = poff, len = plen } end
local nprotos = count(MAX_PROTOS)
local off = {}
local sc = {}
local acc = 678577
for gi = 0, nprotos - 1 do
off[gi] = at()
sc[gi] = acc
uleb() u8()
local nup = count(MAX_UPVALS)
for i = 1, nup do local kind = u8() if kind > 1 then error() end uleb() end
local nk = count(MAX_CONSTS)
for i = 1, nk do
local tag = u8()
if tag == 0 then
elseif tag == 1 then u8()
elseif tag == 2 then
local len = count(MAX_BYTES) local off2 = take(len)
for j = 0, len - 1 do if _z10_70ae724(S, off2 + j) >= 128 then error() end end
elseif tag == 3 then local ss = uleb() local rs = _z48_5502fb7(ss, acc) acc = (acc + rs) % 4294967296 local len = count(MAX_BYTES) take(len)
elseif tag == 4 then uleb() local len = count(MAX_BYTES) take(len)
elseif tag == 5 then local idx = uleb() if idx >= npool then error() end
else error() end
end
local ncode = count(MAX_CODE)
for i = 1, ncode do local _z52_99ddfa2 = uleb() sleb() sleb() sleb() _z6_3b13ffc = _z48_5502fb7(_z48_5502fb7(_z6_3b13ffc, bit32.lshift(_z6_3b13ffc, 5)), _z52_99ddfa2) end
end
eof()
return { S = S, fo = fo, disp = disp, n = nprotos, off = off, pool = pool, sc = sc }
end
_z4_6210e87 = 4 + ((_z10_70ae724(_z36_161ae41,1)~=82) and 829 or 0)
elseif _z4_6210e87 == 30 then
_z17_72f61fc = function(t, n)
local parts, pi, i = {}, 0, 1
while i <= n do
local j = i + 999 if j > n then j = n end
pi = pi + 1 parts[pi] = _z26_7cbd1d8(_z14_c030328(t, i, j)) i = j + 1
end
return table.concat(parts)
end
_z4_6210e87 = 9
elseif _z4_6210e87 == 14 then
do local ok, env = pcall(function() return getfenv(0) end) if ok and type(env) == 'table' then _z7_1879091 = env end end
_z4_6210e87 = 23
elseif _z4_6210e87 == 8 then
_z6_3b13ffc = _z28_57b30cc
_z4_6210e87 = 20
elseif _z4_6210e87 == 21 then
_z48_5502fb7 = bit32.bxor
_z4_6210e87 = 17
elseif _z4_6210e87 == 36 then
_z9_a32d5da = function(t)
t = string.gsub(t, '_', '')
local p = string.lower(string.sub(t, 1, 2))
if p == '0b' then return tonumber(string.sub(t, 3), 2) end
return tonumber(t)
end
_z4_6210e87 = 16
elseif _z4_6210e87 == 25 then
_z46_cc4f831 = function(S, off, len, start)
local st = start
local out = table.create and table.create(len) or {}
for i = 1, len do
st = (st * _z48_5502fb7(3996856296, _z48_5502fb7(_z6_3b13ffc, _z2_98ecc51)) + _z48_5502fb7(1207450062, _z48_5502fb7(_z6_3b13ffc, _z2_98ecc51))) % 4294967296
local k = math.floor(st / 16777216) % 256
out[i] = _z26_7cbd1d8(_z48_5502fb7(_z10_70ae724(S, off + i - 1), k))
end
return table.concat(out)
end
_z4_6210e87 = 36
elseif _z4_6210e87 == 24 then
_z50_c5d2e28 = function(gi)
local m = _z56_6b30cbb[gi]
if m then return m end
local u8, take, u16, uleb, sleb, count, eof, at = _z38_93351d3(_z18_16e7ebe, _z20_4141cc0[gi])
local np = uleb()
local va = u8() ~= 0
local nup = count(MAX_UPVALS)
local UP = {}
for i = 1, nup do local kind = u8() UP[i] = { kind, uleb() } end
local nk = count(MAX_CONSTS)
local K = {}
local acc = __SC[gi]
for i = 0, nk - 1 do
local tag = u8()
if tag == 1 then K[i] = u8() ~= 0
elseif tag == 2 then local len = count(MAX_BYTES) local off = take(len) K[i] = _z9_a32d5da(_z23_24ad63d(_z18_16e7ebe, off, off + len - 1))
elseif tag == 3 then local ss = uleb() local rs = _z48_5502fb7(ss, acc) acc = (acc + rs) % 4294967296 local len = count(MAX_BYTES) local off = take(len) K[i] = _z46_cc4f831(_z18_16e7ebe, off, len, rs)
elseif tag == 4 then local start = uleb() local len = count(MAX_BYTES) local off = take(len) K[i] = _z9_a32d5da(_z46_cc4f831(_z18_16e7ebe, off, len, start))
elseif tag == 5 then local idx = uleb() local pe = _z35_8ecfbb3[idx + 1] K[i] = _z46_cc4f831(_z18_16e7ebe, pe.off, pe.len, pe.start) end
end
local ncode = count(MAX_CODE)
local C = {}
local fo = _z34_74c14f1
for i = 0, ncode - 1 do
local op = uleb() local a = sleb() local b = sleb() local c = sleb()
local vals = { op, a, b, c }
C[i] = { vals[fo[1] + 1], vals[fo[2] + 1], vals[fo[3] + 1], vals[fo[4] + 1] }
end
m = { np = np, va = va, K = K, C = C, UP = UP }
_z56_6b30cbb[gi] = m
return m
end
_z4_6210e87 = 32 + ((_z6_3b13ffc~=993774391) and 762 or 0)
elseif _z4_6210e87 == 38 then
_z18_16e7ebe, _z20_4141cc0, _z34_74c14f1, _z56_6b30cbb = _z54_6249770.S, _z54_6249770.off, _z54_6249770.fo, {}
_z4_6210e87 = 15 + ((_z2_98ecc51~=3574251118) and 641 or 0)
elseif _z4_6210e87 == 34 then
_z36_161ae41 = _z55_7a05879()
_z4_6210e87 = 11 + ((_z10_70ae724(_z36_161ae41,1)~=82) and 3623 or 0)
elseif _z4_6210e87 == 17 then
_z26_7cbd1d8 = string.char
_z4_6210e87 = 31
elseif _z4_6210e87 == 22 then
MAX_PROTOS = 1048576
_z4_6210e87 = 5
elseif _z4_6210e87 == 3 then
_z14_c030328 = table.unpack or unpack
_z4_6210e87 = 37
elseif _z4_6210e87 == 18 then
_z2_98ecc51 = bit32.bxor(bit32.bxor(_z2_98ecc51, bit32.lshift(_z2_98ecc51, 5)), math.floor(Vector3.new(1,4,8).Magnitude + 0.5))
_z4_6210e87 = 2
elseif _z4_6210e87 == 13 then
_z2_98ecc51 = bit32.bxor(bit32.bxor(_z2_98ecc51, bit32.lshift(_z2_98ecc51, 5)), math.floor(Vector3.new(2,3,6).Magnitude + 0.5))
_z4_6210e87 = 27
elseif _z4_6210e87 == 9 then
_z55_7a05879 = function()
local E = _z3_a513d20
local n = #E
if n < 49 then error() end
if _z10_70ae724(E,1) ~= 82 or _z10_70ae724(E,2) ~= 66 or _z10_70ae724(E,3) ~= 88 or _z10_70ae724(E,4) ~= 69 then error() end
if _z10_70ae724(E,5) ~= 1 or _z10_70ae724(E,6) ~= 0 then error() end
if _z10_70ae724(E,7) ~= 1 then error() end
local ct_len = _z10_70ae724(E,30) + _z10_70ae724(E,31)*256 + _z10_70ae724(E,32)*65536 + _z10_70ae724(E,33)*16777216
if 49 + ct_len ~= n then error() end
local aad = {}
for i = 1, 17 do aad[i] = _z10_70ae724(E, i) end
aad[18] = _z10_70ae724(E,30) aad[19] = _z10_70ae724(E,31) aad[20] = _z10_70ae724(E,32) aad[21] = _z10_70ae724(E,33)
local nonce = {}
for i = 1, 12 do nonce[i] = _z10_70ae724(E, 17 + i) end
local ct = {}
for i = 1, ct_len do ct[i] = _z10_70ae724(E, 33 + i) end
local tag = {}
for i = 1, 16 do tag[i] = _z10_70ae724(E, 33 + ct_len + i) end
local pt = _z43_50b7c68(_z0_68a2d1a, nonce, aad, 21, ct, ct_len, tag)
if pt == nil then error() end
return _z17_72f61fc(pt, ct_len)
end
_z4_6210e87 = 22
elseif _z4_6210e87 == 10 then
MAX_POOL = 1048576
_z4_6210e87 = 35
elseif _z4_6210e87 == 20 then
_z2_98ecc51 = 1750992599
_z4_6210e87 = 26
elseif _z4_6210e87 == 28 then
for __i = 1, 11 do
_z28_57b30cc = bit32.bxor(_z28_57b30cc, bit32.lshift(_z28_57b30cc, 13))
_z28_57b30cc = bit32.bxor(_z28_57b30cc, bit32.rshift(_z28_57b30cc, 17))
_z28_57b30cc = bit32.bxor(_z28_57b30cc, bit32.lshift(_z28_57b30cc, 5))
end
_z4_6210e87 = 8
elseif _z4_6210e87 == 27 then
_z2_98ecc51 = bit32.bxor(bit32.bxor(_z2_98ecc51, bit32.lshift(_z2_98ecc51, 5)), math.floor(Vector2.new(5,12).Magnitude + 0.5))
_z4_6210e87 = 18
elseif _z4_6210e87 == 33 then
MAX_CODE = 4194304
_z4_6210e87 = 7
elseif _z4_6210e87 == 26 then
_z2_98ecc51 = bit32.bxor(bit32.bxor(_z2_98ecc51, bit32.lshift(_z2_98ecc51, 5)), math.floor(Vector3.new(1,2,2):Cross(Vector3.new(2,-2,1)):Dot(Vector3.new(1,1,1)) + 0.5))
_z4_6210e87 = 13
elseif _z4_6210e87 == 7 then
MAX_BYTES = 67108864
_z4_6210e87 = 10
elseif _z4_6210e87 == 16 then
do

local bxor, lrot, band, bor = bit32.bxor, bit32.lrotate, bit32.band, bit32.bor
local floor = math.floor
local function u32(x) return x % 4294967296 end
local function qr(s, a, b, c, d)
s[a] = u32(s[a] + s[b]); s[d] = lrot(bxor(s[d], s[a]), 16)
s[c] = u32(s[c] + s[d]); s[b] = lrot(bxor(s[b], s[c]), 12)
s[a] = u32(s[a] + s[b]); s[d] = lrot(bxor(s[d], s[a]), 8)
s[c] = u32(s[c] + s[d]); s[b] = lrot(bxor(s[b], s[c]), 7)
end
local function _z44_d0684e1(b, off)
return b[off] + b[off + 1] * 256 + b[off + 2] * 65536 + b[off + 3] * 16777216
end
local function _z16_e0b5a84(key, counter, nonce)
local s = {
bit32.bxor(0xad393cc9, 0xcc4944ac), bit32.bxor(0x36f29217, 0x05d2f679), bit32.bxor(0x410c4df1, 0x386e60c3), bit32.bxor(0x2c8eba09, 0x47aedf7d),
_z44_d0684e1(key, 1), _z44_d0684e1(key, 5), _z44_d0684e1(key, 9), _z44_d0684e1(key, 13),
_z44_d0684e1(key, 17), _z44_d0684e1(key, 21), _z44_d0684e1(key, 25), _z44_d0684e1(key, 29),
counter, _z44_d0684e1(nonce, 1), _z44_d0684e1(nonce, 5), _z44_d0684e1(nonce, 9),
}
local w = {}
for i = 1, 16 do w[i] = s[i] end
for _ = 1, 10 do
qr(w,1,5,9,13); qr(w,2,6,10,14); qr(w,3,7,11,15); qr(w,4,8,12,16)
qr(w,1,6,11,16); qr(w,2,7,12,13); qr(w,3,8,9,14); qr(w,4,5,10,15)
end
local out = {}
for i = 1, 16 do
local v = u32(w[i] + s[i])
local b = (i - 1) * 4
out[b+1] = v % 256; out[b+2] = floor(v/256) % 256
out[b+3] = floor(v/65536) % 256; out[b+4] = floor(v/16777216) % 256
end
return out
end
local function _z13_affa2c8(key, counter0, nonce, data, dlen)
local out, block = {}, nil
for i = 0, dlen - 1 do
local bi = i % 64
if bi == 0 then block = _z16_e0b5a84(key, counter0 + floor(i/64), nonce) end
out[i+1] = bxor(data[i+1], block[bi+1])
end
return out
end
local function _z53_baebeb1(bytes, off, nbytes, append)
local L = {0,0,0,0,0,0,0,0,0,0}
local acc, accbits, li = 0, 0, 1
for i = 0, nbytes - 1 do
acc = acc + bytes[off+i] * (2 ^ accbits); accbits = accbits + 8
while accbits >= 13 do L[li] = acc % 8192; acc = floor(acc/8192); accbits = accbits - 13; li = li + 1 end
end
if append then
acc = acc + (2 ^ accbits); accbits = accbits + 1
while accbits >= 13 and li <= 10 do L[li] = acc % 8192; acc = floor(acc/8192); accbits = accbits - 13; li = li + 1 end
end
if li <= 10 then L[li] = L[li] + acc end
return L
end
local function _z41_e768666(a)
local out = {}
local acc, accbits, k = 0, 0, 1
for i = 1, 10 do
acc = acc + a[i] * (2 ^ accbits); accbits = accbits + 13
while accbits >= 8 and k <= 16 do out[k] = acc % 256; acc = floor(acc/256); accbits = accbits - 8; k = k + 1 end
end
while k <= 16 do out[k] = acc % 256; acc = floor(acc/256); k = k + 1 end
return out
end
local function _z8_064c690(a, n)
local r, c = {}, 0
for k = 1, 10 do local v = a[k] + n[k] + c; r[k] = v % 8192; c = floor(v/8192) end
while c > 0 do
local v = r[1] + 5 * c; r[1] = v % 8192; c = floor(v/8192)
local k = 2
while c > 0 and k <= 10 do v = r[k] + c; r[k] = v % 8192; c = floor(v/8192); k = k + 1 end
end
return r
end
local function _z39_b52b6aa(a, b)
local d = {}
for k = 1, 19 do d[k] = 0 end
for i = 1, 10 do
local ai = a[i]
if ai ~= 0 then for j = 1, 10 do d[i+j-1] = d[i+j-1] + ai * b[j] end end
end
for k = 19, 11, -1 do d[k-10] = d[k-10] + 5 * d[k]; d[k] = 0 end
local c = 0
for k = 1, 10 do local v = d[k] + c; d[k] = v % 8192; c = floor(v/8192) end
while c > 0 do
local v = d[1] + 5 * c; d[1] = v % 8192; c = floor(v/8192)
local k = 2
while c > 0 and k <= 10 do v = d[k] + c; d[k] = v % 8192; c = floor(v/8192); k = k + 1 end
end
local r = {}
for k = 1, 10 do r[k] = d[k] end
return r
end
local _z25_89d62ea = {8187,8191,8191,8191,8191,8191,8191,8191,8191,8191}
local function _z30_71500f5(a)
local diff, borrow = {}, 0
for k = 1, 10 do
local v = a[k] - _z25_89d62ea[k] - borrow
if v < 0 then v = v + 8192; borrow = 1 else borrow = 0 end
diff[k] = v
end
if borrow == 0 then return diff else return a end
end
local function _z33_683617e(rkey, data, dlen)
local r = {}
for i = 1, 16 do r[i] = rkey[i] end
r[4] = band(r[4],15); r[8] = band(r[8],15); r[12] = band(r[12],15); r[16] = band(r[16],15)
r[5] = band(r[5],252); r[9] = band(r[9],252); r[13] = band(r[13],252)
local rl = _z53_baebeb1(r, 1, 16, false)
local s = {}
for i = 1, 16 do s[i] = rkey[16+i] end
local a = {0,0,0,0,0,0,0,0,0,0}
local i = 0
while i < dlen do
local blen = math.min(16, dlen - i)
a = _z8_064c690(a, _z53_baebeb1(data, i+1, blen, true))
a = _z39_b52b6aa(rl, a)
i = i + blen
end
a = _z30_71500f5(a)
local ab = _z41_e768666(a)
local tag, c = {}, 0
for k = 1, 16 do local v = ab[k] + s[k] + c; tag[k] = v % 256; c = floor(v/256) end
return tag
end
local function _z45_9981d81(key, nonce)
local block = _z16_e0b5a84(key, 0, nonce)
local _z31_06e560b = {}
for i = 1, 32 do _z31_06e560b[i] = block[i] end
return _z31_06e560b
end
local function _z22_20e57c6(aad, alen, ct, clen)
local mac, mi = {}, 0
for i = 1, alen do mi = mi + 1; mac[mi] = aad[i] end
local pa = alen % 16
if pa ~= 0 then for _ = 1, 16 - pa do mi = mi + 1; mac[mi] = 0 end end
for i = 1, clen do mi = mi + 1; mac[mi] = ct[i] end
local pc = clen % 16
if pc ~= 0 then for _ = 1, 16 - pc do mi = mi + 1; mac[mi] = 0 end end
local function le64(len)
local x = len
for _ = 1, 4 do mi = mi + 1; mac[mi] = x % 256; x = floor(x/256) end
for _ = 1, 4 do mi = mi + 1; mac[mi] = 0 end
end
le64(alen); le64(clen)
return mac, mi
end

function _z43_50b7c68(key, nonce, aad, alen, ct, clen, tag)
local _z31_06e560b = _z45_9981d81(key, nonce)
local mac, maclen = _z22_20e57c6(aad, alen, ct, clen)
local expected = _z33_683617e(_z31_06e560b, mac, maclen)
local diff = 0
for i = 1, 16 do diff = bor(diff, bxor(expected[i], tag[i])) end
if diff ~= 0 then return nil end
return _z13_affa2c8(key, 1, nonce, ct, clen)
end
end
_z4_6210e87 = 30
elseif _z4_6210e87 == 4 then
_z54_6249770 = _z29_082213b(_z36_161ae41)
_z4_6210e87 = 38 + ((_z2_98ecc51~=3574251118) and 2621 or 0)
end
end
