-- s0341823
-- need better error message for maximum # of columns in order by / group by

set names ascii;
create database 'test.fdb';

recreate table test (
   i000 integer,
   i001 integer,
   i002 integer,
   i003 integer,
   i004 integer,
   i005 integer,
   i006 integer,
   i007 integer,
   i008 integer,
   i009 integer,

   i010 integer,
   i011 integer,
   i012 integer,
   i013 integer,
   i014 integer,
   i015 integer,
   i016 integer,
   i017 integer,
   i018 integer,
   i019 integer,

   i020 integer,
   i021 integer,
   i022 integer,
   i023 integer,
   i024 integer,
   i025 integer,
   i026 integer,
   i027 integer,
   i028 integer,
   i029 integer,

   i030 integer,
   i031 integer,
   i032 integer,
   i033 integer,
   i034 integer,
   i035 integer,
   i036 integer,
   i037 integer,
   i038 integer,
   i039 integer,

   i040 integer,
   i041 integer,
   i042 integer,
   i043 integer,
   i044 integer,
   i045 integer,
   i046 integer,
   i047 integer,
   i048 integer,
   i049 integer,

   i050 integer,
   i051 integer,
   i052 integer,
   i053 integer,
   i054 integer,
   i055 integer,
   i056 integer,
   i057 integer,
   i058 integer,
   i059 integer,

   i060 integer,
   i061 integer,
   i062 integer,
   i063 integer,
   i064 integer,
   i065 integer,
   i066 integer,
   i067 integer,
   i068 integer,
   i069 integer,

   i070 integer,
   i071 integer,
   i072 integer,
   i073 integer,
   i074 integer,
   i075 integer,
   i076 integer,
   i077 integer,
   i078 integer,
   i079 integer,

   i080 integer,
   i081 integer,
   i082 integer,
   i083 integer,
   i084 integer,
   i085 integer,
   i086 integer,
   i087 integer,
   i088 integer,
   i089 integer,

   i090 integer,
   i091 integer,
   i092 integer,
   i093 integer,
   i094 integer,
   i095 integer,
   i096 integer,
   i097 integer,
   i098 integer,
   i099 integer,

   i100 integer,
   i101 integer,
   i102 integer,
   i103 integer,
   i104 integer,
   i105 integer,
   i106 integer,
   i107 integer,
   i108 integer,
   i109 integer,

   i110 integer,
   i111 integer,
   i112 integer,
   i113 integer,
   i114 integer,
   i115 integer,
   i116 integer,
   i117 integer,
   i118 integer,
   i119 integer,

   i120 integer,
   i121 integer,
   i122 integer,
   i123 integer,
   i124 integer,
   i125 integer,
   i126 integer,
   i127 integer,
   i128 integer,
   i129 integer,

   i130 integer,
   i131 integer,
   i132 integer,
   i133 integer,
   i134 integer,
   i135 integer,
   i136 integer,
   i137 integer,
   i138 integer,
   i139 integer,

   i140 integer,
   i141 integer,
   i142 integer,
   i143 integer,
   i144 integer,
   i145 integer,
   i146 integer,
   i147 integer,
   i148 integer,
   i149 integer,

   i150 integer,
   i151 integer,
   i152 integer,
   i153 integer,
   i154 integer,
   i155 integer,
   i156 integer,
   i157 integer,
   i158 integer,
   i159 integer,

   i160 integer,
   i161 integer,
   i162 integer,
   i163 integer,
   i164 integer,
   i165 integer,
   i166 integer,
   i167 integer,
   i168 integer,
   i169 integer,

   i170 integer,
   i171 integer,
   i172 integer,
   i173 integer,
   i174 integer,
   i175 integer,
   i176 integer,
   i177 integer,
   i178 integer,
   i179 integer,

   i180 integer,
   i181 integer,
   i182 integer,
   i183 integer,
   i184 integer,
   i185 integer,
   i186 integer,
   i187 integer,
   i188 integer,
   i189 integer,

   i190 integer,
   i191 integer,
   i192 integer,
   i193 integer,
   i194 integer,
   i195 integer,
   i196 integer,
   i197 integer,
   i198 integer,
   i199 integer,

   i200 integer,
   i201 integer,
   i202 integer,
   i203 integer,
   i204 integer,
   i205 integer,
   i206 integer,
   i207 integer,
   i208 integer,
   i209 integer,

   i210 integer,
   i211 integer,
   i212 integer,
   i213 integer,
   i214 integer,
   i215 integer,
   i216 integer,
   i217 integer,
   i218 integer,
   i219 integer,

   i220 integer,
   i221 integer,
   i222 integer,
   i223 integer,
   i224 integer,
   i225 integer,
   i226 integer,
   i227 integer,
   i228 integer,
   i229 integer,

   i230 integer,
   i231 integer,
   i232 integer,
   i233 integer,
   i234 integer,
   i235 integer,
   i236 integer,
   i237 integer,
   i238 integer,
   i239 integer,

   i240 integer,
   i241 integer,
   i242 integer,
   i243 integer,
   i244 integer,
   i245 integer,
   i246 integer,
   i247 integer,
   i248 integer,
   i249 integer,

   i250 integer,
   i251 integer,
   i252 integer,
   i253 integer,
   i254 integer,
   i255 integer,
   i256 integer,
   i257 integer,
   i258 integer,
   i259 integer,

   i260 integer,
   i261 integer,
   i262 integer,
   i263 integer,
   i264 integer,
   i265 integer,
   i266 integer,
   i267 integer,
   i268 integer,
   i269 integer,

   i270 integer,
   i271 integer,
   i272 integer,
   i273 integer,
   i274 integer,
   i275 integer,
   i276 integer,
   i277 integer,
   i278 integer,
   i279 integer,

   i280 integer,
   i281 integer,
   i282 integer,
   i283 integer,
   i284 integer,
   i285 integer,
   i286 integer,
   i287 integer,
   i288 integer,
   i289 integer,

   i290 integer,
   i291 integer,
   i292 integer,
   i293 integer,
   i294 integer,
   i295 integer,
   i296 integer,
   i297 integer,
   i298 integer,
   i299 integer,

   i300 integer,
   i301 integer,
   i302 integer,
   i303 integer,
   i304 integer,
   i305 integer,
   i306 integer,
   i307 integer,
   i308 integer,
   i309 integer,

   i310 integer,
   i311 integer,
   i312 integer,
   i313 integer,
   i314 integer,
   i315 integer,
   i316 integer,
   i317 integer,
   i318 integer,
   i319 integer,

   i320 integer,
   i321 integer,
   i322 integer,
   i323 integer,
   i324 integer,
   i325 integer,
   i326 integer,
   i327 integer,
   i328 integer,
   i329 integer,

   i330 integer,
   i331 integer,
   i332 integer,
   i333 integer,
   i334 integer,
   i335 integer,
   i336 integer,
   i337 integer,
   i338 integer,
   i339 integer,

   i340 integer,
   i341 integer,
   i342 integer,
   i343 integer,
   i344 integer,
   i345 integer,
   i346 integer,
   i347 integer,
   i348 integer,
   i349 integer,

   i350 integer,
   i351 integer,
   i352 integer,
   i353 integer,
   i354 integer,
   i355 integer,
   i356 integer,
   i357 integer,
   i358 integer,
   i359 integer,

   i360 integer,
   i361 integer,
   i362 integer,
   i363 integer,
   i364 integer,
   i365 integer,
   i366 integer,
   i367 integer,
   i368 integer,
   i369 integer,

   i370 integer,
   i371 integer,
   i372 integer,
   i373 integer,
   i374 integer,
   i375 integer,
   i376 integer,
   i377 integer,
   i378 integer,
   i379 integer,

   i380 integer,
   i381 integer,
   i382 integer,
   i383 integer,
   i384 integer,
   i385 integer,
   i386 integer,
   i387 integer,
   i388 integer,
   i389 integer,

   i390 integer,
   i391 integer,
   i392 integer,
   i393 integer,
   i394 integer,
   i395 integer,
   i396 integer,
   i397 integer,
   i398 integer,
   i399 integer )
;


select i000,i001,i002 from test group by
i000,
i001,
i002,
i003,
i004,
i005,
i006,
i007,
i008,
i009,
i010,
i011,
i012,
i013,
i014,
i015,
i016,
i017,
i018,
i019,
i020,
i021,
i022,
i023,
i024,
i025,
i026,
i027,
i028,
i029,
i030,
i031,
i032,
i033,
i034,
i035,
i036,
i037,
i038,
i039,
i040,
i041,
i042,
i043,
i044,
i045,
i046,
i047,
i048,
i049,
i050,
i051,
i052,
i053,
i054,
i055,
i056,
i057,
i058,
i059,
i060,
i061,
i062,
i063,
i064,
i065,
i066,
i067,
i068,
i069,
i070,
i071,
i072,
i073,
i074,
i075,
i076,
i077,
i078,
i079,
i080,
i081,
i082,
i083,
i084,
i085,
i086,
i087,
i088,
i089,
i090,
i091,
i092,
i093,
i094,
i095,
i096,
i097,
i098,
i099,
i100,
i101,
i102,
i103,
i104,
i105,
i106,
i107,
i108,
i109,
i110,
i111,
i112,
i113,
i114,
i115,
i116,
i117,
i118,
i119,
i120,
i121,
i122,
i123,
i124,
i125,
i126,
i127,
i128,
i129,
i130,
i131,
i132,
i133,
i134,
i135,
i136,
i137,
i138,
i139,
i140,
i141,
i142,
i143,
i144,
i145,
i146,
i147,
i148,
i149,
i150,
i151,
i152,
i153,
i154,
i155,
i156,
i157,
i158,
i159,
i160,
i161,
i162,
i163,
i164,
i165,
i166,
i167,
i168,
i169,
i170,
i171,
i172,
i173,
i174,
i175,
i176,
i177,
i178,
i179,
i180,
i181,
i182,
i183,
i184,
i185,
i186,
i187,
i188,
i189,
i190,
i191,
i192,
i193,
i194,
i195,
i196,
i197,
i198,
i199,
i200,
i201,
i202,
i203,
i204,
i205,
i206,
i207,
i208,
i209,
i210,
i211,
i212,
i213,
i214,
i215,
i216,
i217,
i218,
i219,
i220,
i221,
i222,
i223,
i224,
i225,
i226,
i227,
i228,
i229,
i230,
i231,
i232,
i233,
i234,
i235,
i236,
i237,
i238,
i239,
i240,
i241,
i242,
i243,
i244,
i245,
i246,
i247,
i248,
i249,
i250,
i251,
i252,
i253,
i254,
i255;


drop database;
