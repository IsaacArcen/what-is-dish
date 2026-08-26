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

;

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

;