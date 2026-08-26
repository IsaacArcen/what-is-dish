PRAGMA foreign_keys = ON;

DELETE FROM dishes;
DELETE FROM countries;

INSERT INTO countries (country_name, continent, flag_url)
VALUES
-- Africa
('Nigeria', 'Africa', 'https://flagcdn.com/w320/ng.png'),
('Egypt', 'Africa', 'https://flagcdn.com/w320/eg.png'),
('South Africa', 'Africa', 'https://flagcdn.com/w320/za.png'),
('Morocco', 'Africa', 'https://flagcdn.com/w320/ma.png'),
('Ethiopia', 'Africa', 'https://flagcdn.com/w320/et.png'),
('Ghana', 'Africa', 'https://flagcdn.com/w320/gh.png'),
('Kenya', 'Africa', 'https://flagcdn.com/w320/ke.png'),
('Algeria', 'Africa', 'https://flagcdn.com/w320/dz.png'),
('Tunisia', 'Africa', 'https://flagcdn.com/w320/tn.png'),
('Senegal', 'Africa', 'https://flagcdn.com/w320/sn.png'),
('Tanzania', 'Africa', 'https://flagcdn.com/w320/tz.png'),
('Uganda', 'Africa', 'https://flagcdn.com/w320/ug.png'),
('Cameroon', 'Africa', 'https://flagcdn.com/w320/cm.png'),
('Ivory Coast', 'Africa', 'https://flagcdn.com/w320/ci.png'),
('Angola', 'Africa', 'https://flagcdn.com/w320/ao.png'),
('Zimbabwe', 'Africa', 'https://flagcdn.com/w320/zw.png'),
('Rwanda', 'Africa', 'https://flagcdn.com/w320/rw.png'),
('Sudan', 'Africa', 'https://flagcdn.com/w320/sd.png'),
('Somalia', 'Africa', 'https://flagcdn.com/w320/so.png'),
('Madagascar', 'Africa', 'https://flagcdn.com/w320/mg.png'),

-- Asiatiska länder
('Japan', 'Asia', 'https://flagcdn.com/w320/jp.png'),
('China', 'Asia', 'https://flagcdn.com/w320/cn.png'),
('India', 'Asia', 'https://flagcdn.com/w320/in.png'),
('South Korea', 'Asia', 'https://flagcdn.com/w320/kr.png'),
('Thailand', 'Asia', 'https://flagcdn.com/w320/th.png'),
('Vietnam', 'Asia', 'https://flagcdn.com/w320/vn.png'),
('Indonesia', 'Asia', 'https://flagcdn.com/w320/id.png'),
('Philippines', 'Asia', 'https://flagcdn.com/w320/ph.png'),
('Malaysia', 'Asia', 'https://flagcdn.com/w320/my.png'),
('Turkey', 'Asia', 'https://flagcdn.com/w320/tr.png'),
('Iran', 'Asia', 'https://flagcdn.com/w320/ir.png'),
('Iraq', 'Asia', 'https://flagcdn.com/w320/iq.png'),
('Saudi Arabia', 'Asia', 'https://flagcdn.com/w320/sa.png'),
('Israel', 'Asia', 'https://flagcdn.com/w320/il.png'),
('Lebanon', 'Asia', 'https://flagcdn.com/w320/lb.png'),
('Pakistan', 'Asia', 'https://flagcdn.com/w320/pk.png'),
('Bangladesh', 'Asia', 'https://flagcdn.com/w320/bd.png'),
('Sri Lanka', 'Asia', 'https://flagcdn.com/w320/lk.png'),
('Nepal', 'Asia', 'https://flagcdn.com/w320/np.png'),
('Mongolia', 'Asia', 'https://flagcdn.com/w320/mn.png'),

-- Eurpeiska länder
('Italy', 'Europe', 'https://flagcdn.com/w320/it.png'),
('France', 'Europe', 'https://flagcdn.com/w320/fr.png'),
('Spain', 'Europe', 'https://flagcdn.com/w320/es.png'),
('Germany', 'Europe', 'https://flagcdn.com/w320/de.png'),
('Greece', 'Europe', 'https://flagcdn.com/w320/gr.png'),
('Sweden', 'Europe', 'https://flagcdn.com/w320/se.png'),
('Norway', 'Europe', 'https://flagcdn.com/w320/no.png'),
('Denmark', 'Europe', 'https://flagcdn.com/w320/dk.png'),
('Poland', 'Europe', 'https://flagcdn.com/w320/pl.png'),
('Portugal', 'Europe', 'https://flagcdn.com/w320/pt.png'),
('United Kingdom', 'Europe', 'https://flagcdn.com/w320/gb.png'),
('Ireland', 'Europe', 'https://flagcdn.com/w320/ie.png'),
('Netherlands', 'Europe', 'https://flagcdn.com/w320/nl.png'),
('Belgium', 'Europe', 'https://flagcdn.com/w320/be.png'),
('Austria', 'Europe', 'https://flagcdn.com/w320/at.png'),
('Switzerland', 'Europe', 'https://flagcdn.com/w320/ch.png'),
('Hungary', 'Europe', 'https://flagcdn.com/w320/hu.png'),
('Czech Republic', 'Europe', 'https://flagcdn.com/w320/cz.png'),
('Ukraine', 'Europe', 'https://flagcdn.com/w320/ua.png'),
('Romania', 'Europe', 'https://flagcdn.com/w320/ro.png'),

-- Nordamerikanska länder
('United States', 'North America', 'https://flagcdn.com/w320/us.png'),
('Canada', 'North America', 'https://flagcdn.com/w320/ca.png'),
('Mexico', 'North America', 'https://flagcdn.com/w320/mx.png'),
('Cuba', 'North America', 'https://flagcdn.com/w320/cu.png'),
('Jamaica', 'North America', 'https://flagcdn.com/w320/jm.png'),
('Haiti', 'North America', 'https://flagcdn.com/w320/ht.png'),
('Dominican Republic', 'North America', 'https://flagcdn.com/w320/do.png'),
('Guatemala', 'North America', 'https://flagcdn.com/w320/gt.png'),
('Honduras', 'North America', 'https://flagcdn.com/w320/hn.png'),
('El Salvador', 'North America', 'https://flagcdn.com/w320/sv.png'),
('Nicaragua', 'North America', 'https://flagcdn.com/w320/ni.png'),
('Costa Rica', 'North America', 'https://flagcdn.com/w320/cr.png'),
('Panama', 'North America', 'https://flagcdn.com/w320/pa.png'),
('Bahamas', 'North America', 'https://flagcdn.com/w320/bs.png'),
('Barbados', 'North America', 'https://flagcdn.com/w320/bb.png'),
('Trinidad and Tobago', 'North America', 'https://flagcdn.com/w320/tt.png'),
('Belize', 'North America', 'https://flagcdn.com/w320/bz.png'),
('Grenada', 'North America', 'https://flagcdn.com/w320/gd.png'),
('Saint Lucia', 'North America', 'https://flagcdn.com/w320/lc.png'),
('Dominica', 'North America', 'https://flagcdn.com/w320/dm.png'),

-- sydamerikanska länder
('Argentina', 'South America', 'https://flagcdn.com/w320/ar.png'),
('Bolivia', 'South America', 'https://flagcdn.com/w320/bo.png'),
('Brazil', 'South America', 'https://flagcdn.com/w320/br.png'),
('Chile', 'South America', 'https://flagcdn.com/w320/cl.png'),
('Colombia', 'South America', 'https://flagcdn.com/w320/co.png'),
('Ecuador', 'South America', 'https://flagcdn.com/w320/ec.png'),
('Guyana', 'South America', 'https://flagcdn.com/w320/gy.png'),
('Paraguay', 'South America', 'https://flagcdn.com/w320/py.png'),
('Peru', 'South America', 'https://flagcdn.com/w320/pe.png'),
('Suriname', 'South America', 'https://flagcdn.com/w320/sr.png'),
('Uruguay', 'South America', 'https://flagcdn.com/w320/uy.png'),
('Venezuela', 'South America', 'https://flagcdn.com/w320/ve.png'),

-- oceanien länder
('Australia', 'Oceania', 'https://flagcdn.com/w320/au.png'),
('New Zealand', 'Oceania', 'https://flagcdn.com/w320/nz.png'),
('Fiji', 'Oceania', 'https://flagcdn.com/w320/fj.png'),
('Papua New Guinea', 'Oceania', 'https://flagcdn.com/w320/pg.png'),
('Samoa', 'Oceania', 'https://flagcdn.com/w320/ws.png'),
('Tonga', 'Oceania', 'https://flagcdn.com/w320/to.png'),
('Vanuatu', 'Oceania', 'https://flagcdn.com/w320/vu.png'),
('Solomon Islands', 'Oceania', 'https://flagcdn.com/w320/sb.png'),
('Kiribati', 'Oceania', 'https://flagcdn.com/w320/ki.png'),
('Micronesia', 'Oceania', 'https://flagcdn.com/w320/fm.png'),
('Marshall Islands', 'Oceania', 'https://flagcdn.com/w320/mh.png'),
('Palau', 'Oceania', 'https://flagcdn.com/w320/pw.png'),
('Nauru', 'Oceania', 'https://flagcdn.com/w320/nr.png'),
('Tuvalu', 'Oceania', 'https://flagcdn.com/w320/tv.png');

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
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Jollof Rice', 1, '/images/dishes/jollof-rice.jpg', 'Jollof rice är en mycket populär västafrikansk risrätt med tomat, kryddor och ofta kött eller grönsaker.', 'En röd risrätt som är mycket känd i Västafrika.'),
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Egusi Soup', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Suya', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nigeria'), 'Pounded Yam', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Egypt'), 'Koshari', 1, '/images/dishes/koshari.jpg', 'Koshari är en egyptisk rätt med ris, pasta, linser, kikärtor, tomatsås och rostad lök.', 'Rätten blandar ris, pasta och linser.'),
((SELECT country_id FROM countries WHERE country_name = 'Egypt'), 'Ful Medames', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Egypt'), 'Molokhia', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Egypt'), 'Hawawshi', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'South Africa'), 'Bobotie', 1, '/images/dishes/bobotie.jpg', 'Bobotie är en sydafrikansk ugnsrätt med kryddad köttfärs och ett äggbaserat täcke.', 'En kryddad köttfärsrätt som bakas i ugn.'),
((SELECT country_id FROM countries WHERE country_name = 'South Africa'), 'Bunny Chow', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'South Africa'), 'Boerewors', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'South Africa'), 'Potjiekos', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Morocco'), 'Tagine', 1, '/images/dishes/tagine.jpg', 'Tagine är en marockansk långkokt gryta som ofta lagas i ett konformat lerkärl.', 'En långkokt gryta med kryddor, kött och grönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Morocco'), 'Couscous', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Morocco'), 'Harira', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Morocco'), 'Pastilla', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ethiopia'), 'Doro Wat', 1, '/images/dishes/doro-wat.jpg', 'Doro wat är en etiopisk kycklinggryta med stark kryddblandning och serveras ofta med injera.', 'En stark kycklinggryta som ofta äts med injera.'),
((SELECT country_id FROM countries WHERE country_name = 'Ethiopia'), 'Injera', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ethiopia'), 'Kitfo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ethiopia'), 'Shiro', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Waakye', 1, '/images/dishes/waakye.jpg', 'Waakye är en ghanansk rätt med ris och bönor som ofta serveras med sås, ägg, kött eller fisk.', 'Rätten består främst av ris och bönor.'),
((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Banku', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Fufu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ghana'), 'Red Red', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Nyama Choma', 1, '/images/dishes/nyama-choma.jpg', 'Nyama choma är grillat kött och är en av Kenyas mest kända maträtter.', 'Rätten betyder ungefär grillat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Ugali', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Sukuma Wiki', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kenya'), 'Githeri', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Algeria'), 'Couscous', 1, '/images/dishes/couscous.jpg', 'Couscous är en nordafrikansk rätt med små gryn som ofta serveras med gryta, grönsaker och kött.', 'Små gryn serverade med gryta och grönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Algeria'), 'Chakhchoukha', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Algeria'), 'Rechta', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Algeria'), 'Mhadjeb', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tunisia'), 'Brik', 1, '/images/dishes/brik.jpg', 'Brik är en tunisisk frasig deg fylld med bland annat ägg, tonfisk eller potatis.', 'En frasig fylld deg som ofta innehåller ägg.'),
((SELECT country_id FROM countries WHERE country_name = 'Tunisia'), 'Lablabi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tunisia'), 'Ojja', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tunisia'), 'Makroudh', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Thieboudienne', 1, '/images/dishes/thieboudienne.jpg', 'Thieboudienne är Senegals välkända ris- och fiskrätt med tomat och grönsaker.', 'En risrätt med fisk, tomat och grönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Yassa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Mafe', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Senegal'), 'Lakh', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Ugali', 1, '/images/dishes/ugali.jpg', 'Ugali är en enkel och vanlig majsbaserad rätt som äts i stora delar av Östafrika.', 'En fast majsgröt som ofta äts med sås eller gryta.'),
((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Pilau', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Mshikaki', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tanzania'), 'Ndizi Nyama', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Matoke', 1, '/images/dishes/matoke.jpg', 'Matoke är en ugandisk rätt gjord på kokta eller ångade gröna bananer.', 'Rätten görs på gröna matbananer.'),
((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Luwombo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Rolex', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uganda'), 'Posho', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Cameroon'), 'Ndole', 1, '/images/dishes/ndole.jpg', 'Ndole är en kamerunsk gryta med bittra blad, jordnötter och ofta kött eller fisk.', 'En gryta med blad och jordnötter.'),
((SELECT country_id FROM countries WHERE country_name = 'Cameroon'), 'Eru', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Cameroon'), 'Poulet DG', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Cameroon'), 'Koki', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ivory Coast'), 'Attieke', 1, '/images/dishes/attieke.jpg', 'Attieke är en ivoriansk rätt gjord av fermenterad kassava och serveras ofta med fisk.', 'Rätten är gjord av kassava och serveras ofta med fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Ivory Coast'), 'Kedjenou', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ivory Coast'), 'Alloco', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ivory Coast'), 'Garba', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Muamba de Galinha', 1, '/images/dishes/muamba-de-galinha.jpg', 'Muamba de galinha är en angolansk kycklinggryta med palmolja och kryddor.', 'En kycklinggryta med palmolja.'),
((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Funje', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Calulu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Angola'), 'Mufete', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Sadza', 1, '/images/dishes/sadza.jpg', 'Sadza är en vanlig zimbabwisk majsbaserad rätt som ofta äts med kött, grönsaker eller sås.', 'En fast majsgröt som äts med tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Muriwo Unedovi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Nyama', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Zimbabwe'), 'Mapopo Candy', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Isombe', 1, '/images/dishes/isombe.jpg', 'Isombe är en rwandisk rätt gjord på kassavablad, ofta tillagad med jordnötter.', 'Rätten görs på kassavablad.'),
((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Brochettes', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Ugali', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Rwanda'), 'Ibihaza', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Ful Medames', 1, '/images/dishes/ful-medames.jpg', 'Ful medames är en rätt med kokta bondbönor som äts mycket i Sudan och flera andra länder.', 'Rätten består främst av kokta bönor.'),
((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Kisra', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Aseeda', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sudan'), 'Gurasa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Bariis Iskukaris', 1, '/images/dishes/bariis-iskukaris.jpg', 'Bariis iskukaris är en somalisk kryddad risrätt som ofta serveras med kött.', 'En kryddad risrätt som ofta serveras med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Canjeero', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Sambusa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Somalia'), 'Maraq', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Madagascar'), 'Romazava', 1, '/images/dishes/romazava.jpg', 'Romazava är en traditionell gryta från Madagaskar med kött, bladgrönsaker och kryddor.', 'En gryta med kött och bladgrönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Madagascar'), 'Ravitoto', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Madagascar'), 'Mofo Gasy', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Madagascar'), 'Akoho Sy Voanio', 0, NULL, NULL, NULL),

-- ASIATISKA LÄNDER
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Sushi', 1, '/images/dishes/sushi.jpg', 'Sushi är en japansk maträtt med vinägerkryddat ris och ofta fisk, skaldjur eller grönsaker.', 'Rätten innehåller ofta ris och fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Ramen', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Tempura', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Japan'), 'Okonomiyaki', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'China'), 'Peking Duck', 1, '/images/dishes/peking-duck.jpg', 'Pekinganka är en klassisk kinesisk rätt känd för sitt krispiga skinn och serveras ofta med tunna pannkakor.', 'Rätten är känd för krispigt ank-skinn.'),
((SELECT country_id FROM countries WHERE country_name = 'China'), 'Mapo Tofu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'China'), 'Kung Pao Chicken', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'China'), 'Dumplings', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'India'), 'Biryani', 1, '/images/dishes/biryani.jpg', 'Biryani är en kryddig risrätt från Sydasien som ofta lagas med kött, grönsaker och aromatiska kryddor.', 'En kryddig risrätt med många aromatiska kryddor.'),
((SELECT country_id FROM countries WHERE country_name = 'India'), 'Butter Chicken', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'India'), 'Samosa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'India'), 'Masala Dosa', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'South Korea'), 'Kimchi', 1, '/images/dishes/kimchi.jpg', 'Kimchi är en koreansk fermenterad grönsaksrätt, oftast gjord på kål och chili.', 'En fermenterad och kryddig grönsaksrätt.'),
((SELECT country_id FROM countries WHERE country_name = 'South Korea'), 'Bibimbap', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'South Korea'), 'Bulgogi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'South Korea'), 'Tteokbokki', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Pad Thai', 1, '/images/dishes/pad-thai.jpg', 'Pad Thai är en thailändsk wokad nudelrätt med risnudlar, ägg, tofu eller räkor och tamarindsås.', 'En wokad nudelrätt med sötsyrlig smak.'),
((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Tom Yum', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Green Curry', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Thailand'), 'Som Tam', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Pho', 1, '/images/dishes/pho.jpg', 'Pho är en vietnamesisk nudelsoppa med buljong, risnudlar, örter och ofta nötkött eller kyckling.', 'En nudelsoppa med klar buljong och örter.'),
((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Banh Mi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Goi Cuon', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vietnam'), 'Bun Cha', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Indonesia'), 'Nasi Goreng', 1, '/images/dishes/nasi-goreng.jpg', 'Nasi goreng är indonesiskt stekt ris med kryddor, grönsaker och ofta ägg eller kyckling.', 'Rätten är stekt ris med kryddor.'),
((SELECT country_id FROM countries WHERE country_name = 'Indonesia'), 'Satay', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Indonesia'), 'Rendang', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Indonesia'), 'Gado-Gado', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Philippines'), 'Adobo', 1, '/images/dishes/adobo.jpg', 'Adobo är en filippinsk rätt där kött marineras och kokas med soja, vinäger, vitlök och kryddor.', 'Rätten kokas ofta med soja och vinäger.'),
((SELECT country_id FROM countries WHERE country_name = 'Philippines'), 'Sinigang', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Philippines'), 'Lechon', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Philippines'), 'Pancit', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Nasi Lemak', 1, '/images/dishes/nasi-lemak.jpg', 'Nasi lemak är en malaysisk rätt med kokosris, sambal, jordnötter, ägg och ofta ansjovis eller kyckling.', 'Rätten innehåller kokosris och sambal.'),
((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Laksa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Roti Canai', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Malaysia'), 'Char Kway Teow', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Turkey'), 'Kebab', 1, '/images/dishes/kebab.jpg', 'Kebab är en välkänd turkisk kötträtt med många regionala varianter och lång matkulturell historia.', 'En grillad eller stekt kötträtt med många varianter.'),
((SELECT country_id FROM countries WHERE country_name = 'Turkey'), 'Lahmacun', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Turkey'), 'Menemen', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Turkey'), 'Manti', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Chelo Kebab', 1, '/images/dishes/chelo-kebab.jpg', 'Chelo kebab är en klassisk iransk rätt med grillat kött som serveras med ris, smör och ibland grillad tomat.', 'Rätten består ofta av grillat kött och ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Ghormeh Sabzi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Fesenjan', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Iran'), 'Tahdig', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Iraq'), 'Masgouf', 1, '/images/dishes/masgouf.jpg', 'Masgouf är en irakisk fiskrätt där fisken grillas långsamt och ofta serveras med ris, citron och grönsaker.', 'En grillad fiskrätt som ofta serveras med ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Iraq'), 'Dolma', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Iraq'), 'Kubba', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Iraq'), 'Tashreeb', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Saudi Arabia'), 'Kabsa', 1, '/images/dishes/kabsa.jpg', 'Kabsa är en saudisk risrätt med kryddor och ofta kyckling, lamm eller annat kött.', 'En kryddig risrätt med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Saudi Arabia'), 'Mandi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saudi Arabia'), 'Jareesh', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saudi Arabia'), 'Saleeg', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Falafel', 1, '/images/dishes/falafel.jpg', 'Falafel är friterade bollar av kikärtor eller bondbönor och är mycket vanlig i israelisk och mellanösternsk matkultur.', 'Små friterade bollar gjorda på baljväxter.'),
((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Shakshuka', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Sabich', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Israel'), 'Hummus', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Lebanon'), 'Kibbeh', 1, '/images/dishes/kibbeh.jpg', 'Kibbeh är en libanesisk rätt gjord med bulgur, kryddor och ofta kött, formad som bollar eller bakad i form.', 'Rätten görs ofta med bulgur och kryddat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Lebanon'), 'Tabbouleh', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Lebanon'), 'Manakish', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Lebanon'), 'Fattoush', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Nihari', 1, '/images/dishes/nihari.jpg', 'Nihari är en pakistansk långkokt gryta med kött och kryddor, ofta serverad till frukost eller vid högtider.', 'En långkokt kryddig köttgryta.'),
((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Chicken Karahi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Seekh Kebab', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Pakistan'), 'Haleem', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Hilsa Curry', 1, '/images/dishes/hilsa-curry.jpg', 'Hilsa curry är en välkänd bangladeshisk fiskrätt gjord med hilsa, senap och kryddor.', 'En fiskrätt med senap och kryddor.'),
((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Bhuna Khichuri', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Panta Bhat', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bangladesh'), 'Fuchka', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Rice and Curry', 1, '/images/dishes/rice-and-curry.jpg', 'Rice and curry är en central rätt i Sri Lanka och består ofta av ris med flera kryddiga curryrätter och samboler.', 'Rätten består av ris med flera curryrätter.'),
((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Kottu', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Hoppers', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sri Lanka'), 'Lamprais', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Dal Bhat', 1, '/images/dishes/dal-bhat.jpg', 'Dal bhat är en nepalesisk basrätt med linsgryta och ris, ofta serverad med grönsaker och pickles.', 'Rätten består av linser och ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Momo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Thukpa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nepal'), 'Sel Roti', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Mongolia'), 'Buuz', 1, '/images/dishes/buuz.jpg', 'Buuz är mongoliska ångade dumplings fyllda med kött och är vanliga vid högtider.', 'Ångade dumplings fyllda med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Mongolia'), 'Khuushuur', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mongolia'), 'Tsuivan', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mongolia'), 'Bansh', 0, NULL, NULL, NULL),

europeiska länder
((SELECT country_id FROM countries WHERE country_name = 'Italy'), 'Pizza', 1, '/images/dishes/pizza.jpg', 'Pizza är en italiensk maträtt som framför allt kopplas till Neapel och består ofta av deg, tomatsås och ost.', 'Rätten bakas i ugn och har ofta tomatsås och ost.'),
((SELECT country_id FROM countries WHERE country_name = 'Italy'), 'Pasta Carbonara', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Italy'), 'Risotto', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Italy'), 'Lasagna', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'France'), 'Crêpes', 1, '/images/dishes/crepes.jpg', 'Crêpes är tunna franska pannkakor som kan serveras både söta och matiga.', 'En tunn pannkaka som kan fyllas på många sätt.'),
((SELECT country_id FROM countries WHERE country_name = 'France'), 'Ratatouille', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'France'), 'Coq au Vin', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'France'), 'Bouillabaisse', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Spain'), 'Paella', 1, '/images/dishes/paella.jpg', 'Paella är en spansk risrätt från Valencia som ofta innehåller saffran, grönsaker, kyckling eller skaldjur.', 'En gul risrätt som ofta lagas i en bred panna.'),
((SELECT country_id FROM countries WHERE country_name = 'Spain'), 'Tortilla Española', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Spain'), 'Gazpacho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Spain'), 'Churros', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Germany'), 'Sauerbraten', 1, '/images/dishes/sauerbraten.jpg', 'Sauerbraten är en tysk marinerad stek som ofta serveras med sås, kål och potatis.', 'En marinerad stek som serveras med kraftig sås.'),
((SELECT country_id FROM countries WHERE country_name = 'Germany'), 'Bratwurst', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Germany'), 'Schnitzel', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Germany'), 'Spätzle', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Greece'), 'Moussaka', 1, '/images/dishes/moussaka.jpg', 'Moussaka är en grekisk ugnsrätt med aubergine, köttfärs och béchamelsås.', 'En ugnsbakad rätt med aubergine och sås.'),
((SELECT country_id FROM countries WHERE country_name = 'Greece'), 'Souvlaki', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Greece'), 'Gyros', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Greece'), 'Greek Salad', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Sweden'), 'Swedish Meatballs', 1, '/images/dishes/swedish-meatballs.jpg', 'Svenska köttbullar är en klassisk svensk rätt som ofta serveras med potatis, gräddsås och lingonsylt.', 'Rätten serveras ofta med potatis, sås och lingonsylt.'),
((SELECT country_id FROM countries WHERE country_name = 'Sweden'), 'Gravlax', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sweden'), 'Janssons Frestelse', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Sweden'), 'Toast Skagen', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Norway'), 'Fårikål', 1, '/images/dishes/farikal.jpg', 'Fårikål är en norsk gryta med fårkött och kål och ses ofta som en traditionell nationalrätt.', 'En gryta med fårkött och kål.'),
((SELECT country_id FROM countries WHERE country_name = 'Norway'), 'Lutefisk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Norway'), 'Rømmegrøt', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Norway'), 'Kjøttkaker', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Denmark'), 'Smørrebrød', 1, '/images/dishes/smorrebrod.jpg', 'Smørrebrød är danska öppna smörgåsar med pålägg som fisk, kött, ägg eller grönsaker.', 'En öppen smörgås med olika pålägg.'),
((SELECT country_id FROM countries WHERE country_name = 'Denmark'), 'Frikadeller', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Denmark'), 'Stegt Flæsk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Denmark'), 'Æbleskiver', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Poland'), 'Pierogi', 1, '/images/dishes/pierogi.jpg', 'Pierogi är polska dumplings fyllda med exempelvis potatis, ost, kött eller kål.', 'Fyllda degknyten som kokas eller steks.'),
((SELECT country_id FROM countries WHERE country_name = 'Poland'), 'Bigos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Poland'), 'Żurek', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Poland'), 'Gołąbki', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Bacalhau', 1, '/images/dishes/bacalhau.jpg', 'Bacalhau är portugisisk saltad torsk och förekommer i många traditionella portugisiska rätter.', 'Rätten bygger på saltad torsk.'),
((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Caldo Verde', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Francesinha', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Portugal'), 'Pastel de Nata', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'United Kingdom'), 'Fish and Chips', 1, '/images/dishes/fish-and-chips.jpg', 'Fish and chips är en brittisk rätt med friterad fisk och pommes frites, ofta serverad med maltvinäger eller ärtor.', 'Rätten består av friterad fisk och pommes frites.'),
((SELECT country_id FROM countries WHERE country_name = 'United Kingdom'), 'Shepherd’s Pie', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'United Kingdom'), 'Sunday Roast', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'United Kingdom'), 'Full English Breakfast', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ireland'), 'Irish Stew', 1, '/images/dishes/irish-stew.jpg', 'Irish stew är en traditionell irländsk gryta med lamm eller fårkött, potatis, lök och morötter.', 'En gryta med kött, potatis och rotfrukter.'),
((SELECT country_id FROM countries WHERE country_name = 'Ireland'), 'Boxty', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ireland'), 'Colcannon', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ireland'), 'Soda Bread', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Netherlands'), 'Stamppot', 1, '/images/dishes/stamppot.jpg', 'Stamppot är en nederländsk rätt med mosad potatis blandad med grönsaker och ofta serverad med korv.', 'En potatisrätt som ofta serveras med korv.'),
((SELECT country_id FROM countries WHERE country_name = 'Netherlands'), 'Bitterballen', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Netherlands'), 'Haring', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Netherlands'), 'Poffertjes', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Belgium'), 'Moules-Frites', 1, '/images/dishes/moules-frites.jpg', 'Moules-frites är en belgisk rätt med musslor och pommes frites, ofta serverad med buljong eller sås.', 'Rätten består av musslor och pommes frites.'),
((SELECT country_id FROM countries WHERE country_name = 'Belgium'), 'Carbonade Flamande', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belgium'), 'Waterzooi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belgium'), 'Belgian Waffles', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Austria'), 'Wiener Schnitzel', 1, '/images/dishes/wiener-schnitzel.jpg', 'Wiener schnitzel är en österrikisk rätt med panerat och stekt kalvkött eller annat kött.', 'En panerad och stekt tunn köttbit.'),
((SELECT country_id FROM countries WHERE country_name = 'Austria'), 'Tafelspitz', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Austria'), 'Käsespätzle', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Austria'), 'Apfelstrudel', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Switzerland'), 'Fondue', 1, '/images/dishes/fondue.jpg', 'Fondue är en schweizisk rätt där smält ost serveras i en gryta och äts med brödbitar.', 'Rätten bygger på smält ost.'),
((SELECT country_id FROM countries WHERE country_name = 'Switzerland'), 'Rösti', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Switzerland'), 'Raclette', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Switzerland'), 'Zürcher Geschnetzeltes', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Hungary'), 'Goulash', 1, '/images/dishes/goulash.jpg', 'Goulash är en ungersk gryta eller soppa med paprika, kött och grönsaker.', 'En kryddig gryta med paprika.'),
((SELECT country_id FROM countries WHERE country_name = 'Hungary'), 'Lángos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Hungary'), 'Chicken Paprikash', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Hungary'), 'Dobos Torte', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Czech Republic'), 'Svíčková', 1, '/images/dishes/svickova.jpg', 'Svíčková är en tjeckisk rätt med nötkött i krämig grönsakssås, ofta serverad med knödel.', 'Nötkött med krämig sås och knödel.'),
((SELECT country_id FROM countries WHERE country_name = 'Czech Republic'), 'Guláš', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Czech Republic'), 'Vepřo Knedlo Zelo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Czech Republic'), 'Trdelník', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ukraine'), 'Borscht', 1, '/images/dishes/borscht.jpg', 'Borscht är en ukrainsk rödbetssoppa som ofta serveras med gräddfil och bröd.', 'En röd soppa gjord med rödbetor.'),
((SELECT country_id FROM countries WHERE country_name = 'Ukraine'), 'Varenyky', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ukraine'), 'Holubtsi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ukraine'), 'Chicken Kyiv', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Romania'), 'Sarmale', 1, '/images/dishes/sarmale.jpg', 'Sarmale är rumänska kåldolmar fyllda med kött och ris, ofta serverade med gräddfil.', 'Fyllda kålblad med kött och ris.'),
((SELECT country_id FROM countries WHERE country_name = 'Romania'), 'Mămăligă', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Romania'), 'Ciorbă de Burtă', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Romania'), 'Mici', 0, NULL, NULL, NULL),

Nordamerikanska länder
((SELECT country_id FROM countries WHERE country_name = 'United States'), 'Hamburger', 1, '/images/dishes/hamburger.jpg', 'Hamburgaren blev starkt förknippad med USA under 1900-talet och är idag en av landets mest kända maträtter.', 'En rund brödrätt med kött, sallad och sås.'),
((SELECT country_id FROM countries WHERE country_name = 'United States'), 'Mac and Cheese', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'United States'), 'BBQ Ribs', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'United States'), 'Clam Chowder', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Canada'), 'Poutine', 1, '/images/dishes/poutine.jpg', 'Poutine är en kanadensisk rätt från Quebec med pommes frites, ostmassa och brun sås.', 'Pommes frites med ostmassa och brun sås.'),
((SELECT country_id FROM countries WHERE country_name = 'Canada'), 'Butter Tarts', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Canada'), 'Tourtière', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Canada'), 'Nanaimo Bars', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Mexico'), 'Tacos', 1, '/images/dishes/tacos.jpg', 'Tacos är en mexikansk maträtt med tortilla och fyllningar som kött, grönsaker, salsa och andra tillbehör.', 'Rätten serveras ofta i en tortilla.'),
((SELECT country_id FROM countries WHERE country_name = 'Mexico'), 'Enchiladas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mexico'), 'Tamales', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Mexico'), 'Quesadillas', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Cuba'), 'Ropa Vieja', 1, '/images/dishes/ropa-vieja.jpg', 'Ropa vieja är en kubansk rätt med långkokt strimlat nötkött i tomatbaserad sås.', 'Strimlat nötkött i en kryddig tomatsås.'),
((SELECT country_id FROM countries WHERE country_name = 'Cuba'), 'Moros y Cristianos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Cuba'), 'Lechón Asado', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Cuba'), 'Tostones', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Jerk Chicken', 1, '/images/dishes/jerk-chicken.jpg', 'Jerk chicken är en jamaicansk rätt där kyckling kryddas starkt och grillas eller röks.', 'Starkt kryddad grillad kyckling.'),
((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Ackee and Saltfish', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Curry Goat', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Jamaica'), 'Rice and Peas', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Griot', 1, '/images/dishes/griot.jpg', 'Griot är en haitisk rätt med marinerat och friterat fläskkött, ofta serverad med pikliz.', 'Marinerat och friterat fläskkött.'),
((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Soup Joumou', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Diri Kole', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Haiti'), 'Tassot', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Dominican Republic'), 'La Bandera', 1, '/images/dishes/la-bandera.jpg', 'La bandera är en dominikansk rätt med ris, bönor och kött och namnet betyder flaggan.', 'Rätten består ofta av ris, bönor och kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Dominican Republic'), 'Mangú', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominican Republic'), 'Sancocho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominican Republic'), 'Tostones', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Pepián', 1, '/images/dishes/pepian.jpg', 'Pepián är en guatemalansk gryta med rostade kryddor, kött och grönsaker.', 'En kryddig gryta med rostade smaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Kak’ik', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Tamales Colorados', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guatemala'), 'Jocón', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Baleadas', 1, '/images/dishes/baleadas.jpg', 'Baleadas är en honduransk rätt med mjöltortilla fylld med bönor, ost och ofta grädde eller ägg.', 'En mjöltortilla fylld med bönor och ost.'),
((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Sopa de Caracol', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Pastelitos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Honduras'), 'Carne Asada', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Pupusas', 1, '/images/dishes/pupusas.jpg', 'Pupusas är tjocka majstortillor från El Salvador fyllda med ost, bönor, kött eller andra ingredienser.', 'Tjocka fyllda majstortillor.'),
((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Yuca Frita', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Sopa de Pata', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'El Salvador'), 'Pastelitos', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Gallo Pinto', 1, '/images/dishes/gallo-pinto.jpg', 'Gallo pinto är en vanlig nicaraguansk rätt med ris och bönor som ofta äts till frukost.', 'Rätten består främst av ris och bönor.'),
((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Nacatamal', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Vigorón', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nicaragua'), 'Indio Viejo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Casado', 1, '/images/dishes/casado.jpg', 'Casado är en costaricansk tallrik med ris, bönor, sallad, kött eller fisk och ofta matbanan.', 'En tallrik med ris, bönor och flera tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Olla de Carne', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Tamales', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Costa Rica'), 'Chifrijo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Sancocho', 1, '/images/dishes/sancocho.jpg', 'Sancocho är en panamansk soppa eller gryta med kyckling, rotfrukter och örter.', 'En kycklingsoppa med rotfrukter.'),
((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Ropa Vieja', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Carimañolas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Panama'), 'Hojaldras', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Conch Salad', 1, '/images/dishes/conch-salad.jpg', 'Conch salad är en bahamansk rätt med rå snäcka, citrus, lök, paprika och kryddor.', 'En frisk sallad med snäcka och citrus.'),
((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Cracked Conch', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Peas and Rice', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bahamas'), 'Johnnycake', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Cou-Cou and Flying Fish', 1, '/images/dishes/cou-cou-and-flying-fish.jpg', 'Cou-cou and flying fish är en barbadisk rätt med majsmjölsröra och fisk, ofta kallad nationalrätt.', 'Rätten kombinerar majsbaserad röra och fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Pudding and Souse', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Fish Cakes', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Barbados'), 'Macaroni Pie', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Trinidad and Tobago'), 'Doubles', 1, '/images/dishes/doubles.jpg', 'Doubles är en populär rätt från Trinidad och Tobago med friterat bröd och kryddiga kikärtor.', 'Friterat bröd fyllt med kryddiga kikärtor.'),
((SELECT country_id FROM countries WHERE country_name = 'Trinidad and Tobago'), 'Callaloo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Trinidad and Tobago'), 'Bake and Shark', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Trinidad and Tobago'), 'Pelau', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Rice and Beans', 1, '/images/dishes/rice-and-beans-belize.jpg', 'Rice and beans är en vanlig belizisk rätt kokad med kokosmjölk och serverad med kött, sallad eller matbanan.', 'Ris och bönor som ofta kokas med kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Fry Jacks', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Hudut', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Belize'), 'Garnaches', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Oil Down', 1, '/images/dishes/oil-down.jpg', 'Oil down är Grenadas nationalrätt, en gryta med brödfrukt, kokosmjölk, kött eller fisk och kryddor.', 'En gryta med brödfrukt och kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Callaloo Soup', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Fried Bake', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Grenada'), 'Lambie Souse', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Green Fig and Saltfish', 1, '/images/dishes/green-fig-and-saltfish.jpg', 'Green fig and saltfish är en rätt från Saint Lucia med gröna bananer och saltad fisk.', 'Rätten görs med gröna bananer och saltad fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Callaloo Soup', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Bouyon', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Saint Lucia'), 'Accra', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Callaloo', 1, '/images/dishes/callaloo.jpg', 'Callaloo är en dominicansk soppa eller gryta med bladgrönsaker, kokosmjölk och ofta kött eller fisk.', 'En grön soppa eller gryta med bladgrönsaker.'),
((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Mountain Chicken', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Codfish and Bakes', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Dominica'), 'Sancocho', 0, NULL, NULL, NULL),

sydamerikanska länder
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Asado', 1, '/images/dishes/asado.jpg', 'Asado är argentinsk grilltradition med olika sorters kött som tillagas långsamt över eld eller glöd.', 'En rätt starkt kopplad till grillat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Empanadas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Milanesa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Argentina'), 'Locro', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Salteñas', 1, '/images/dishes/saltenas.jpg', 'Salteñas är bolivianska fyllda degknyten med saftig fyllning av kött, potatis, ägg, oliver och kryddor.', 'Fyllda degknyten med saftig fyllning.'),
((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Silpancho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Pique Macho', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Bolivia'), 'Anticucho', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Brazil'), 'Feijoada', 1, '/images/dishes/feijoada.jpg', 'Feijoada är en brasiliansk gryta med svarta bönor och kött, ofta serverad med ris och tillbehör.', 'En mörk gryta med bönor och kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Brazil'), 'Pão de Queijo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Brazil'), 'Moqueca', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Brazil'), 'Coxinha', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Pastel de Choclo', 1, '/images/dishes/pastel-de-choclo.jpg', 'Pastel de choclo är en chilensk majsgratäng med köttfärs, kyckling, ägg, oliver och majsmassa.', 'En ugnsrätt med majs som viktig ingrediens.'),
((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Empanadas de Pino', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Cazuela', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Chile'), 'Completo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Bandeja Paisa', 1, '/images/dishes/bandeja-paisa.jpg', 'Bandeja paisa är en colombiansk tallrik med bönor, ris, kött, ägg, avokado, matbanan och chicharrón.', 'En stor tallrik med ris, bönor, kött och flera tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Arepas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Ajiaco', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Colombia'), 'Sancocho', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Encebollado', 1, '/images/dishes/encebollado.jpg', 'Encebollado är en ecuadoriansk fisksoppa med yucca, lök, tomat och kryddor.', 'En fisksoppa med yucca och lök.'),
((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Llapingachos', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Fanesca', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Ecuador'), 'Seco de Chivo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Pepperpot', 1, '/images/dishes/pepperpot.jpg', 'Pepperpot är en guyanesisk köttgryta med cassareep, kryddor och ofta nötkött eller fläsk.', 'En mörk kryddig köttgryta.'),
((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Cook-up Rice', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Metemgee', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Guyana'), 'Bake and Saltfish', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Sopa Paraguaya', 1, '/images/dishes/sopa-paraguaya.jpg', 'Sopa paraguaya är trots namnet ett fast majsbröd med ost och lök, mycket känt i Paraguay.', 'Trots namnet är det inte soppa utan ett majsbröd.'),
((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Chipa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Mbejú', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Paraguay'), 'Bori Bori', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Ceviche', 1, '/images/dishes/ceviche.jpg', 'Ceviche är en peruansk rätt med rå fisk som marineras i citrusjuice och blandas med lök, chili och koriander.', 'Rå fisk marinerad i citrusjuice.'),
((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Lomo Saltado', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Aji de Gallina', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Peru'), 'Anticuchos', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Suriname'), 'Pom', 1, '/images/dishes/pom.jpg', 'Pom är en surinamesisk ugnsrätt med pomtajer, kyckling och citrusliknande smak från pomerans.', 'En ugnsrätt med kyckling och rotfrukt.'),
((SELECT country_id FROM countries WHERE country_name = 'Suriname'), 'Roti', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Suriname'), 'Moksi Alesi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Suriname'), 'Saoto Soup', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Chivito', 1, '/images/dishes/chivito.jpg', 'Chivito är en uruguayansk smörgås med nötkött, skinka, ost, ägg, sallad och andra tillbehör.', 'En stor smörgås med kött, ost och flera tillbehör.'),
((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Asado', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Milanesa', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Uruguay'), 'Capeletis a la Caruso', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Pabellón Criollo', 1, '/images/dishes/pabellon-criollo.jpg', 'Pabellón criollo är en venezuelansk rätt med ris, svarta bönor, strimlat nötkött och ofta matbanan.', 'En tallrik med ris, svarta bönor och strimlat kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Arepas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Hallacas', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Venezuela'), 'Cachapas', 0, NULL, NULL, NULL),

-- oceanien länder
((SELECT country_id FROM countries WHERE country_name = 'Australia'), 'Meat Pie', 1, '/images/dishes/meat-pie.jpg', 'Meat pie är en klassisk australisk rätt med pajskal fyllt med köttfärs eller köttgryta.', 'En liten paj fylld med kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Australia'), 'Chicken Parmigiana', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Australia'), 'Barramundi', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Australia'), 'Lamington', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'New Zealand'), 'Hangi', 1, '/images/dishes/hangi.jpg', 'Hangi är en traditionell maorisk matlagningsmetod där kött och grönsaker tillagas i en jordugn.', 'Rätten tillagas traditionellt i en jordugn.'),
((SELECT country_id FROM countries WHERE country_name = 'New Zealand'), 'Pavlova', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'New Zealand'), 'Whitebait Fritters', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'New Zealand'), 'Lamb Roast', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Kokoda', 1, '/images/dishes/kokoda.jpg', 'Kokoda är en fijiansk fiskrätt där rå fisk marineras i citrus och blandas med kokosmjölk.', 'Rå fisk med citrus och kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Lovo', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Rourou', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Fiji'), 'Palusami', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Papua New Guinea'), 'Mumu', 1, '/images/dishes/mumu.jpg', 'Mumu är en traditionell rätt från Papua Nya Guinea där kött, grönsaker och rotfrukter tillagas i jordugn.', 'Rätten tillagas ofta i jordugn med rotfrukter.'),
((SELECT country_id FROM countries WHERE country_name = 'Papua New Guinea'), 'Saksak', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Papua New Guinea'), 'Kaukau', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Papua New Guinea'), 'Chicken Pot', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Palusami', 1, '/images/dishes/palusami.jpg', 'Palusami är en samoansk rätt med taroblad, kokosgrädde och ibland kött eller fisk.', 'Taroblad fyllda eller tillagade med kokosgrädde.'),
((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Oka', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Faiai Eleni', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Samoa'), 'Sapasui', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Lu Pulu', 1, '/images/dishes/lu-pulu.jpg', 'Lu pulu är en tongansk rätt med taroblad, kokosmjölk och ofta corned beef.', 'Taroblad med kokosmjölk och kött.'),
((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Ota Ika', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Faikakai', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tonga'), 'Kapisi Pulu', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Laplap', 1, '/images/dishes/laplap.jpg', 'Laplap är en traditionell rätt från Vanuatu gjord på riven rotfrukt, kokosmjölk och ibland kött eller fisk.', 'Riven rotfrukt med kokosmjölk.'),
((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Tuluk', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Poulet Fish', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Vanuatu'), 'Simboro', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Solomon Islands'), 'Poi', 1, '/images/dishes/poi-solomon.jpg', 'Poi i Solomonöarna görs ofta av taro eller andra rotfrukter och äts som basmat.', 'En enkel basrätt gjord av rotfrukt.'),
((SELECT country_id FROM countries WHERE country_name = 'Solomon Islands'), 'Cassava Pudding', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Solomon Islands'), 'Taro Chips', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Solomon Islands'), 'Grilled Fish', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Palusami', 1, '/images/dishes/palusami-kiribati.jpg', 'Palusami är vanligt i flera delar av Oceanien och görs med bladgrönsaker och kokosgrädde.', 'En rätt med bladgrönsaker och kokosgrädde.'),
((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Te Bua Toro Ni Baukin', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Roasted Lobster', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Kiribati'), 'Pumpkin Coconut Soup', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Micronesia'), 'Kelaguen', 1, '/images/dishes/kelaguen.jpg', 'Kelaguen är en rätt från Mikronesien och Marianerna med kött eller fisk marinerad i citrus och kokos.', 'Marinerat kött eller fisk med citrus och kokos.'),
((SELECT country_id FROM countries WHERE country_name = 'Micronesia'), 'Breadfruit', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Micronesia'), 'Taro', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Micronesia'), 'Pihlohlo', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Marshall Islands'), 'Barramundi Cod', 1, '/images/dishes/barramundi-cod.jpg', 'Barramundi cod och andra fiskrätter är vanliga på Marshallöarna där fisk är central i matkulturen.', 'En fiskrätt från öarnas matkultur.'),
((SELECT country_id FROM countries WHERE country_name = 'Marshall Islands'), 'Breadfruit', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Marshall Islands'), 'Coconut Crab', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Marshall Islands'), 'Rice Balls', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Tinola', 1, '/images/dishes/tinola.jpg', 'Tinola är en soppa eller gryta med kyckling, ingefära och grönsaker som är vanlig i Palau och regionen.', 'En soppa med kyckling och ingefära.'),
((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Ulkoy', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Taro Rosti', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Palau'), 'Fruit Bat Soup', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Coconut Fish', 1, '/images/dishes/coconut-fish.jpg', 'Coconut fish är en enkel fiskrätt med kokos som passar Naurus öbaserade matkultur.', 'Fisk tillagad med kokos.'),
((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Coconut Crusted Fish', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Banana Fritters', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Nauru'), 'Taro with Coconut Cream', 0, NULL, NULL, NULL),

((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Pulaka', 1, '/images/dishes/pulaka.jpg', 'Pulaka är en viktig rotfrukt i Tuvalu och används i traditionella måltider med kokos och fisk.', 'En stärkelsebaserad rotfrukt som äts med kokos eller fisk.'),
((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Palusami', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Tuna Coconut Curry', 0, NULL, NULL, NULL),
((SELECT country_id FROM countries WHERE country_name = 'Tuvalu'), 'Fekei', 0, NULL, NULL, NULL);