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
('Madagascar', 'Africa', 'https://flagcdn.com/w320/mg.png');

INSERT INTO dishes (
  country_id,
  dish_name,
  is_correct,
  dish_image_url,
  dish_history,
  hint
)
VALUES
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
((SELECT country_id FROM countries WHERE country_name = 'Madagascar'), 'Akoho Sy Voanio', 0, NULL, NULL, NULL);