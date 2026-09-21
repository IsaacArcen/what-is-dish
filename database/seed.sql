PRAGMA foreign_keys = ON;

DELETE FROM dishes;
DELETE FROM recipes;
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


INSERT INTO recipes (
  country_id,
  ingredients,
  steps
)
VALUES
(
  (SELECT country_id FROM countries WHERE country_name = 'Nigeria'),
  'Ris, tomater, tomatpuré, lök, vitlök, chili, buljong, olja, timjan och kyckling eller grönsaker.',
  '1. Skölj riset.
2. Mixa tomater, lök, vitlök och chili.
3. Fräs tomatpuré i olja.
4. Tillsätt tomatmixen.
5. Krydda med buljong och timjan.
6. Lägg i riset.
7. Häll på lagom med vatten.
8. Låt riset koka på låg värme.
9. Rör försiktigt när riset är klart.
10. Servera varmt med kyckling eller grönsaker.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Egypten'),
  'Ris, makaroner, linser, kikärtor, tomatsås, lök, vitlök, vinäger, spiskummin och olja.',
  '1. Koka riset.
2. Koka makaronerna.
3. Koka linserna mjuka.
4. Värm kikärtorna.
5. Fräs vitlök i olja.
6. Tillsätt tomatsås och kryddor.
7. Stek löken krispig.
8. Lägg ris, pasta och linser i en skål.
9. Toppa med kikärtor och sås.
10. Servera med stekt lök.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Sydafrika'),
  'Köttfärs, lök, curry, bröd, mjölk, ägg, russin, chutney, salt och peppar.',
  '1. Blötlägg brödet i mjölk.
2. Hacka löken.
3. Fräs lök och curry.
4. Lägg i köttfärsen.
5. Blanda ner bröd och russin.
6. Smaka av med salt och peppar.
7. Lägg blandningen i en form.
8. Vispa ägg med mjölk.
9. Häll äggblandningen över.
10. Grädda tills ytan är gyllene.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Marocko'),
  'Kyckling eller lamm, lök, vitlök, morötter, kikärtor, tomat, citron, spiskummin, kanel och koriander.',
  '1. Skär köttet i bitar.
2. Hacka lök och vitlök.
3. Fräs köttet i olja.
4. Tillsätt lök och kryddor.
5. Lägg i grönsaker och kikärtor.
6. Tillsätt tomat och lite vatten.
7. Låt grytan sjuda långsamt.
8. Rör om då och då.
9. Smaka av med citron.
10. Servera med bröd eller couscous.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Etiopien'),
  'Kyckling, lök, vitlök, ingefära, berberekrydda, smör, tomatpuré, ägg, salt och injera.',
  '1. Hacka löken fint.
2. Fräs löken långsamt.
3. Tillsätt smör, vitlök och ingefära.
4. Rör ner berberekrydda.
5. Lägg i kycklingen.
6. Tillsätt tomatpuré och vatten.
7. Låt grytan koka långsamt.
8. Koka äggen.
9. Lägg äggen i grytan.
10. Servera med injera.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Ghana'),
  'Ris, svarta ögonbönor, vatten, salt, lök, tomat, chili, olja, ägg och stekt banan.',
  '1. Skölj ris och bönor.
2. Koka bönorna tills de mjuknar.
3. Tillsätt ris och salt.
4. Låt allt koka färdigt.
5. Hacka lök och tomat.
6. Gör en enkel chilisås.
7. Stek ägg.
8. Stek banan om du vill.
9. Lägg upp ris och bönor.
10. Servera med sås och tillbehör.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Kenya'),
  'Getkött eller nötkött, salt, peppar, citron, vitlök, olja, tomat, lök, koriander och ugali.',
  '1. Skär köttet i bitar.
2. Krydda med salt och peppar.
3. Gnid in med vitlök och citron.
4. Låt köttet vila en stund.
5. Grilla eller stek köttet.
6. Vänd köttet flera gånger.
7. Hacka tomat och lök.
8. Blanda en enkel sallad.
9. Låt köttet vila kort.
10. Servera med ugali och sallad.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Algeriet'),
  'Couscous, lamm eller kyckling, morötter, zucchini, kikärtor, lök, tomat, buljong, spiskummin och paprika.',
  '1. Hacka grönsakerna.
2. Fräs lök och kryddor.
3. Lägg i köttet.
4. Tillsätt tomat och buljong.
5. Lägg i kikärtor och grönsaker.
6. Låt grytan sjuda.
7. Tillaga couscous enligt paketet.
8. Fluffa couscousen med en gaffel.
9. Lägg couscous på ett fat.
10. Toppa med gryta och grönsaker.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Tunisien'),
  'Filodeg, ägg, tonfisk, potatis, persilja, lök, kapris, salt, peppar och olja.',
  '1. Koka potatisen.
2. Mosa potatisen lätt.
3. Hacka lök och persilja.
4. Blanda potatis, tonfisk och kryddor.
5. Lägg fyllning på filodeg.
6. Knäck ett ägg ovanpå.
7. Vik ihop degen.
8. Hetta upp olja.
9. Fritera tills briken är gyllene.
10. Servera direkt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Senegal'),
  'Fisk, ris, tomatpuré, lök, vitlök, morötter, vitkål, chili, buljong och olja.',
  '1. Rensa och krydda fisken.
2. Hacka lök och vitlök.
3. Fräs tomatpuré i olja.
4. Tillsätt lök, kryddor och buljong.
5. Lägg i grönsakerna.
6. Lägg i fisken.
7. Ta upp fisken när den är klar.
8. Koka riset i såsen.
9. Lägg upp ris och grönsaker.
10. Servera med fisken ovanpå.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Tanzania'),
  'Majsmjöl, vatten, salt, smör, grönsaker, tomat, lök, vitlök, olja och gryta eller sås.',
  '1. Koka upp vatten.
2. Tillsätt lite salt.
3. Rör ner majsmjöl långsamt.
4. Rör kraftigt så det inte klumpar sig.
5. Låt ugali tjockna.
6. Forma till en fast massa.
7. Hacka grönsaker.
8. Fräs grönsaker med lök.
9. Gör en enkel sås.
10. Servera ugali med såsen.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Uganda'),
  'Gröna matbananer, lök, tomat, vitlök, olja, salt, peppar, jordnötssås, vatten och koriander.',
  '1. Skala matbananerna.
2. Skär dem i bitar.
3. Koka eller ånga dem mjuka.
4. Hacka lök och tomat.
5. Fräs lök i olja.
6. Tillsätt tomat och vitlök.
7. Mosa bananerna lätt.
8. Värm jordnötssåsen.
9. Smaka av med salt.
10. Servera matoke med sås.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Kamerun'),
  'Bitterblad eller spenat, jordnötter, lök, vitlök, kött eller fisk, räkor, olja, chili, salt och buljong.',
  '1. Skölj bladen.
2. Hacka lök och vitlök.
3. Koka kött eller fisk.
4. Mixa jordnötter med lite vatten.
5. Fräs lök och kryddor.
6. Tillsätt jordnötssåsen.
7. Lägg i bladen.
8. Lägg i kött eller fisk.
9. Låt grytan sjuda.
10. Servera med ris eller kassava.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Elfenbenskusten'),
  'Attieke, fisk, tomat, lök, gurka, citron, olja, chili, salt och peppar.',
  '1. Värm attieke försiktigt.
2. Krydda fisken med salt och citron.
3. Stek eller grilla fisken.
4. Hacka tomat och lök.
5. Skiva gurka.
6. Blanda en enkel sallad.
7. Smaka av med chili.
8. Lägg attieke på tallrik.
9. Lägg fisken bredvid.
10. Servera med salladen.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Angola'),
  'Kyckling, palmolja, lök, vitlök, okra, pumpa, chili, citron, salt och ris.',
  '1. Skär kycklingen i bitar.
2. Krydda med salt och citron.
3. Hacka lök och vitlök.
4. Fräs kycklingen i olja.
5. Tillsätt lök och vitlök.
6. Lägg i pumpa och okra.
7. Tillsätt palmolja och lite vatten.
8. Låt grytan sjuda.
9. Smaka av med chili.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'),
  'Majsmjöl, vatten, salt, kött eller grönsaker, tomat, lök, olja, spenat, peppar och buljong.',
  '1. Koka upp vatten.
2. Rör ner majsmjöl.
3. Fortsätt röra tills sadza blir fast.
4. Salta lätt.
5. Hacka lök och tomat.
6. Fräs grönsaker eller kött.
7. Tillsätt buljong.
8. Låt såsen koka ihop.
9. Forma sadzan.
10. Servera med grytan.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Rwanda'),
  'Kassavablad eller spenat, jordnötter, lök, vitlök, olja, salt, chili, vatten, ris och citron.',
  '1. Skölj bladen noga.
2. Hacka bladen.
3. Hacka lök och vitlök.
4. Fräs löken i olja.
5. Tillsätt bladen.
6. Mixa jordnötter med vatten.
7. Häll såsen över bladen.
8. Låt allt sjuda.
9. Smaka av med salt och citron.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Sudan'),
  'Bondbönor, vitlök, citron, olivolja, spiskummin, salt, tomat, lök, persilja och bröd.',
  '1. Blötlägg eller skölj bönorna.
2. Koka bönorna mjuka.
3. Mosa dem lätt.
4. Hacka vitlök och lök.
5. Blanda ner kryddor.
6. Tillsätt citron och olivolja.
7. Hacka tomat.
8. Toppa med tomat och persilja.
9. Smaka av med salt.
10. Servera med bröd.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Somalia'),
  'Ris, kött, lök, vitlök, kardemumma, kanel, spiskummin, russin, buljong och olja.',
  '1. Skölj riset.
2. Bryn köttet i olja.
3. Hacka lök och vitlök.
4. Fräs lök med kryddor.
5. Tillsätt riset.
6. Häll på buljong.
7. Lägg i köttet.
8. Låt riset koka klart.
9. Toppa med russin.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Madagaskar'),
  'Nötkött, bladgrönsaker, tomat, lök, vitlök, ingefära, olja, salt, peppar och ris.',
  '1. Skär köttet i bitar.
2. Hacka lök och vitlök.
3. Bryn köttet i olja.
4. Tillsätt lök, vitlök och ingefära.
5. Lägg i tomat.
6. Tillsätt vatten.
7. Låt köttet sjuda.
8. Lägg i bladgrönsaker.
9. Smaka av med salt.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Japan'),
  'Sushiris, risvinäger, socker, salt, nori, lax eller gurka, soja och wasabi.',
  '1. Koka sushiriset.
2. Blanda risvinäger, socker och salt.
3. Vänd ner vinägerblandningen i riset.
4. Låt riset svalna.
5. Lägg nori på en bambumatta.
6. Bred ut ris på noribladet.
7. Lägg på lax eller gurka.
8. Rulla ihop hårt.
9. Skär rullen i bitar.
10. Servera med soja och wasabi.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Kina'),
  'Anka, hoisinsås, gurka, salladslök, tunna pannkakor, soja, honung, risvinäger, vitlök och ingefära.',
  '1. Torka ankan noga.
2. Gnid in med soja och honung.
3. Krydda med vitlök och ingefära.
4. Rosta ankan tills skinnet blir krispigt.
5. Låt ankan vila.
6. Skär köttet tunt.
7. Skär gurka och salladslök.
8. Värm pannkakorna.
9. Lägg anka och grönsaker i pannkaka.
10. Servera med hoisinsås.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Indien'),
  'Ris, kyckling eller grönsaker, yoghurt, lök, vitlök, ingefära, garam masala, chili, saffran och koriander.',
  '1. Skölj riset.
2. Marinera kyckling eller grönsaker i yoghurt.
3. Hacka lök, vitlök och ingefära.
4. Fräs lök och kryddor.
5. Lägg i marinaden.
6. Förkoka riset lätt.
7. Varva ris och fyllning i en gryta.
8. Låt ånga på låg värme.
9. Toppa med koriander.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Sydkorea'),
  'Kinakål, salt, chili, vitlök, ingefära, salladslök, morot, fisksås, socker och vatten.',
  '1. Skär kålen i bitar.
2. Salta kålen och låt den mjukna.
3. Skölj kålen lätt.
4. Blanda chili, vitlök och ingefära.
5. Tillsätt fisksås och socker.
6. Skär morot och salladslök.
7. Blanda allt med kålen.
8. Packa i en burk.
9. Låt fermentera kort.
10. Servera som tillbehör.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Thailand'),
  'Risnudlar, ägg, tofu eller räkor, böngroddar, salladslök, jordnötter, tamarind, fisksås, socker och lime.',
  '1. Blötlägg risnudlarna.
2. Blanda tamarind, fisksås och socker.
3. Hetta upp en wok.
4. Stek tofu eller räkor.
5. Knäck i ägg.
6. Lägg i nudlarna.
7. Häll på såsen.
8. Tillsätt böngroddar.
9. Toppa med jordnötter.
10. Servera med lime.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Vietnam'),
  'Risnudlar, nötkött eller kyckling, buljong, lök, ingefära, stjärnanis, kanel, koriander, böngroddar och lime.',
  '1. Rosta lök och ingefära.
2. Koka buljong med kryddor.
3. Sila buljongen.
4. Koka risnudlarna.
5. Skär köttet tunt.
6. Lägg nudlar i skål.
7. Lägg köttet ovanpå.
8. Häll över het buljong.
9. Toppa med örter och böngroddar.
10. Servera med lime.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Indonesien'),
  'Kokt ris, ägg, vitlök, lök, chili, soja, kyckling eller grönsaker, olja, gurka och salladslök.',
  '1. Använd gärna kallt kokt ris.
2. Hacka lök och vitlök.
3. Hetta upp olja i en panna.
4. Fräs lök, vitlök och chili.
5. Lägg i kyckling eller grönsaker.
6. Tillsätt riset.
7. Häll på soja.
8. Stek ett ägg.
9. Toppa riset med ägget.
10. Servera med gurka.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Filippinerna'),
  'Kyckling eller fläsk, soja, vinäger, vitlök, lagerblad, pepparkorn, lök, olja, vatten och ris.',
  '1. Skär köttet i bitar.
2. Marinera med soja, vinäger och vitlök.
3. Bryn köttet i olja.
4. Tillsätt marinaden.
5. Lägg i lagerblad och peppar.
6. Häll på lite vatten.
7. Låt koka långsamt.
8. Reducera såsen.
9. Smaka av.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Malaysia'),
  'Ris, kokosmjölk, pandanblad, salt, sambal, ägg, jordnötter, gurka, ansjovis och kyckling.',
  '1. Skölj riset.
2. Koka riset med kokosmjölk och salt.
3. Koka äggen.
4. Rosta jordnötter.
5. Stek ansjovis om du använder det.
6. Skiva gurka.
7. Värm sambal.
8. Lägg upp kokosriset.
9. Lägg till ägg och tillbehör.
10. Servera med sambal.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Turkiet'),
  'Lamm eller nötfärs, lök, vitlök, persilja, spiskummin, paprika, salt, peppar, bröd och yoghurt.',
  '1. Riv löken.
2. Blanda kött med lök och kryddor.
3. Tillsätt persilja.
4. Forma avlånga spett eller biffar.
5. Hetta upp grill eller panna.
6. Grilla kebaben.
7. Vänd tills den är genomstekt.
8. Värm bröd.
9. Blanda yoghurt med lite salt.
10. Servera med bröd och sås.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Iran'),
  'Ris, lamm eller nötfärs, lök, saffran, smör, tomater, sumak, salt, peppar och yoghurt.',
  '1. Koka riset luftigt.
2. Riv löken.
3. Blanda kött med lök och kryddor.
4. Forma kebaber.
5. Grilla eller stek dem.
6. Grilla tomater.
7. Smält smör med saffran.
8. Ringla smöret över riset.
9. Lägg kebab på riset.
10. Servera med tomat och yoghurt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Irak'),
  'Hel fisk, citron, vitlök, tamarind eller tomat, olja, salt, peppar, koriander, ris och lök.',
  '1. Rensa fisken.
2. Krydda med salt, peppar och citron.
3. Blanda vitlök, olja och kryddor.
4. Gnid in fisken.
5. Grilla fisken långsamt.
6. Vänd försiktigt.
7. Gör en enkel sås.
8. Koka ris.
9. Lägg fisken på fat.
10. Servera med ris och citron.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Saudiarabien'),
  'Ris, kyckling eller lamm, lök, tomat, vitlök, kardemumma, kanel, kryddnejlika, buljong och russin.',
  '1. Skölj riset.
2. Bryn köttet i en gryta.
3. Hacka lök och vitlök.
4. Fräs lök med kryddor.
5. Tillsätt tomat och buljong.
6. Koka köttet nästan klart.
7. Lägg i riset.
8. Låt allt ånga färdigt.
9. Toppa med russin.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Israel'),
  'Kikärtor, lök, vitlök, persilja, koriander, spiskummin, salt, peppar, mjöl och olja.',
  '1. Blötlägg kikärtor.
2. Mixa kikärtor med lök och vitlök.
3. Tillsätt örter och kryddor.
4. Blanda till en fast smet.
5. Forma små bollar.
6. Hetta upp olja.
7. Fritera falafeln gyllene.
8. Låt rinna av.
9. Värm bröd.
10. Servera med sallad och sås.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Libanon'),
  'Bulgur, nötfärs eller lammfärs, lök, mynta, kryddpeppar, kanel, salt, peppar, olja och yoghurt.',
  '1. Blötlägg bulgur.
2. Hacka löken fint.
3. Blanda bulgur med kött och kryddor.
4. Knåda till en jämn smet.
5. Forma bollar eller en form.
6. Fyll eventuellt med extra kött.
7. Stek eller baka kibbeh.
8. Låt vila kort.
9. Skär i bitar om den är bakad.
10. Servera med yoghurt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Pakistan'),
  'Nötkött eller lamm, lök, vitlök, ingefära, chili, vetemjöl, garam masala, buljong, olja och koriander.',
  '1. Skär köttet i bitar.
2. Bryn köttet i olja.
3. Fräs lök, vitlök och ingefära.
4. Tillsätt kryddor.
5. Häll på buljong.
6. Låt köttet långkoka.
7. Red såsen med lite mjöl.
8. Låt grytan tjockna.
9. Toppa med koriander.
10. Servera med bröd.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Bangladesh'),
  'Hilsa eller annan fisk, senap, gurkmeja, chili, lök, vitlök, olja, salt, vatten och ris.',
  '1. Skär fisken i bitar.
2. Krydda med salt och gurkmeja.
3. Mixa senap med lite vatten.
4. Hacka lök och vitlök.
5. Fräs lök i olja.
6. Tillsätt senapssåsen.
7. Lägg i fisken.
8. Låt sjuda försiktigt.
9. Smaka av med chili.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'),
  'Ris, kokosmjölk, linser, curryblad, chili, lök, vitlök, gurkmeja, grönsaker och sambal.',
  '1. Koka riset.
2. Skölj linserna.
3. Koka linser med gurkmeja.
4. Fräs lök, vitlök och curryblad.
5. Tillsätt kokosmjölk.
6. Lägg i grönsaker.
7. Låt curryn sjuda.
8. Gör eller värm sambal.
9. Lägg ris på tallrik.
10. Servera med curry och sambal.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Nepal'),
  'Ris, röda linser, gurkmeja, spiskummin, vitlök, ingefära, lök, grönsaker, salt och koriander.',
  '1. Koka riset.
2. Skölj linserna.
3. Koka linser med gurkmeja.
4. Hacka lök och vitlök.
5. Fräs kryddor i olja.
6. Häll kryddoljan i linserna.
7. Koka grönsaker enkelt.
8. Smaka av med salt.
9. Lägg upp ris och dal.
10. Servera med grönsaker.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Mongoliet'),
  'Vetemjöl, vatten, nöt- eller lammfärs, lök, vitlök, salt, peppar, olja, soja och buljong.',
  '1. Blanda mjöl och vatten till deg.
2. Låt degen vila.
3. Hacka löken fint.
4. Blanda kött med lök och kryddor.
5. Kavla ut små degcirklar.
6. Lägg fyllning i mitten.
7. Nyp ihop till dumplings.
8. Ånga dem tills de är klara.
9. Låt svalna kort.
10. Servera med soja.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Italien'),
  'Pizzadeg, tomatsås, mozzarella, basilika, olivolja och salt.',
  '1. Värm ugnen högt.
2. Kavla ut pizzadegen.
3. Bred ut tomatsås.
4. Lägg på mozzarella.
5. Ringla över olivolja.
6. Salta lätt.
7. Grädda tills kanterna fått färg.
8. Ta ut pizzan.
9. Toppa med basilika.
10. Servera direkt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Frankrike'),
  'Mjöl, mjölk, ägg, smör, salt, socker, ost eller sylt, grädde, citron och bär.',
  '1. Vispa mjöl och mjölk slätt.
2. Tillsätt ägg och lite salt.
3. Låt smeten vila.
4. Smält lite smör i en panna.
5. Häll i ett tunt lager smet.
6. Stek crêpen på båda sidor.
7. Upprepa med resten av smeten.
8. Lägg på valfri fyllning.
9. Vik ihop crêpen.
10. Servera varm.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Spanien'),
  'Ris, saffran, kyckling eller skaldjur, paprika, ärtor, tomat, lök, vitlök, buljong och olivolja.',
  '1. Hacka lök, vitlök och paprika.
2. Fräs grönsaker i olivolja.
3. Tillsätt ris och saffran.
4. Häll på buljong.
5. Lägg i kyckling eller skaldjur.
6. Låt paellan sjuda utan att röra för mycket.
7. Tillsätt ärtor.
8. Låt riset bli klart.
9. Vila några minuter.
10. Servera med citron.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Tyskland'),
  'Nötstek, vinäger, lök, morot, lagerblad, peppar, buljong, socker, mjöl, smör och potatis.',
  '1. Marinera köttet i vinäger och kryddor.
2. Låt det stå kallt.
3. Ta upp och torka köttet.
4. Bryn köttet i gryta.
5. Tillsätt marinad och buljong.
6. Låt köttet sjuda länge.
7. Sila skyn.
8. Red såsen med mjöl och smör.
9. Skär köttet i skivor.
10. Servera med sås och potatis.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Grekland'),
  'Aubergine, köttfärs, lök, vitlök, tomat, kanel, potatis, mjölk, smör, mjöl och ost.',
  '1. Skiva aubergine och potatis.
2. Stek eller baka skivorna lätt.
3. Fräs lök och köttfärs.
4. Tillsätt tomat och kanel.
5. Gör en enkel béchamelsås.
6. Varva potatis, aubergine och köttsås.
7. Häll béchamel överst.
8. Toppa med ost.
9. Grädda tills ytan fått färg.
10. Låt vila innan servering.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Sverige'),
  'Köttfärs, ströbröd, mjölk, ägg, lök, salt, peppar, smör, potatis, gräddsås och lingonsylt.',
  '1. Blanda ströbröd och mjölk.
2. Hacka löken fint.
3. Blanda färs, ägg, lök och ströbröd.
4. Krydda med salt och peppar.
5. Forma små köttbullar.
6. Stek dem i smör.
7. Koka potatis.
8. Värm gräddsås.
9. Lägg upp köttbullar med potatis.
10. Servera med gräddsås och lingonsylt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Norge'),
  'Fårkött, vitkål, hela pepparkorn, salt, vatten, potatis, smör, persilja, lagerblad och morot.',
  '1. Skär köttet i bitar.
2. Skär vitkålen i klyftor.
3. Varva kött och kål i en gryta.
4. Krydda med salt och pepparkorn.
5. Häll på lite vatten.
6. Lägg i lagerblad.
7. Låt grytan sjuda långsamt.
8. Koka potatis vid sidan av.
9. Smaka av buljongen.
10. Servera fårikål med potatis.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Danmark'),
  'Rågbröd, smör, sill eller rostbiff, ägg, räkor, majonnäs, gurka, rödlök, dill och citron.',
  '1. Skär rågbröd i skivor.
2. Bred på smör.
3. Lägg på valfritt pålägg.
4. Skiva ägg och gurka.
5. Lägg på rödlök.
6. Toppa med majonnäs eller sås.
7. Lägg på dill.
8. Pressa lite citron.
9. Bygg flera olika smörrebröd.
10. Servera kalla.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Polen'),
  'Vetemjöl, vatten, ägg, potatis, färskost, lök, smör, salt, peppar, gräddfil och dill.',
  '1. Blanda mjöl, vatten och ägg till deg.
2. Låt degen vila.
3. Koka potatis.
4. Mosa potatis med ost.
5. Stek lök i smör.
6. Kavla ut degen.
7. Skär ut rundlar.
8. Fyll och vik ihop pirogerna.
9. Koka dem tills de flyter upp.
10. Servera med gräddfil och lök.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Portugal'),
  'Saltad torsk, potatis, lök, vitlök, olivolja, ägg, persilja, oliver, peppar och citron.',
  '1. Blötlägg torsken om den är saltad.
2. Koka torsken försiktigt.
3. Koka potatis.
4. Skiva lök och vitlök.
5. Fräs lök i olivolja.
6. Dela torsken i bitar.
7. Blanda med potatis och lök.
8. Lägg i kokt ägg.
9. Toppa med persilja och oliver.
10. Servera med citron.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Storbritannien'),
  'Vit fisk, potatis, mjöl, öl eller vatten, bakpulver, salt, peppar, olja, ärtor och citron.',
  '1. Skär potatis i stavar.
2. Fritera eller ugnsbaka pommes.
3. Blanda mjöl, vätska och bakpulver till smet.
4. Krydda fisken.
5. Doppa fisken i smeten.
6. Hetta upp olja.
7. Fritera fisken gyllene.
8. Värm ärtor.
9. Lägg upp fisk och pommes.
10. Servera med citron.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Irland'),
  'Lammkött, potatis, morötter, lök, selleri, buljong, timjan, salt, peppar och persilja.',
  '1. Skär köttet i bitar.
2. Skala potatis och morötter.
3. Hacka lök och selleri.
4. Bryn köttet lätt.
5. Lägg allt i en gryta.
6. Häll på buljong.
7. Krydda med timjan.
8. Låt grytan sjuda långsamt.
9. Smaka av med salt och peppar.
10. Toppa med persilja.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Nederländerna'),
  'Potatis, grönkål eller morot, lök, smör, mjölk, salt, peppar, korv, senap och muskot.',
  '1. Skala potatisen.
2. Koka potatis med grönsaker.
3. Värm korven.
4. Häll av vattnet.
5. Mosa potatis och grönsaker.
6. Tillsätt smör och mjölk.
7. Krydda med salt, peppar och muskot.
8. Lägg upp moset.
9. Lägg korven ovanpå.
10. Servera med senap.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Belgien'),
  'Musslor, potatis, lök, vitlök, selleri, vitt vin eller buljong, smör, persilja, salt och olja.',
  '1. Skölj musslorna noga.
2. Skär potatis till pommes.
3. Tillaga pommes i olja eller ugn.
4. Hacka lök, vitlök och selleri.
5. Fräs grönsakerna i smör.
6. Lägg i musslorna.
7. Häll på vin eller buljong.
8. Ånga tills musslorna öppnar sig.
9. Toppa med persilja.
10. Servera med pommes.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Österrike'),
  'Kalvkött eller fläsk, mjöl, ägg, ströbröd, salt, peppar, citron, smör, potatis och lingon.',
  '1. Banka köttet tunt.
2. Krydda med salt och peppar.
3. Vänd köttet i mjöl.
4. Doppa i uppvispat ägg.
5. Vänd i ströbröd.
6. Hetta upp smör eller olja.
7. Stek schnitzeln gyllene.
8. Koka potatis.
9. Lägg upp med citron.
10. Servera med potatis och lingon.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Schweiz'),
  'Gruyère, emmentaler, vitt vin, vitlök, majsstärkelse, citron, peppar, muskot, bröd och potatis.',
  '1. Riv osten.
2. Gnid grytan med vitlök.
3. Värm vin försiktigt.
4. Rör ner osten lite i taget.
5. Blanda majsstärkelse med lite vätska.
6. Rör ner redningen.
7. Krydda med peppar och muskot.
8. Skär bröd i bitar.
9. Håll fonduen varm.
10. Doppa bröd och potatis i osten.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Ungern'),
  'Nötkött, lök, vitlök, paprika, tomat, potatis, morot, buljong, kummin och olja.',
  '1. Skär köttet i bitar.
2. Hacka lök och vitlök.
3. Fräs löken i olja.
4. Tillsätt paprika och kummin.
5. Lägg i köttet.
6. Tillsätt tomat och buljong.
7. Låt köttet sjuda.
8. Lägg i potatis och morot.
9. Koka tills allt är mjukt.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Tjeckien'),
  'Nötkött, morot, selleri, lök, grädde, buljong, lagerblad, citron, mjöl och knödel.',
  '1. Bryn köttet lätt.
2. Hacka rotfrukter och lök.
3. Fräs grönsakerna.
4. Lägg kött och grönsaker i gryta.
5. Häll på buljong.
6. Lägg i lagerblad.
7. Låt köttet sjuda mjukt.
8. Mixa såsen med grädde.
9. Smaka av med citron.
10. Servera med knödel.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Ukraina'),
  'Rödbetor, potatis, morot, vitkål, lök, vitlök, tomatpuré, buljong, gräddfil och dill.',
  '1. Skala och riv rödbetor.
2. Hacka lök och vitlök.
3. Skär potatis och morot.
4. Fräs lök och tomatpuré.
5. Häll på buljong.
6. Lägg i rödbetor och grönsaker.
7. Koka tills allt är mjukt.
8. Smaka av med salt.
9. Lägg upp soppan.
10. Servera med gräddfil och dill.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Rumänien'),
  'Kålblad, blandfärs, ris, lök, tomatpuré, dill, salt, peppar, buljong, gräddfil och lagerblad.',
  '1. Förväll kålbladen.
2. Hacka löken.
3. Blanda färs, ris, lök och kryddor.
4. Lägg fyllning i varje kålblad.
5. Rulla ihop dolmarna.
6. Lägg dem i en gryta.
7. Tillsätt tomatpuré och buljong.
8. Låt sjuda långsamt.
9. Kontrollera att riset är mjukt.
10. Servera med gräddfil.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'USA'),
  'Hamburgerbröd, nötfärs, ost, sallad, tomat, lök, salt, peppar, ketchup och dressing.',
  '1. Forma färsen till burgare.
2. Krydda med salt och peppar.
3. Stek eller grilla burgarna.
4. Lägg på ost mot slutet.
5. Rosta bröden lätt.
6. Skiva sallad, tomat och lök.
7. Bred dressing på bröden.
8. Lägg i burgaren.
9. Toppa med grönsaker.
10. Servera med valfritt tillbehör.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Kanada'),
  'Pommes frites, ostmassa, brun sås, smör, mjöl, buljong, peppar, salt, persilja och olja.',
  '1. Tillaga pommes frites.
2. Smält smör i en kastrull.
3. Rör ner mjöl.
4. Häll på buljong.
5. Vispa till en brun sås.
6. Smaka av med salt och peppar.
7. Lägg pommes på ett fat.
8. Strö över ostmassa.
9. Häll varm sås över.
10. Servera direkt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Mexiko'),
  'Tortillas, kött eller bönor, lök, vitlök, chili, tomat, koriander, lime, sallad och salsa.',
  '1. Förbered fyllningen.
2. Hacka lök och vitlök.
3. Stek kött eller värm bönor.
4. Krydda med chili och salt.
5. Värm tortillorna.
6. Hacka tomat och koriander.
7. Lägg fyllning i tortillan.
8. Toppa med grönsaker.
9. Pressa över lime.
10. Servera med salsa.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Kuba'),
  'Nötkött, lök, paprika, vitlök, tomat, buljong, spiskummin, lagerblad, oliver och ris.',
  '1. Koka köttet tills det är mört.
2. Strimla köttet.
3. Hacka lök, paprika och vitlök.
4. Fräs grönsakerna.
5. Tillsätt tomat och kryddor.
6. Lägg i köttet.
7. Häll på lite buljong.
8. Låt såsen koka ihop.
9. Smaka av med salt.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Jamaica'),
  'Kyckling, salladslök, vitlök, chili, kryddpeppar, timjan, soja, lime, socker och olja.',
  '1. Mixa kryddor, lök, chili och lime.
2. Gnid in kycklingen med marinaden.
3. Låt kycklingen vila.
4. Hetta upp grill eller ugn.
5. Lägg kycklingen på värme.
6. Vänd flera gånger.
7. Pensla med marinad.
8. Tillaga tills kycklingen är klar.
9. Låt vila kort.
10. Servera med ris eller sallad.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Haiti'),
  'Fläskkött, apelsin eller lime, vitlök, chili, timjan, salt, peppar, olja, pikliz och ris.',
  '1. Skär fläskköttet i bitar.
2. Marinera med citrus och kryddor.
3. Koka köttet tills det mjuknar.
4. Ta upp köttet.
5. Hetta upp olja.
6. Stek eller fritera köttet krispigt.
7. Låt rinna av.
8. Förbered pikliz.
9. Lägg upp köttet.
10. Servera med ris och pikliz.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Dominikanska republiken'),
  'Ris, bönor, kyckling eller nötkött, lök, vitlök, paprika, tomat, oregano, olja och sallad.',
  '1. Koka riset.
2. Koka eller värm bönor.
3. Krydda köttet.
4. Bryn köttet i olja.
5. Hacka lök, vitlök och paprika.
6. Fräs grönsakerna.
7. Tillsätt tomat och oregano.
8. Låt köttet sjuda i såsen.
9. Lägg upp ris, bönor och kött.
10. Servera med sallad.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Guatemala'),
  'Kyckling, tomat, tomatillo, pumpafrön, sesamfrön, chili, lök, vitlök, potatis och ris.',
  '1. Rosta frön och chili.
2. Koka tomat och tomatillo.
3. Mixa till en sås.
4. Bryn kycklingen.
5. Hacka lök och vitlök.
6. Fräs lök och tillsätt såsen.
7. Lägg i kycklingen.
8. Tillsätt potatis.
9. Låt grytan sjuda.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Honduras'),
  'Mjöltortillas, refried beans, ost, gräddfil, ägg, avokado, salt, peppar, lök och koriander.',
  '1. Värm tortillorna.
2. Värm bönorna.
3. Bred bönor på tortillan.
4. Strö över ost.
5. Lägg på gräddfil.
6. Stek ägg om du vill.
7. Skiva avokado.
8. Lägg på extra topping.
9. Vik tortillan.
10. Servera varm.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'El Salvador'),
  'Masa harina, vatten, salt, ost, bönor, fläsk eller grönsaker, olja, vitkål, vinäger och chili.',
  '1. Blanda masa harina med vatten och salt.
2. Knåda till en mjuk deg.
3. Förbered fyllningen.
4. Forma små degbollar.
5. Fyll med ost eller bönor.
6. Platta till försiktigt.
7. Stek på het panna.
8. Vänd tills båda sidor fått färg.
9. Gör enkel kålsallad.
10. Servera med kålsallad och sås.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Nicaragua'),
  'Ris, svarta eller röda bönor, lök, paprika, vitlök, olja, salt, peppar, koriander och ägg.',
  '1. Koka riset.
2. Koka eller värm bönorna.
3. Hacka lök, paprika och vitlök.
4. Fräs grönsakerna i olja.
5. Tillsätt bönorna.
6. Lägg i riset.
7. Rör ihop allt.
8. Smaka av med salt.
9. Toppa med koriander.
10. Servera gärna med ägg.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Costa Rica'),
  'Ris, bönor, kött eller fisk, sallad, matbanan, ägg, lök, vitlök, tomat och koriander.',
  '1. Koka riset.
2. Värm bönorna.
3. Krydda kött eller fisk.
4. Stek proteinet.
5. Stek matbanan.
6. Gör en enkel sallad.
7. Stek ägg om du vill.
8. Lägg ris och bönor på tallrik.
9. Lägg på protein och tillbehör.
10. Servera som en komplett tallrik.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Panama'),
  'Kyckling, yuca eller potatis, majs, lök, vitlök, koriander, oregano, salt, peppar och buljong.',
  '1. Lägg kyckling i en gryta.
2. Häll på vatten eller buljong.
3. Tillsätt lök och vitlök.
4. Koka kycklingen.
5. Lägg i yuca eller potatis.
6. Tillsätt majs.
7. Krydda med oregano.
8. Låt soppan sjuda.
9. Toppa med koriander.
10. Servera varm.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Bahamas'),
  'Snäcka eller skaldjur, lime, apelsin, tomat, paprika, lök, chili, salt, peppar och koriander.',
  '1. Skär snäckan i små bitar.
2. Pressa lime och apelsin.
3. Hacka tomat, paprika och lök.
4. Blanda allt i en skål.
5. Tillsätt chili.
6. Krydda med salt och peppar.
7. Låt salladen vila kallt.
8. Rör om före servering.
9. Toppa med koriander.
10. Servera friskt och kallt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Barbados'),
  'Majsmjöl, okra, vatten, smör, flygfisk eller vit fisk, lime, lök, vitlök, tomat och kryddor.',
  '1. Koka okra i vatten.
2. Rör ner majsmjöl.
3. Tillsätt smör och salt.
4. Rör tills cou-cou blir fast.
5. Krydda fisken med lime.
6. Fräs lök och vitlök.
7. Lägg i tomat och kryddor.
8. Lägg fisken i såsen.
9. Låt fisken bli klar.
10. Servera fisk med cou-cou.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Trinidad och Tobago'),
  'Mjöl, bakpulver, kikärtor, curry, vitlök, chili, spiskummin, olja, salt och tamarindsås.',
  '1. Blanda mjöl, bakpulver och vatten.
2. Låt degen vila.
3. Koka eller värm kikärtor.
4. Fräs curry, vitlök och chili.
5. Lägg i kikärtorna.
6. Forma små bröd av degen.
7. Fritera bröden.
8. Fyll med kikärtor.
9. Ringla över sås.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Belize'),
  'Ris, röda bönor, kokosmjölk, lök, vitlök, timjan, salt, peppar, kyckling och sallad.',
  '1. Skölj ris och bönor.
2. Koka bönorna nästan mjuka.
3. Tillsätt kokosmjölk.
4. Lägg i riset.
5. Krydda med timjan.
6. Låt ris och bönor koka klart.
7. Stek eller grilla kyckling.
8. Gör en enkel sallad.
9. Lägg upp ris och bönor.
10. Servera med kyckling.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Grenada'),
  'Brödfrukt, kokosmjölk, kyckling eller fisk, callaloo eller spenat, morot, lök, vitlök, gurkmeja, salt och peppar.',
  '1. Skala och skär brödfrukt.
2. Hacka lök och vitlök.
3. Lägg brödfrukt i en gryta.
4. Tillsätt kokosmjölk.
5. Lägg i kött eller fisk.
6. Lägg i grönsaker.
7. Krydda med gurkmeja.
8. Låt grytan sjuda.
9. Rör försiktigt.
10. Servera när allt är mjukt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'),
  'Gröna bananer, saltfisk, lök, vitlök, paprika, tomat, olja, timjan, peppar och lime.',
  '1. Blötlägg saltfisken om den är mycket salt.
2. Koka gröna bananer.
3. Koka saltfisken kort.
4. Dela fisken i bitar.
5. Hacka lök, vitlök och paprika.
6. Fräs grönsaker i olja.
7. Lägg i saltfisken.
8. Tillsätt tomat och timjan.
9. Smaka av med lime.
10. Servera med bananerna.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Dominica'),
  'Callaloo eller spenat, kokosmjölk, lök, vitlök, chili, krabba eller kött, salt, peppar, timjan och vatten.',
  '1. Skölj bladen.
2. Hacka lök och vitlök.
3. Fräs lök och kryddor.
4. Lägg i bladen.
5. Häll på kokosmjölk.
6. Tillsätt krabba eller kött.
7. Låt soppan sjuda.
8. Mixa lätt om du vill.
9. Smaka av med salt.
10. Servera varm.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Argentina'),
  'Nötkött, salt, peppar, chimichurri, persilja, vitlök, vinäger, olja, potatis och sallad.',
  '1. Salta köttet ordentligt.
2. Låt köttet vila kort.
3. Förbered grillen.
4. Grilla köttet långsamt.
5. Vänd när det fått fin yta.
6. Blanda chimichurri.
7. Koka eller rosta potatis.
8. Låt köttet vila.
9. Skär upp köttet.
10. Servera med chimichurri.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Bolivia'),
  'Vetemjöl, smör, köttfärs, potatis, ägg, oliver, lök, chili, buljong och kryddor.',
  '1. Gör en enkel deg med mjöl och smör.
2. Koka potatis och ägg.
3. Fräs lök och köttfärs.
4. Tillsätt chili och buljong.
5. Blanda ner potatis och oliver.
6. Låt fyllningen svalna.
7. Kavla ut degen.
8. Fyll och vik ihop.
9. Grädda tills de är gyllene.
10. Servera varma.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Brasilien'),
  'Svarta bönor, fläsk eller nötkött, korv, lök, vitlök, lagerblad, ris, apelsin, salt och peppar.',
  '1. Blötlägg bönorna.
2. Koka bönorna med lagerblad.
3. Skär kött och korv.
4. Bryn köttet.
5. Fräs lök och vitlök.
6. Lägg allt i bönorna.
7. Låt grytan sjuda länge.
8. Koka ris.
9. Skiva apelsin.
10. Servera feijoada med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Chile'),
  'Majs, köttfärs, kyckling, lök, ägg, oliver, mjölk, basilika, salt och peppar.',
  '1. Mixa majs med lite mjölk.
2. Hacka lök.
3. Fräs lök och köttfärs.
4. Krydda med salt och peppar.
5. Koka ägg.
6. Lägg köttfärs i en form.
7. Lägg på kyckling, ägg och oliver.
8. Bred majsblandningen över.
9. Grädda tills ytan fått färg.
10. Servera varm.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Colombia'),
  'Bönor, ris, köttfärs, chicharrón eller bacon, ägg, avokado, matbanan, lök, tomat och koriander.',
  '1. Koka bönorna.
2. Koka riset.
3. Stek köttfärs.
4. Stek bacon eller chicharrón.
5. Stek ägg.
6. Stek matbanan.
7. Hacka tomat och lök.
8. Skiva avokado.
9. Lägg allt på en stor tallrik.
10. Servera direkt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Ecuador'),
  'Tonfisk eller annan fisk, yuca, rödlök, tomat, koriander, lime, spiskummin, salt, peppar och buljong.',
  '1. Koka yuca mjuk.
2. Koka fisken i buljong.
3. Ta upp och dela fisken.
4. Mixa lite yuca i buljongen.
5. Skiva rödlök.
6. Hacka tomat och koriander.
7. Lägg tillbaka fisken.
8. Smaka av med lime.
9. Toppa med lök och tomat.
10. Servera varm.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Guyana'),
  'Nötkött eller fläsk, cassareep eller mörk sås, kanel, kryddnejlika, lök, vitlök, chili, salt, peppar och bröd.',
  '1. Skär köttet i bitar.
2. Hacka lök och vitlök.
3. Bryn köttet.
4. Tillsätt cassareep eller mörk sås.
5. Lägg i kryddor.
6. Häll på vatten.
7. Låt grytan sjuda länge.
8. Rör då och då.
9. Smaka av med chili.
10. Servera med bröd.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Paraguay'),
  'Majsmjöl, lök, ost, ägg, mjölk, smör, salt, peppar, olja och färska örter.',
  '1. Hacka löken.
2. Fräs löken mjuk i smör.
3. Blanda majsmjöl och mjölk.
4. Tillsätt ägg.
5. Smula ner ost.
6. Blanda i löken.
7. Krydda med salt och peppar.
8. Häll i en form.
9. Grädda tills kakan är fast.
10. Servera i bitar.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Peru'),
  'Vit fisk, lime, rödlök, chili, koriander, salt, peppar, sötpotatis, majs och sallad.',
  '1. Skär fisken i små bitar.
2. Pressa lime över fisken.
3. Skiva rödlök tunt.
4. Hacka chili och koriander.
5. Blanda allt försiktigt.
6. Låt stå kallt kort.
7. Koka sötpotatis.
8. Koka majs.
9. Smaka av med salt.
10. Servera ceviche med tillbehör.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Surinam'),
  'Kyckling, pomtajer eller rotfrukt, citrusjuice, lök, vitlök, tomat, selleri, smör, salt och peppar.',
  '1. Riv eller hacka rotfrukten.
2. Krydda kycklingen.
3. Hacka lök och vitlök.
4. Fräs kyckling och lök.
5. Tillsätt tomat och citrusjuice.
6. Blanda med rotfrukten.
7. Lägg allt i en form.
8. Klicka över smör.
9. Grädda tills rätten är fast.
10. Servera varm.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Uruguay'),
  'Bröd, nötkött, skinka, ost, ägg, sallad, tomat, majonnäs, bacon och salt.',
  '1. Stek nötköttet tunt.
2. Stek ägget.
3. Rosta brödet.
4. Bred majonnäs på brödet.
5. Lägg på sallad och tomat.
6. Lägg på kött.
7. Lägg på skinka och ost.
8. Toppa med ägg och bacon.
9. Lägg på locket.
10. Servera som smörgås.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Venezuela'),
  'Ris, svarta bönor, nötkött, tomat, lök, vitlök, paprika, matbanan, salt och peppar.',
  '1. Koka riset.
2. Koka svarta bönor.
3. Koka nötkött tills det går att strimla.
4. Strimla köttet.
5. Fräs lök, vitlök och paprika.
6. Tillsätt tomat och kött.
7. Stek matbanan.
8. Smaka av bönorna.
9. Lägg upp ris, bönor, kött och banan.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Australien'),
  'Pajdeg, nötfärs, lök, vitlök, buljong, worcestersås, mjöl, smör, salt och peppar.',
  '1. Hacka lök och vitlök.
2. Bryn färsen.
3. Tillsätt lök och vitlök.
4. Häll på buljong och sås.
5. Red med lite mjöl.
6. Låt fyllningen tjockna.
7. Lägg pajdeg i formar.
8. Fyll med köttfärs.
9. Lägg deglock ovanpå.
10. Grädda tills pajerna är gyllene.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Nya Zeeland'),
  'Lamm eller kyckling, potatis, morötter, pumpa, kål, salt, peppar, örter, vatten och folie.',
  '1. Skär kött och grönsaker i bitar.
2. Krydda med salt och örter.
3. Lägg allt i foliepaket eller gryta.
4. Tillsätt lite vatten.
5. Förslut paketet.
6. Tillaga långsamt i ugn.
7. Kontrollera att köttet är mört.
8. Låt vila kort.
9. Lägg upp grönsaker och kött.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Fiji'),
  'Vit fisk, lime, kokosmjölk, lök, tomat, gurka, chili, salt, peppar och koriander.',
  '1. Skär fisken i små bitar.
2. Pressa lime över fisken.
3. Låt fisken marineras kallt.
4. Hacka lök, tomat och gurka.
5. Häll av lite lime om det behövs.
6. Blanda i kokosmjölk.
7. Tillsätt grönsaker.
8. Krydda med salt och peppar.
9. Toppa med koriander.
10. Servera kallt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Papua Nya Guinea'),
  'Kyckling eller fläsk, sötpotatis, taro, bananblad eller folie, kokosmjölk, lök, salt, peppar, gröna blad och vatten.',
  '1. Skär kött och rotfrukter.
2. Krydda med salt och peppar.
3. Lägg blad eller folie i en form.
4. Lägg i kött och grönsaker.
5. Häll över kokosmjölk.
6. Täck ordentligt.
7. Tillaga långsamt i ugn.
8. Kontrollera att rotfrukterna är mjuka.
9. Låt vila kort.
10. Servera direkt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Samoa'),
  'Taroblad eller spenat, kokosgrädde, lök, vitlök, salt, peppar, corned beef eller fisk, folie, citron och ris.',
  '1. Skölj bladen.
2. Hacka lök och vitlök.
3. Blanda kokosgrädde med lök.
4. Krydda med salt och peppar.
5. Lägg fyllning i bladen.
6. Vik ihop till paket.
7. Slå in i folie.
8. Baka tills bladen är mjuka.
9. Pressa över lite citron.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Tonga'),
  'Taroblad eller spenat, kokosmjölk, corned beef, lök, vitlök, salt, peppar, folie, citron och ris.',
  '1. Skölj tarobladen.
2. Hacka lök och vitlök.
3. Blanda kokosmjölk med lök.
4. Lägg corned beef på bladen.
5. Häll över kokosblandningen.
6. Vik ihop bladen.
7. Slå in i folie.
8. Baka tills allt är varmt.
9. Låt vila kort.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Vanuatu'),
  'Riven kassava eller taro, kokosmjölk, kyckling eller fisk, lök, salt, peppar, bananblad eller folie, spenat och citron.',
  '1. Riv rotfrukten.
2. Hacka lök.
3. Blanda rotfrukt med kokosmjölk.
4. Krydda med salt och peppar.
5. Lägg blandningen i blad eller folie.
6. Lägg på kyckling eller fisk.
7. Täck med mer rotfrukt.
8. Baka långsamt i ugn.
9. Låt vila.
10. Servera med citron.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Salomonöarna'),
  'Taro eller annan rotfrukt, kokosmjölk, salt, vatten, fisk, lök, citron, peppar, gröna blad och olja.',
  '1. Skala rotfrukten.
2. Koka den mjuk.
3. Mosa rotfrukten.
4. Blanda med kokosmjölk.
5. Krydda med salt.
6. Krydda fisken med citron.
7. Stek eller grilla fisken.
8. Fräs gröna blad lätt.
9. Lägg upp poi med fisk.
10. Servera varmt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Kiribati'),
  'Taroblad eller spenat, kokosgrädde, lök, fisk eller corned beef, salt, peppar, folie, citron, ris och chili.',
  '1. Skölj bladen.
2. Hacka löken.
3. Blanda kokosgrädde med salt.
4. Lägg blad i folie.
5. Lägg på fisk eller corned beef.
6. Häll över kokosgrädde.
7. Vik ihop paketet.
8. Baka tills bladen är mjuka.
9. Smaka av med citron.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Mikronesien'),
  'Kyckling eller fisk, citron eller lime, kokos, salladslök, chili, salt, peppar, lök, koriander och ris.',
  '1. Skär kött eller fisk i små bitar.
2. Marinera med citrus.
3. Riv eller tillsätt kokos.
4. Hacka salladslök och chili.
5. Blanda allt i en skål.
6. Krydda med salt och peppar.
7. Låt vila kallt.
8. Koka ris.
9. Toppa med koriander.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Marshallöarna'),
  'Vit fisk, kokosmjölk, lime, lök, vitlök, salt, peppar, ris, gröna blad och chili.',
  '1. Krydda fisken med salt och lime.
2. Hacka lök och vitlök.
3. Fräs löken lätt.
4. Lägg fisken i en form.
5. Häll över kokosmjölk.
6. Tillsätt chili om du vill.
7. Baka tills fisken är klar.
8. Koka ris.
9. Lägg upp fisken med sås.
10. Servera med ris och grönt.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Palau'),
  'Kyckling, ingefära, vitlök, lök, grön papaya eller grönsaker, buljong, salt, peppar, ris och salladslök.',
  '1. Skär kycklingen i bitar.
2. Hacka ingefära och vitlök.
3. Fräs lök, vitlök och ingefära.
4. Lägg i kycklingen.
5. Häll på buljong.
6. Lägg i papaya eller grönsaker.
7. Låt soppan sjuda.
8. Smaka av med salt.
9. Toppa med salladslök.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Nauru'),
  'Vit fisk, kokosmjölk, lime, vitlök, lök, salt, peppar, chili, ris och koriander.',
  '1. Skär fisken i portionsbitar.
2. Krydda med salt och lime.
3. Hacka lök och vitlök.
4. Lägg fisken i en form.
5. Häll över kokosmjölk.
6. Tillsätt lök och chili.
7. Baka tills fisken är klar.
8. Koka ris.
9. Toppa fisken med koriander.
10. Servera med ris.'
),
(
  (SELECT country_id FROM countries WHERE country_name = 'Tuvalu'),
  'Pulaka eller taro, kokosmjölk, fisk, lök, salt, peppar, gröna blad, citron, vatten och chili.',
  '1. Skala pulaka eller taro.
2. Skär i bitar.
3. Koka rotfrukten mjuk.
4. Krydda fisken.
5. Baka eller stek fisken.
6. Värm kokosmjölk med lök.
7. Lägg rotfrukten i såsen.
8. Lägg till gröna blad.
9. Smaka av med citron.
10. Servera med fisken.'
);

