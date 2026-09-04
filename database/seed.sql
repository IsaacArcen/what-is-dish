PRAGMA foreign_keys = ON;

DELETE FROM dishes;
DELETE FROM countries;

INSERT INTO countries (country_name, continent, flag_url)
VALUES
-- Africa
('Nigeria', 'Afrika', 'https://flagcdn.com/w320/ng.png'),
('Egypten', 'Afrika', 'https://flagcdn.com/w320/eg.png'),
('Sydafrika', 'Afrika', 'https://flagcdn.com/w320/za.png'),
('Marocko', 'Afrika', 'https://flagcdn.com/w320/ma.png'),
('Etiopien', 'Afrika', 'https://flagcdn.com/w320/et.png'),
('Ghana', 'Afrika', 'https://flagcdn.com/w320/gh.png'),
('Kenya', 'Afrika', 'https://flagcdn.com/w320/ke.png'),
('Algeriet', 'Afrika', 'https://flagcdn.com/w320/dz.png'),
('Tunisien', 'Afrika', 'https://flagcdn.com/w320/tn.png'),
('Senegal', 'Afrika', 'https://flagcdn.com/w320/sn.png'),
('Tanzania', 'Afrika', 'https://flagcdn.com/w320/tz.png'),
('Uganda', 'Afrika', 'https://flagcdn.com/w320/ug.png'),
('Kamerun', 'Afrika', 'https://flagcdn.com/w320/cm.png'),
('Elfenbenskusten', 'Afrika', 'https://flagcdn.com/w320/ci.png'),
('Angola', 'Afrika', 'https://flagcdn.com/w320/ao.png'),
('Zimbabwe', 'Afrika', 'https://flagcdn.com/w320/zw.png'),
('Rwanda', 'Afrika', 'https://flagcdn.com/w320/rw.png'),
('Sudan', 'Afrika', 'https://flagcdn.com/w320/sd.png'),
('Somalia', 'Afrika', 'https://flagcdn.com/w320/so.png'),
('Madagaskar', 'Afrika', 'https://flagcdn.com/w320/mg.png'),

-- Asiatiska länder
('Japan', 'Asien', 'https://flagcdn.com/w320/jp.png'),
('Kina', 'Asien', 'https://flagcdn.com/w320/cn.png'),
('Indien', 'Asien', 'https://flagcdn.com/w320/in.png'),
('Sydkorea', 'Asien', 'https://flagcdn.com/w320/kr.png'),
('Thailand', 'Asien', 'https://flagcdn.com/w320/th.png'),
('Vietnam', 'Asien', 'https://flagcdn.com/w320/vn.png'),
('Indonesien', 'Asien', 'https://flagcdn.com/w320/id.png'),
('Filippinerna', 'Asien', 'https://flagcdn.com/w320/ph.png'),
('Malaysia', 'Asien', 'https://flagcdn.com/w320/my.png'),
('Turkiet', 'Asien', 'https://flagcdn.com/w320/tr.png'),
('Iran', 'Asien', 'https://flagcdn.com/w320/ir.png'),
('Irak', 'Asien', 'https://flagcdn.com/w320/iq.png'),
('Saudiarabien', 'Asien', 'https://flagcdn.com/w320/sa.png'),
('Israel', 'Asien', 'https://flagcdn.com/w320/il.png'),
('Libanon', 'Asien', 'https://flagcdn.com/w320/lb.png'),
('Pakistan', 'Asien', 'https://flagcdn.com/w320/pk.png'),
('Bangladesh', 'Asien', 'https://flagcdn.com/w320/bd.png'),
('Sri Lanka', 'Asien', 'https://flagcdn.com/w320/lk.png'),
('Nepal', 'Asien', 'https://flagcdn.com/w320/np.png'),
('Mongoliet', 'Asien', 'https://flagcdn.com/w320/mn.png'),

-- Eurpeiska länder
('Italien', 'Europa', 'https://flagcdn.com/w320/it.png'),
('Frankrike', 'Europa', 'https://flagcdn.com/w320/fr.png'),
('Spanien', 'Europa', 'https://flagcdn.com/w320/es.png'),
('Tyskland', 'Europa', 'https://flagcdn.com/w320/de.png'),
('Grekland', 'Europa', 'https://flagcdn.com/w320/gr.png'),
('Sverige', 'Europa', 'https://flagcdn.com/w320/se.png'),
('Norge', 'Europa', 'https://flagcdn.com/w320/no.png'),
('Danmark', 'Europa', 'https://flagcdn.com/w320/dk.png'),
('Polen', 'Europa', 'https://flagcdn.com/w320/pl.png'),
('Portugal', 'Europa', 'https://flagcdn.com/w320/pt.png'),
('Storbritannien', 'Europa', 'https://flagcdn.com/w320/gb.png'),
('Irland', 'Europa', 'https://flagcdn.com/w320/ie.png'),
('Nederländerna', 'Europa', 'https://flagcdn.com/w320/nl.png'),
('Belgien', 'Europa', 'https://flagcdn.com/w320/be.png'),
('Österrike', 'Europa', 'https://flagcdn.com/w320/at.png'),
('Schweiz', 'Europa', 'https://flagcdn.com/w320/ch.png'),
('Ungern', 'Europa', 'https://flagcdn.com/w320/hu.png'),
('Tjeckien', 'Europa', 'https://flagcdn.com/w320/cz.png'),
('Ukraina', 'Europa', 'https://flagcdn.com/w320/ua.png'),
('Rumänien', 'Europa', 'https://flagcdn.com/w320/ro.png'),

-- Nordamerikanska länder
('USA', 'Nordamerika', 'https://flagcdn.com/w320/us.png'),
('Kanada', 'Nordamerika', 'https://flagcdn.com/w320/ca.png'),
('Mexiko', 'Nordamerika', 'https://flagcdn.com/w320/mx.png'),
('Kuba', 'Nordamerika', 'https://flagcdn.com/w320/cu.png'),
('Jamaica', 'Nordamerika', 'https://flagcdn.com/w320/jm.png'),
('Haiti', 'Nordamerika', 'https://flagcdn.com/w320/ht.png'),
('Dominikanska republiken', 'Nordamerika', 'https://flagcdn.com/w320/do.png'),
('Guatemala', 'Nordamerika', 'https://flagcdn.com/w320/gt.png'),
('Honduras', 'Nordamerika', 'https://flagcdn.com/w320/hn.png'),
('El Salvador', 'Nordamerika', 'https://flagcdn.com/w320/sv.png'),
('Nicaragua', 'Nordamerika', 'https://flagcdn.com/w320/ni.png'),
('Costa Rica', 'Nordamerika', 'https://flagcdn.com/w320/cr.png'),
('Panama', 'Nordamerika', 'https://flagcdn.com/w320/pa.png'),
('Bahamas', 'Nordamerika', 'https://flagcdn.com/w320/bs.png'),
('Barbados', 'Nordamerika', 'https://flagcdn.com/w320/bb.png'),
('Trinidad och Tobago', 'Nordamerika', 'https://flagcdn.com/w320/tt.png'),
('Belize', 'Nordamerika', 'https://flagcdn.com/w320/bz.png'),
('Grenada', 'Nordamerika', 'https://flagcdn.com/w320/gd.png'),
('Saint Lucia', 'Nordamerika', 'https://flagcdn.com/w320/lc.png'),
('Dominica', 'Nordamerika', 'https://flagcdn.com/w320/dm.png'),

-- sydamerikanska länder
('Argentina', 'Sydamerika', 'https://flagcdn.com/w320/ar.png'),
('Bolivia', 'Sydamerika', 'https://flagcdn.com/w320/bo.png'),
('Brasilien', 'Sydamerika', 'https://flagcdn.com/w320/br.png'),
('Chile', 'Sydamerika', 'https://flagcdn.com/w320/cl.png'),
('Colombia', 'Sydamerika', 'https://flagcdn.com/w320/co.png'),
('Ecuador', 'Sydamerika', 'https://flagcdn.com/w320/ec.png'),
('Guyana', 'Sydamerika', 'https://flagcdn.com/w320/gy.png'),
('Paraguay', 'Sydamerika', 'https://flagcdn.com/w320/py.png'),
('Peru', 'Sydamerika', 'https://flagcdn.com/w320/pe.png'),
('Surinam', 'Sydamerika', 'https://flagcdn.com/w320/sr.png'),
('Uruguay', 'Sydamerika', 'https://flagcdn.com/w320/uy.png'),
('Venezuela', 'Sydamerika', 'https://flagcdn.com/w320/ve.png'),

-- oceanien länder
('Australien', 'Oceanien', 'https://flagcdn.com/w320/au.png'),
('Nya Zeeland', 'Oceanien', 'https://flagcdn.com/w320/nz.png'),
('Fiji', 'Oceanien', 'https://flagcdn.com/w320/fj.png'),
('Papua Nya Guinea', 'Oceanien', 'https://flagcdn.com/w320/pg.png'),
('Samoa', 'Oceanien', 'https://flagcdn.com/w320/ws.png'),
('Tonga', 'Oceanien', 'https://flagcdn.com/w320/to.png'),
('Vanuatu', 'Oceanien', 'https://flagcdn.com/w320/vu.png'),
('Salomonöarna', 'Oceanien', 'https://flagcdn.com/w320/sb.png'),
('Kiribati', 'Oceanien', 'https://flagcdn.com/w320/ki.png'),
('Mikronesien', 'Oceanien', 'https://flagcdn.com/w320/fm.png'),
('Marshallöarna', 'Oceanien', 'https://flagcdn.com/w320/mh.png'),
('Palau', 'Oceanien', 'https://flagcdn.com/w320/pw.png'),
('Nauru', 'Oceanien', 'https://flagcdn.com/w320/nr.png'),
('Tuvalu', 'Oceanien', 'https://flagcdn.com/w320/tv.png');

INSERT INTO dishes (
  country_id,
  dish_name,
  is_correct,
  dish_image_url,
  dish_history,
  hint
)
VALUES
-- AFRIKANSKA LÄNDER
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Jollofris', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F0a%2FJollof_Rice_with_Stew.jpg%2F330px-Jollof_Rice_with_Stew.jpg&w=800&h=600&fit=cover', 'Jollof rice är en mycket populär västafrikansk risrätt med tomat, kryddor och ofta kött eller grönsaker.', 'En röd risrätt som är mycket känd i Västafrika.'),
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Egusisoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Suya', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Stött jams', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Egypten'), 'Koshari', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fe%2Fe9%2FEgyptian_food_Koshary.jpg%2F330px-Egyptian_food_Koshary.jpg&w=800&h=600&fit=cover', 'Koshari är en egyptisk rätt med ris, pasta, linser, kikärtor, tomatsås och rostad lök.', 'Rätten blandar ris, pasta och linser.'),
((SELECT country_id FROM countries WHERE country_name = 'Egypten'), 'Ful medames', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Egypten'), 'Molokhia', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Egypten'), 'Hawawshi', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sydafrika'), 'Bobotie', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff1%2FBobotie%252C_South_African_dish.jpg%2F330px-Bobotie%252C_South_African_dish.jpg&w=800&h=600&fit=cover', 'Bobotie är en sydafrikansk ugnsrätt med kryddad köttfärs och ett äggbaserat täcke.', 'En kryddad köttfärsrätt som bakas i ugn.'),
((SELECT country_id FROM countries WHERE country_name = 'Sydafrika'), 'Bunny chow', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sydafrika'), 'Boerewors', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sydafrika'), 'Potjiekos', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Marocko'), 'Tagine', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F3%2F3a%2FTajine-marocain-un-plat-varie-et-sain_%2528cropped%2529.jpg%2F330px-Tajine-marocain-un-plat-varie-et-sain_%2528cropped%2529.jpg&w=800&h=600&fit=cover', 'Tagine är en marockansk långkokt gryta som ofta lagas i ett konformat lerkärl.', 'En långkokt gryta med kryddor, kött och grönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Marocko'), 'Couscous', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Marocko'), 'Harira', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Marocko'), 'Pastilla', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Etiopien'), 'Doro wat', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F54%2FEthiopian_wat.jpg%2F330px-Ethiopian_wat.jpg&w=800&h=600&fit=cover', 'Doro wat är en etiopisk kycklinggryta med stark kryddblandning och serveras ofta med injera.', 'En stark kycklinggryta som ofta äts med injera.'),
((SELECT country_id FROM countries WHERE country_name = 'Etiopien'), 'Injera', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Etiopien'), 'Kitfo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Etiopien'), 'Shiro', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Waakye', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fcd%2FWaakye_with_vegetables%252C_fish_and_egg_with_ripe_plantains.jpg%2F330px-Waakye_with_vegetables%252C_fish_and_egg_with_ripe_plantains.jpg&w=800&h=600&fit=cover', 'Waakye är en ghanansk rätt med ris och bönor som ofta serveras med sås, ägg, kött eller fisk.', 'Rätten består främst av ris och bönor.'),
((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Banku', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Fufu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Red Red', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Nyama choma', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F2%2F2d%2FGoat_meat_being_roasted.jpg%2F1280px-Goat_meat_being_roasted.jpg&w=800&h=600&fit=cover', 'Nyama choma är grillat kött och är en av Kenyas mest kända maträtter.', 'Rätten betyder ungefär grillat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Ugali', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Sukuma Wiki', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Githeri', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Algeriet'), 'Couscous', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F0c%2FMoroccan_cuscus%252C_from_Casablanca%252C_September_2018.jpg%2F330px-Moroccan_cuscus%252C_from_Casablanca%252C_September_2018.jpg&w=800&h=600&fit=cover', 'Couscous är en nordafrikansk rätt med små gryn som ofta serveras med gryta, grönsaker och kött.', 'Små gryn serverade med gryta och grönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Algeriet'), 'Chakhchoukha', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Algeriet'), 'Rechta', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Algeriet'), 'Mhadjeb', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tunisien'), 'Brik', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F94%2FBrikdish.jpg%2F330px-Brikdish.jpg&w=800&h=600&fit=cover', 'Brik är en tunisisk frasig deg fylld med bland annat ägg, tonfisk eller potatis.', 'En frasig fylld deg som ofta innehåller ägg.'),
((SELECT country_id FROM countries WHERE country_name = 'Tunisien'), 'Lablabi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tunisien'), 'Ojja', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tunisien'), 'Makroudh', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Thieboudienne', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F51%2FThieboudienne.JPG%2F330px-Thieboudienne.JPG&w=800&h=600&fit=cover', 'Thieboudienne är Senegals välkända ris- och fiskrätt med tomat och grönsaker.', 'En risrätt med fisk, tomat och grönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Yassa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Mafe', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Lakh', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Ugali', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F4%2F48%2FUgali_%2526_Sukuma_Wiki.jpg%2F330px-Ugali_%2526_Sukuma_Wiki.jpg&w=800&h=600&fit=cover', 'Ugali är en enkel och vanlig majsbaserad rätt som äts i stora delar av Östafrika.', 'En fast majsgröt som ofta äts med sås eller gryta.'),
((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Pilau', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Mshikaki', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Ndizi nyama', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Matoke', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fe%2Fe6%2FMatooke_to_the_market.jpg%2F330px-Matooke_to_the_market.jpg&w=800&h=600&fit=cover', 'Matoke är en ugandisk rätt gjord på kokta eller ångade gröna bananer.', 'Rätten görs på gröna matbananer.'),
((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Luwombo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Rolex', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Posho', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kamerun'), 'Ndole', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F91%2FNdol%25C3%25A8_%25C3%25A0_la_viande%252C_morue_et_crevettes.jpg%2F330px-Ndol%25C3%25A8_%25C3%25A0_la_viande%252C_morue_et_crevettes.jpg&w=800&h=600&fit=cover', 'Ndole är en kamerunsk gryta med bittra blad, jordnötter och ofta kött eller fisk.', 'En gryta med blad och jordnötter.'),
((SELECT country_id FROM countries WHERE country_name = 'Kamerun'), 'Eru', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kamerun'), 'Poulet DG', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kamerun'), 'Koki', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Elfenbenskusten'), 'Attieke', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F4%2F44%2FAttieke.JPG%2F330px-Attieke.JPG&w=800&h=600&fit=cover', 'Attieke är en ivoriansk rätt gjord av fermenterad kassava och serveras ofta med fisk.', 'Rätten är gjord av kassava och serveras ofta med fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Elfenbenskusten'), 'Kedjenou', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Elfenbenskusten'), 'Alloco', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Elfenbenskusten'), 'Garba', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Kycklingmuamba', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ffa%2FPoulet_%25C3%25A0_la_moambe.JPG%2F330px-Poulet_%25C3%25A0_la_moambe.JPG&w=800&h=600&fit=cover', 'Muamba de galinha är en angolansk kycklinggryta med palmolja och kryddor.', 'En kycklinggryta med palmolja.'),
((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Funje', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Calulu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Mufete', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Sadza', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F4%2F48%2FUgali_%2526_Sukuma_Wiki.jpg%2F330px-Ugali_%2526_Sukuma_Wiki.jpg&w=800&h=600&fit=cover', 'Sadza är en vanlig zimbabwisk majsbaserad rätt som ofta äts med kött, grönsaker eller sås.', 'En fast majsgröt som äts med tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Muriwo unedovi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Nyama', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Papayagodis', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Isombe', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fb%2Fb6%2FISOMBE.jpg%2F330px-ISOMBE.jpg&w=800&h=600&fit=cover', 'Isombe är en rwandisk rätt gjord på kassavablad, ofta tillagad med jordnötter.', 'Rätten görs på kassavablad.'),
((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Brochettes', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Ugali', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Ibihaza', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Ful medames', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Flvn2d51598732465.jpg&w=800&h=600&fit=cover', 'Ful medames är en rätt med kokta bondbönor som äts mycket i Sudan och flera andra länder.', 'Rätten består främst av kokta bönor.'),
((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Kisra', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Aseeda', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Gurasa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Kryddat somaliskt ris', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F6%2F60%2FSomalicamelmeat.jpg%2F330px-Somalicamelmeat.jpg&w=800&h=600&fit=cover', 'Bariis iskukaris är en somalisk kryddad risrätt som ofta serveras med kött.', 'En kryddad risrätt som ofta serveras med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Canjeero', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Sambusa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Maraq', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Madagaskar'), 'Romazava', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F2%2F2b%2FMadagaskar_stew_2019-10-01.jpg%2F330px-Madagaskar_stew_2019-10-01.jpg&w=800&h=600&fit=cover', 'Romazava är en traditionell gryta från Madagaskar med kött, bladgrönsaker och kryddor.', 'En gryta med kött och bladgrönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Madagaskar'), 'Ravitoto', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Madagaskar'), 'Mofo gasy', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Madagaskar'), 'Kyckling med kokos', 0, NULL, NULL, NULL),

-- ASIATISKA LÄNDER
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Sushi', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F6%2F60%2FSushi_platter.jpg%2F330px-Sushi_platter.jpg&w=800&h=600&fit=cover', 'Sushi är en japansk maträtt med vinägerkryddat ris och ofta fisk, skaldjur eller grönsaker.', 'Rätten innehåller ofta ris och fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Ramen', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Tempura', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Okonomiyaki', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kina'), 'Pekinganka', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F8%2F81%2FPeking_Duck%252C_2014_%252802%2529.jpg%2F330px-Peking_Duck%252C_2014_%252802%2529.jpg&w=800&h=600&fit=cover', 'Pekinganka är en klassisk kinesisk rätt känd för sitt krispiga skinn och serveras ofta med tunna pannkakor.', 'Rätten är känd för krispigt ank-skinn.'),
((SELECT country_id FROM countries WHERE country_name = 'Kina'), 'Mapo tofu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kina'), 'Kung pao-kyckling', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kina'), 'Degknyten', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Indien'), 'Biryani', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fxrttsx1487339558.jpg&w=800&h=600&fit=cover', 'Biryani är en kryddig risrätt från Sydasien som ofta lagas med kött, grönsaker och aromatiska kryddor.', 'En kryddig risrätt med många aromatiska kryddor.'),
((SELECT country_id FROM countries WHERE country_name = 'Indien'), 'Smörkyckling', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Indien'), 'Samosa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Indien'), 'Masala dosa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sydkorea'), 'Kimchi', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff8%2FVarious_kimchi.jpg%2F330px-Various_kimchi.jpg&w=800&h=600&fit=cover', 'Kimchi är en koreansk fermenterad grönsaksrätt, oftast gjord på kål och chili.', 'En fermenterad och kryddig grönsaksrätt.'),
((SELECT country_id FROM countries WHERE country_name = 'Sydkorea'), 'Bibimbap', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sydkorea'), 'Bulgogi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sydkorea'), 'Tteokbokki', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Pad thai', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Frg9ze01763479093.jpg&w=800&h=600&fit=cover', 'Pad Thai är en thailändsk wokad nudelrätt med risnudlar, ägg, tofu eller räkor och tamarindsås.', 'En wokad nudelrätt med sötsyrlig smak.'),
((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Tom yum', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Grön curry', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Som tam', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Pho', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F52%2FBowl_of_Meatball_pho.jpg%2F330px-Bowl_of_Meatball_pho.jpg&w=800&h=600&fit=cover', 'Pho är en vietnamesisk nudelsoppa med buljong, risnudlar, örter och ofta nötkött eller kyckling.', 'En nudelsoppa med klar buljong och örter.'),
((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Bánh mì', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Färska vårrullar', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Bun cha', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Indonesien'), 'Nasi goreng', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fwai9bw1619788844.jpg&w=800&h=600&fit=cover', 'Nasi goreng är indonesiskt stekt ris med kryddor, grönsaker och ofta ägg eller kyckling.', 'Rätten är stekt ris med kryddor.'),
((SELECT country_id FROM countries WHERE country_name = 'Indonesien'), 'Satay', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Indonesien'), 'Rendang', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Indonesien'), 'Gado-gado', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Filippinerna'), 'Adobo', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F8%2F8f%2FLomo_en_adobo-2009.jpg%2F330px-Lomo_en_adobo-2009.jpg&w=800&h=600&fit=cover', 'Adobo är en filippinsk rätt där kött marineras och kokas med soja, vinäger, vitlök och kryddor.', 'Rätten kokas ofta med soja och vinäger.'),
((SELECT country_id FROM countries WHERE country_name = 'Filippinerna'), 'Sinigang', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Filippinerna'), 'Lechon', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Filippinerna'), 'Pancit', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Nasi lemak', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fwai9bw1619788844.jpg&w=800&h=600&fit=cover', 'Nasi lemak är en malaysisk rätt med kokosris, sambal, jordnötter, ägg och ofta ansjovis eller kyckling.', 'Rätten innehåller kokosris och sambal.'),
((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Laksa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Roti Canai', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Char kway teow', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Turkiet'), 'Kebab', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F5b%2FLula_kebab_2.jpg%2F330px-Lula_kebab_2.jpg&w=800&h=600&fit=cover', 'Kebab är en välkänd turkisk kötträtt med många regionala varianter och lång matkulturell historia.', 'En grillad eller stekt kötträtt med många varianter.'),
((SELECT country_id FROM countries WHERE country_name = 'Turkiet'), 'Lahmacun', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Turkiet'), 'Menemen', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Turkiet'), 'Manti', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Chelo kebab', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fb%2Fb3%2FKebab_Bakhtyari.jpg%2F330px-Kebab_Bakhtyari.jpg&w=800&h=600&fit=cover', 'Chelo kebab är en klassisk iransk rätt med grillat kött som serveras med ris, smör och ibland grillad tomat.', 'Rätten består ofta av grillat kött och ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Ghormeh sabzi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Fesenjan', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Tahdig', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Irak'), 'Masgouf', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F07%2FMasgouf.jpg%2F330px-Masgouf.jpg&w=800&h=600&fit=cover', 'Masgouf är en irakisk fiskrätt där fisken grillas långsamt och ofta serveras med ris, citron och grönsaker.', 'En grillad fiskrätt som ofta serveras med ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Irak'), 'Dolma', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Irak'), 'Kubba', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Irak'), 'Tashreeb', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Saudiarabien'), 'Kabsa', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff1%2FMachboos_%2528cropped%2529.JPG%2F330px-Machboos_%2528cropped%2529.JPG&w=800&h=600&fit=cover', 'Kabsa är en saudisk risrätt med kryddor och ofta kyckling, lamm eller annat kött.', 'En kryddig risrätt med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Saudiarabien'), 'Mandi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saudiarabien'), 'Jareesh', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saudiarabien'), 'Saleeg', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Falafel', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fu5e9qq1763795441.jpg&w=800&h=600&fit=cover', 'Falafel är friterade bollar av kikärtor eller bondbönor och är mycket vanlig i israelisk och mellanösternsk matkultur.', 'Små friterade bollar gjorda på baljväxter.'),
((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Shakshuka', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Sabich', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Hummus', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Libanon'), 'Kibbeh', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F8%2F88%2FKibbeh3.jpg%2F330px-Kibbeh3.jpg&w=800&h=600&fit=cover', 'Kibbeh är en libanesisk rätt gjord med bulgur, kryddor och ofta kött, formad som bollar eller bakad i form.', 'Rätten görs ofta med bulgur och kryddat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Libanon'), 'Tabbouleh', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Libanon'), 'Manakish', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Libanon'), 'Fattoush', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Nihari', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F4%2F4b%2FNalli_Nihari_India.jpg%2F330px-Nalli_Nihari_India.jpg&w=800&h=600&fit=cover', 'Nihari är en pakistansk långkokt gryta med kött och kryddor, ofta serverad till frukost eller vid högtider.', 'En långkokt kryddig köttgryta.'),
((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Kyckling karahi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Seekh kebab', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Haleem', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Hilsacurry', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fd%2Fd3%2FBHilsa123.jpg%2F330px-BHilsa123.jpg&w=800&h=600&fit=cover', 'Hilsa curry är en välkänd bangladeshisk fiskrätt gjord med hilsa, senap och kryddor.', 'En fiskrätt med senap och kryddor.'),
((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Bhuna khichuri', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Panta bhat', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Fuchka', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Ris och curry', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F5r5rvx1763287943.jpg&w=800&h=600&fit=cover', 'Rice and curry är en central rätt i Sri Lanka och består ofta av ris med flera kryddiga curryrätter och samboler.', 'Rätten består av ris med flera curryrätter.'),
((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Kottu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Hoppers', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Lamprais', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Dal bhat', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fwuxrtu1483564410.jpg&w=800&h=600&fit=cover', 'Dal bhat är en nepalesisk basrätt med linsgryta och ris, ofta serverad med grönsaker och pickles.', 'Rätten består av linser och ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Momo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Thukpa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Sel roti', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Mongoliet'), 'Buuz', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fa%2Fa2%2FBuuz.jpg%2F330px-Buuz.jpg&w=800&h=600&fit=cover', 'Buuz är mongoliska ångade dumplings fyllda med kött och är vanliga vid högtider.', 'Ångade dumplings fyllda med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Mongoliet'), 'Khuushuur', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mongoliet'), 'Tsuivan', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mongoliet'), 'Bansh', 0, NULL, NULL, NULL),

-- europeiska länder
((SELECT country_id FROM countries WHERE country_name = 'Italien'), 'Pizza', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F91%2FPizza-3007395.jpg%2F330px-Pizza-3007395.jpg&w=800&h=600&fit=cover', 'Pizza är en italiensk maträtt som framför allt kopplas till Neapel och består ofta av deg, tomatsås och ost.', 'Rätten bakas i ugn och har ofta tomatsås och ost.'),
((SELECT country_id FROM countries WHERE country_name = 'Italien'), 'Pasta carbonara', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Italien'), 'Risotto', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Italien'), 'Lasagne', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Frankrike'), 'Crêpes', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F09%2FCrepes_dsc07085.jpg%2F330px-Crepes_dsc07085.jpg&w=800&h=600&fit=cover', 'Crêpes är tunna franska pannkakor som kan serveras både söta och matiga.', 'En tunn pannkaka som kan fyllas på många sätt.'),
((SELECT country_id FROM countries WHERE country_name = 'Frankrike'), 'Ratatouille', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Frankrike'), 'Coq au vin', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Frankrike'), 'Bouillabaisse', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Spanien'), 'Paella', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fe%2Fed%2F01_Paella_Valenciana_original.jpg%2F330px-01_Paella_Valenciana_original.jpg&w=800&h=600&fit=cover', 'Paella är en spansk risrätt från Valencia som ofta innehåller saffran, grönsaker, kyckling eller skaldjur.', 'En gul risrätt som ofta lagas i en bred panna.'),
((SELECT country_id FROM countries WHERE country_name = 'Spanien'), 'Spansk tortilla', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Spanien'), 'Gazpacho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Spanien'), 'Churros', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tyskland'), 'Sauerbraten', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F2%2F2a%2FHeldrunger_Sauerbraten_2.JPG%2F330px-Heldrunger_Sauerbraten_2.JPG&w=800&h=600&fit=cover', 'Sauerbraten är en tysk marinerad stek som ofta serveras med sås, kål och potatis.', 'En marinerad stek som serveras med kraftig sås.'),
((SELECT country_id FROM countries WHERE country_name = 'Tyskland'), 'Bratwurst', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tyskland'), 'Schnitzel', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tyskland'), 'Spätzle', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Grekland'), 'Moussaka', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fctg8jd1585563097.jpg&w=800&h=600&fit=cover', 'Moussaka är en grekisk ugnsrätt med aubergine, köttfärs och béchamelsås.', 'En ugnsbakad rätt med aubergine och sås.'),
((SELECT country_id FROM countries WHERE country_name = 'Grekland'), 'Souvlaki', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Grekland'), 'Gyros', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Grekland'), 'Grekisk sallad', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sverige'), 'Köttbullar', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fcb%2FSoup_with_meatballs-01.jpg%2F330px-Soup_with_meatballs-01.jpg&w=800&h=600&fit=cover', 'Svenska köttbullar är en klassisk svensk rätt som ofta serveras med potatis, gräddsås och lingonsylt.', 'Rätten serveras ofta med potatis, sås och lingonsylt.'),
((SELECT country_id FROM countries WHERE country_name = 'Sverige'), 'Gravlax', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sverige'), 'Janssons frestelse', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sverige'), 'Toast Skagen', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Norge'), 'Fårikål', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fttfxxn1762773067.jpg&w=800&h=600&fit=cover', 'Fårikål är en norsk gryta med fårkött och kål och ses ofta som en traditionell nationalrätt.', 'En gryta med fårkött och kål.'),
((SELECT country_id FROM countries WHERE country_name = 'Norge'), 'Lutfisk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Norge'), 'Gräddgröt', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Norge'), 'Köttkakor', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Danmark'), 'Smörrebröd', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F9b%2FIda_Davidsen_udsnit_af_glasmontren.JPG%2F330px-Ida_Davidsen_udsnit_af_glasmontren.JPG&w=800&h=600&fit=cover', 'Smørrebrød är danska öppna smörgåsar med pålägg som fisk, kött, ägg eller grönsaker.', 'En öppen smörgås med olika pålägg.'),
((SELECT country_id FROM countries WHERE country_name = 'Danmark'), 'Frikadeller', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Danmark'), 'Stekt fläsk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Danmark'), 'Äppelskivor', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Polen'), 'Piroger', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F0f%2FPierogi_z_mas%25C5%2582em_-_2023.03.31.jpg%2F330px-Pierogi_z_mas%25C5%2582em_-_2023.03.31.jpg&w=800&h=600&fit=cover', 'Pierogi är polska dumplings fyllda med exempelvis potatis, ost, kött eller kål.', 'Fyllda degknyten som kokas eller steks.'),
((SELECT country_id FROM countries WHERE country_name = 'Polen'), 'Bigos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Polen'), 'Surmjölsoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Polen'), 'Kåldolmar', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Bacalhau', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fce%2FKlippfisk.jpg%2F330px-Klippfisk.jpg&w=800&h=600&fit=cover', 'Bacalhau är portugisisk saltad torsk och förekommer i många traditionella portugisiska rätter.', 'Rätten bygger på saltad torsk.'),
((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Grönkålssoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Francesinha', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Pastel de nata', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Storbritannien'), 'Fisk och pommes', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Fff%2FFish_and_chips_blackpool.jpg%2F330px-Fish_and_chips_blackpool.jpg&w=800&h=600&fit=cover', 'Fish and chips är en brittisk rätt med friterad fisk och pommes frites, ofta serverad med maltvinäger eller ärtor.', 'Rätten består av friterad fisk och pommes frites.'),
((SELECT country_id FROM countries WHERE country_name = 'Storbritannien'), 'Fårherdepaj', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Storbritannien'), 'Söndagsstek', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Storbritannien'), 'Engelsk frukost', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Irland'), 'Irländsk gryta', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fsxxpst1468569714.jpg&w=800&h=600&fit=cover', 'Irish stew är en traditionell irländsk gryta med lamm eller fårkött, potatis, lök och morötter.', 'En gryta med kött, potatis och rotfrukter.'),
((SELECT country_id FROM countries WHERE country_name = 'Irland'), 'Boxty', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Irland'), 'Colcannon', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Irland'), 'Sodabröd', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nederländerna'), 'Stamppot', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fhyarod1565090529.jpg&w=800&h=600&fit=cover', 'Stamppot är en nederländsk rätt med mosad potatis blandad med grönsaker och ofta serverad med korv.', 'En potatisrätt som ofta serveras med korv.'),
((SELECT country_id FROM countries WHERE country_name = 'Nederländerna'), 'Bitterballen', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nederländerna'), 'Sill', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nederländerna'), 'Poffertjes', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Belgien'), 'Musslor med pommes frites', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F58%2FMoules-frites_at_Chez_Leon_in_Brussels.jpg%2F330px-Moules-frites_at_Chez_Leon_in_Brussels.jpg&w=800&h=600&fit=cover', 'Moules-frites är en belgisk rätt med musslor och pommes frites, ofta serverad med buljong eller sås.', 'Rätten består av musslor och pommes frites.'),
((SELECT country_id FROM countries WHERE country_name = 'Belgien'), 'Flamländsk köttgryta', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belgien'), 'Waterzooi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belgien'), 'Belgiska våfflor', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Österrike'), 'Wienerschnitzel', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fa%2Fae%2FWiener-Schnitzel02.jpg%2F330px-Wiener-Schnitzel02.jpg&w=800&h=600&fit=cover', 'Wiener schnitzel är en österrikisk rätt med panerat och stekt kalvkött eller annat kött.', 'En panerad och stekt tunn köttbit.'),
((SELECT country_id FROM countries WHERE country_name = 'Österrike'), 'Tafelspitz', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Österrike'), 'Käsespätzle', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Österrike'), 'Äppelstrudel', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Schweiz'), 'Fondue', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fc4%2FFondue_dish.jpg%2F330px-Fondue_dish.jpg&w=800&h=600&fit=cover', 'Fondue är en schweizisk rätt där smält ost serveras i en gryta och äts med brödbitar.', 'Rätten bygger på smält ost.'),
((SELECT country_id FROM countries WHERE country_name = 'Schweiz'), 'Rösti', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Schweiz'), 'Raclette', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Schweiz'), 'Zürichgeschnetzeltes', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ungern'), 'Goulash', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fcyuhwp1764362103.jpg&w=800&h=600&fit=cover', 'Goulash är en ungersk gryta eller soppa med paprika, kött och grönsaker.', 'En kryddig gryta med paprika.'),
((SELECT country_id FROM countries WHERE country_name = 'Ungern'), 'Langos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ungern'), 'Kycklingpaprikash', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ungern'), 'Dobostårta', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tjeckien'), 'Svíčková', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ffd%2FSv%25C3%25AD%25C4%258Dkov%25C3%25A1_na_smetan%25C4%259B.JPG%2F330px-Sv%25C3%25AD%25C4%258Dkov%25C3%25A1_na_smetan%25C4%259B.JPG&w=800&h=600&fit=cover', 'Svíčková är en tjeckisk rätt med nötkött i krämig grönsakssås, ofta serverad med knödel.', 'Nötkött med krämig sås och knödel.'),
((SELECT country_id FROM countries WHERE country_name = 'Tjeckien'), 'Gulasch', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tjeckien'), 'Fläsk med knödel och kål', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tjeckien'), 'Trdelník', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ukraina'), 'Borsjtj', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fzadvgb1699012544.jpg&w=800&h=600&fit=cover', 'Borscht är en ukrainsk rödbetssoppa som ofta serveras med gräddfil och bröd.', 'En röd soppa gjord med rödbetor.'),
((SELECT country_id FROM countries WHERE country_name = 'Ukraina'), 'Varenyky', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ukraina'), 'Kåldolmar', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ukraina'), 'Kyckling Kyiv', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Rumänien'), 'Sarmale', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F186%2F405880131_f9fbaf25e0_b.jpg&w=800&h=600&fit=cover', 'Sarmale är rumänska kåldolmar fyllda med kött och ris, ofta serverade med gräddfil.', 'Fyllda kålblad med kött och ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Rumänien'), 'Mămăligă', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Rumänien'), 'Komagsoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Rumänien'), 'Mici', 0, NULL, NULL, NULL),

-- Nordamerikanska länder
((SELECT country_id FROM countries WHERE country_name = 'USA'), 'Hamburgare', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F0b%2FRedDot_Burger.jpg%2F330px-RedDot_Burger.jpg&w=800&h=600&fit=cover', 'Hamburgaren blev starkt förknippad med USA under 1900-talet och är idag en av landets mest kända maträtter.', 'En rund brödrätt med kött, sallad och sås.'),
((SELECT country_id FROM countries WHERE country_name = 'USA'), 'Makaroner med ost', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'USA'), 'Grillade revben', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'USA'), 'Musselsoppa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kanada'), 'Poutine', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fcc%2FFood_at_WIkimanian_2017_02.jpg%2F330px-Food_at_WIkimanian_2017_02.jpg&w=800&h=600&fit=cover', 'Poutine är en kanadensisk rätt från Quebec med pommes frites, ostmassa och brun sås.', 'Pommes frites med ostmassa och brun sås.'),
((SELECT country_id FROM countries WHERE country_name = 'Kanada'), 'Smörtarteletter', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kanada'), 'Tourtière', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kanada'), 'Nanaimobitar', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Mexiko'), 'Tacos', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fdk70uv1784670127.jpg&w=800&h=600&fit=cover', 'Tacos är en mexikansk maträtt med tortilla och fyllningar som kött, grönsaker, salsa och andra tillbehör.', 'Rätten serveras ofta i en tortilla.'),
((SELECT country_id FROM countries WHERE country_name = 'Mexiko'), 'Enchiladas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mexiko'), 'Tamales', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mexiko'), 'Quesadillas', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kuba'), 'Ropa vieja', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fthvft91784576451.jpg&w=800&h=600&fit=cover', 'Ropa vieja är en kubansk rätt med långkokt strimlat nötkött i tomatbaserad sås.', 'Strimlat nötkött i en kryddig tomatsås.'),
((SELECT country_id FROM countries WHERE country_name = 'Kuba'), 'Moros y cristianos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kuba'), 'Grillad spädgris', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kuba'), 'Tostones', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Jerkkyckling', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Ftytyxu1515363282.jpg&w=800&h=600&fit=cover', 'Jerk chicken är en jamaicansk rätt där kyckling kryddas starkt och grillas eller röks.', 'Starkt kryddad grillad kyckling.'),
((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Ackee och saltfisk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Getcurry', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Ris och ärtor', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Griot', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F1491%2F23702614740_bbb9270553_b.jpg&w=800&h=600&fit=cover', 'Griot är en haitisk rätt med marinerat och friterat fläskkött, ofta serverad med pikliz.', 'Marinerat och friterat fläskkött.'),
((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Joumousoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Diri kole', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Tassot', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Dominikanska republiken'), 'La bandera', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F0s80wo1764374393.jpg&w=800&h=600&fit=cover', 'La bandera är en dominikansk rätt med ris, bönor och kött och namnet betyder flaggan.', 'Rätten består ofta av ris, bönor och kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Dominikanska republiken'), 'Mangú', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominikanska republiken'), 'Sancocho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominikanska republiken'), 'Tostones', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Pepián', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F6117%2F6304861904_f06d77841c_b.jpg&w=800&h=600&fit=cover', 'Pepián är en guatemalansk gryta med rostade kryddor, kött och grönsaker.', 'En kryddig gryta med rostade smaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Kak’ik', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Röda tamales', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Jocón', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Baleadas', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F8%2F8d%2FBaleada.jpg%2F330px-Baleada.jpg&w=800&h=600&fit=cover', 'Baleadas är en honduransk rätt med mjöltortilla fylld med bönor, ost och ofta grädde eller ägg.', 'En mjöltortilla fylld med bönor och ost.'),
((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Snäck soppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Pastelitos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Grillat kött', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Pupusas', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F2833%2F11594529115_d743f7273a_b.jpg&w=800&h=600&fit=cover', 'Pupusas är tjocka majstortillor från El Salvador fyllda med ost, bönor, kött eller andra ingredienser.', 'Tjocka fyllda majstortillor.'),
((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Yuca Frita', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Fotsoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Pastelitos', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Gallo pinto', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fytogg31784397116.jpg&w=800&h=600&fit=cover', 'Gallo pinto är en vanlig nicaraguansk rätt med ris och bönor som ofta äts till frukost.', 'Rätten består främst av ris och bönor.'),
((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Nacatamal', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Vigorón', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Indio viejo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Casado', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F8478%2F8197701508_705c6b15ca_b.jpg&w=800&h=600&fit=cover', 'Casado är en costaricansk tallrik med ris, bönor, sallad, kött eller fisk och ofta matbanan.', 'En tallrik med ris, bönor och flera tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Köttgryta', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Tamales', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Chifrijo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Sancocho', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F8859m71764377470.jpg&w=800&h=600&fit=cover', 'Sancocho är en panamansk soppa eller gryta med kyckling, rotfrukter och örter.', 'En kycklingsoppa med rotfrukter.'),
((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Ropa vieja', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Carimañolas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Hojaldras', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Snäcksallad', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fmlkjeu1782775816.jpg&w=800&h=600&fit=cover', 'Conch salad är en bahamansk rätt med rå snäcka, citrus, lök, paprika och kryddor.', 'En frisk sallad med snäcka och citrus.'),
((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Friterad snäcka', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Ärtor och ris', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Johnnycake', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Cou-cou och flygfisk', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fb%2Fb7%2FCOO_COOO.jpg%2F330px-COO_COOO.jpg&w=800&h=600&fit=cover', 'Cou-cou and flying fish är en barbadisk rätt med majsmjölsröra och fisk, ofta kallad nationalrätt.', 'Rätten kombinerar majsbaserad röra och fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Pudding med souse', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Fiskkakor', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Makaronipaj', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Trinidad och Tobago'), 'Doubles', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F24%2F55206748_61cdf01533.jpg&w=800&h=600&fit=cover', 'Doubles är en populär rätt från Trinidad och Tobago med friterat bröd och kryddiga kikärtor.', 'Friterat bröd fyllt med kryddiga kikärtor.'),
((SELECT country_id FROM countries WHERE country_name = 'Trinidad och Tobago'), 'Callaloo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Trinidad och Tobago'), 'Bake and Shark', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Trinidad och Tobago'), 'Pelau', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Ris och bönor', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fj8c1d51782772399.jpg&w=800&h=600&fit=cover', 'Rice and beans är en vanlig belizisk rätt kokad med kokosmjölk och serverad med kött, sallad eller matbanan.', 'Ris och bönor som ofta kokas med kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Friterade degknyten', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Hudut', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Garnaches', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Oil down', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Ftsdbcq1764795636.jpg&w=800&h=600&fit=cover', 'Oil down är Grenadas nationalrätt, en gryta med brödfrukt, kokosmjölk, kött eller fisk och kryddor.', 'En gryta med brödfrukt och kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Callaloosoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Friterat bröd', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Lambie souse', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Grön banan och saltfisk', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fsstssx1487349585.jpg&w=800&h=600&fit=cover', 'Green fig and saltfish är en rätt från Saint Lucia med gröna bananer och saltad fisk.', 'Rätten görs med gröna bananer och saltad fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Callaloosoppa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Bouyon', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Accra', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Callaloo', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F73o3vq1765317873.jpg&w=800&h=600&fit=cover', 'Callaloo är en dominicansk soppa eller gryta med bladgrönsaker, kokosmjölk och ofta kött eller fisk.', 'En grön soppa eller gryta med bladgrönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Bergskyckling', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Torsk och bakes', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Sancocho', 0, NULL, NULL, NULL),

-- sydamerikanska länder
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Asado', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fkgfh3q1763075438.jpg&w=800&h=600&fit=cover', 'Asado är argentinsk grilltradition med olika sorters kött som tillagas långsamt över eld eller glöd.', 'En rätt starkt kopplad till grillat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Empanadas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Milanesa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Locro', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Salteñas', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F7312%2F9574694129_b3f91e5bab.jpg&w=800&h=600&fit=cover', 'Salteñas är bolivianska fyllda degknyten med saftig fyllning av kött, potatis, ägg, oliver och kryddor.', 'Fyllda degknyten med saftig fyllning.'),
((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Silpancho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Pique macho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Anticucho', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Brasilien'), 'Feijoada', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fxrxz7h1782592711.jpg&w=800&h=600&fit=cover', 'Feijoada är en brasiliansk gryta med svarta bönor och kött, ofta serverad med ris och tillbehör.', 'En mörk gryta med bönor och kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Brasilien'), 'Ostbröd', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Brasilien'), 'Moqueca', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Brasilien'), 'Coxinha', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Majsgratäng', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F47abic1782854326.jpg&w=800&h=600&fit=cover', 'Pastel de choclo är en chilensk majsgratäng med köttfärs, kyckling, ägg, oliver och majsmassa.', 'En ugnsrätt med majs som viktig ingrediens.'),
((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Pino-empanadas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Cazuela', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Completo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Bandeja paisa', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F1254%2F5139457655_5c6ee017e6_b.jpg&w=800&h=600&fit=cover', 'Bandeja paisa är en colombiansk tallrik med bönor, ris, kött, ägg, avokado, matbanan och chicharrón.', 'En stor tallrik med ris, bönor, kött och flera tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Arepas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Ajiaco', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Sancocho', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Encebollado', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F4045%2F4335465122_433646777d_b.jpg&w=800&h=600&fit=cover', 'Encebollado är en ecuadoriansk fisksoppa med yucca, lök, tomat och kryddor.', 'En fisksoppa med yucca och lök.'),
((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Llapingachos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Fanesca', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Getgryta', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Pepperpot', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F5tf8j11782236249.jpg&w=800&h=600&fit=cover', 'Pepperpot är en guyanesisk köttgryta med cassareep, kryddor och ofta nötkött eller fläsk.', 'En mörk kryddig köttgryta.'),
((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Cook-up-ris', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Metemgee', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Bake och saltfisk', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Paraguayansk majskaka', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F45noa31782850540.jpg&w=800&h=600&fit=cover', 'Sopa paraguaya är trots namnet ett fast majsbröd med ost och lök, mycket känt i Paraguay.', 'Trots namnet är det inte soppa utan ett majsbröd.'),
((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Chipa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Mbejú', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Bori bori', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Ceviche', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F3377%2F3580320078_610b388745_b.jpg&w=800&h=600&fit=cover', 'Ceviche är en peruansk rätt med rå fisk som marineras i citrusjuice och blandas med lök, chili och koriander.', 'Rå fisk marinerad i citrusjuice.'),
((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Lomo saltado', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Kyckling i gul chilisås', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Anticuchos', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Surinam'), 'Pom', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Ffqpqml1764359125.jpg&w=800&h=600&fit=cover', 'Pom är en surinamesisk ugnsrätt med pomtajer, kyckling och citrusliknande smak från pomerans.', 'En ugnsrätt med kyckling och rotfrukt.'),
((SELECT country_id FROM countries WHERE country_name = 'Surinam'), 'Roti', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Surinam'), 'Moksi alesi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Surinam'), 'Saotosoppa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Chivito', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fn7qnkb1630444129.jpg&w=800&h=600&fit=cover', 'Chivito är en uruguayansk smörgås med nötkött, skinka, ost, ägg, sallad och andra tillbehör.', 'En stor smörgås med kött, ost och flera tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Asado', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Milanesa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Capeletis a la Caruso', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Pabellón criollo', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F13fg4j1764441982.jpg&w=800&h=600&fit=cover', 'Pabellón criollo är en venezuelansk rätt med ris, svarta bönor, strimlat nötkött och ofta matbanan.', 'En tallrik med ris, svarta bönor och strimlat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Arepas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Hallacas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Cachapas', 0, NULL, NULL, NULL),

-- oceanien länder
((SELECT country_id FROM countries WHERE country_name = 'Australien'), 'Köttpaj', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fypuxtw1511297463.jpg&w=800&h=600&fit=cover', 'Meat pie är en klassisk australisk rätt med pajskal fyllt med köttfärs eller köttgryta.', 'En liten paj fylld med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Australien'), 'Kyckling parmigiana', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Australien'), 'Barramundi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Australien'), 'Lamington', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nya Zeeland'), 'Hangi', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F7488%2F15742812900_7ba411f4b0_b.jpg&w=800&h=600&fit=cover', 'Hangi är en traditionell maorisk matlagningsmetod där kött och grönsaker tillagas i en jordugn.', 'Rätten tillagas traditionellt i en jordugn.'),
((SELECT country_id FROM countries WHERE country_name = 'Nya Zeeland'), 'Pavlova', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nya Zeeland'), 'Whitebait-friter', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nya Zeeland'), 'Lammstek', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Kokoda', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F2230%2F2122814264_602ccb19a3_b.jpg&w=800&h=600&fit=cover', 'Kokoda är en fijiansk fiskrätt där rå fisk marineras i citrus och blandas med kokosmjölk.', 'Rå fisk med citrus och kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Lovo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Rourou', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Palusami', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Papua Nya Guinea'), 'Mumu', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fb%2Fbe%2FSago_pancake_Papua_New_Guinea.jpg%2F1280px-Sago_pancake_Papua_New_Guinea.jpg&w=800&h=600&fit=cover', 'Mumu är en traditionell rätt från Papua Nya Guinea där kött, grönsaker och rotfrukter tillagas i jordugn.', 'Rätten tillagas ofta i jordugn med rotfrukter.'),
((SELECT country_id FROM countries WHERE country_name = 'Papua Nya Guinea'), 'Saksak', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Papua Nya Guinea'), 'Kaukau', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Papua Nya Guinea'), 'Kycklinggryta', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Palusami', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff8%2FLuaulau.png%2F330px-Luaulau.png&w=800&h=600&fit=cover', 'Palusami är en samoansk rätt med taroblad, kokosgrädde och ibland kött eller fisk.', 'Taroblad fyllda eller tillagade med kokosgrädde.'),
((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Oka', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Faiai Eleni', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Sapasui', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Lu pulu', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2Fx372ug1598733932.jpg&w=800&h=600&fit=cover', 'Lu pulu är en tongansk rätt med taroblad, kokosmjölk och ofta corned beef.', 'Taroblad med kokosmjölk och kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Ota ika', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Faikakai', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Kapisi pulu', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Laplap', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F3486%2F3202536602_12cb35c1e6_b.jpg&w=800&h=600&fit=cover', 'Laplap är en traditionell rätt från Vanuatu gjord på riven rotfrukt, kokosmjölk och ibland kött eller fisk.', 'Riven rotfrukt med kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Tuluk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Pouletfisk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Simboro', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Salomonöarna'), 'Poi', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F2381%2F2370335899_46ff0d53c2_b.jpg&w=800&h=600&fit=cover', 'Poi i Solomonöarna görs ofta av taro eller andra rotfrukter och äts som basmat.', 'En enkel basrätt gjord av rotfrukt.'),
((SELECT country_id FROM countries WHERE country_name = 'Salomonöarna'), 'Kassavapudding', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Salomonöarna'), 'Taro-chips', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Salomonöarna'), 'Grillad fisk', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Palusami', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Ff%2Ff8%2FLuaulau.png%2F330px-Luaulau.png&w=800&h=600&fit=cover', 'Palusami är vanligt i flera delar av Oceanien och görs med bladgrönsaker och kokosgrädde.', 'En rätt med bladgrönsaker och kokosgrädde.'),
((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Te bua toro ni baukin', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Rostad hummer', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Pumpa- och kokossoppa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Mikronesien'), 'Kelaguen', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F8613%2F16464287292_f7e2f62ee1.jpg&w=800&h=600&fit=cover', 'Kelaguen är en rätt från Mikronesien och Marianerna med kött eller fisk marinerad i citrus och kokos.', 'Marinerat kött eller fisk med citrus och kokos.'),
((SELECT country_id FROM countries WHERE country_name = 'Mikronesien'), 'Brödfrukt', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mikronesien'), 'Taro', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mikronesien'), 'Pihlohlo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Marshallöarna'), 'Barramunditorsk', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F4o4wh11761848573.jpg&w=800&h=600&fit=cover', 'Barramundi cod och andra fiskrätter är vanliga på Marshallöarna där fisk är central i matkulturen.', 'En fiskrätt från öarnas matkultur.'),
((SELECT country_id FROM countries WHERE country_name = 'Marshallöarna'), 'Brödfrukt', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Marshallöarna'), 'Kokoskrabba', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Marshallöarna'), 'Risbollar', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Tinola', 1, 'https://images.weserv.nl/?url=live.staticflickr.com%2F3046%2F3011947189_e260483b32_b.jpg&w=800&h=600&fit=cover', 'Tinola är en soppa eller gryta med kyckling, ingefära och grönsaker som är vanlig i Palau och regionen.', 'En soppa med kyckling och ingefära.'),
((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Ulkoy', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Taro-rösti', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Fruktfladdermussoppa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Fisk med kokos', 1, 'https://images.weserv.nl/?url=www.themealdb.com%2Fimages%2Fmedia%2Fmeals%2F46uazv1782588877.jpg&w=800&h=600&fit=cover', 'Coconut fish är en enkel fiskrätt med kokos som passar Naurus öbaserade matkultur.', 'Fisk tillagad med kokos.'),
((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Kokospanerad fisk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Bananfriter', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Taro med kokosgrädde', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Pulaka', 1, 'https://images.weserv.nl/?url=upload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fd%2Fde%2FPulaka_pit_%25282570411598%2529.jpg%2F330px-Pulaka_pit_%25282570411598%2529.jpg&w=800&h=600&fit=cover', 'Pulaka är en viktig rotfrukt i Tuvalu och används i traditionella måltider med kokos och fisk.', 'En stärkelsebaserad rotfrukt som äts med kokos eller fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Palusami', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Tonfisk- och kokoscurry', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Fekei', 0, NULL, NULL, NULL);


