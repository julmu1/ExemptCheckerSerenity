--ResultOver60.feature
--TC04
update s_certificate_holder set first_name = 'AgeRule', date_of_birth = '17-Sep-1960', surname = 'MatEx', postcode = 'L15 3JY' where cert_number = 20000071562;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 20000071562 and date_inactive = '31-Dec-2099';
--TC05
update s_certificate_holder set first_name = 'AgeRule', date_of_birth = '17-Sep-1960', surname = 'MedEx', postcode = 'L15 3JY' where cert_number = 12000000130;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 12000000130 and date_inactive = '31-Dec-2099';
--TC06
update s_certificate_holder set first_name = 'AgeRule', date_of_birth = '17-Sep-1960', surname = 'PPC', postcode = 'L15 3JY' where cert_number = 20000073217;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 20000073217 and date_inactive = '31-Dec-2099';
--TC07
update s_certificate_holder set first_name = 'AgeRule', date_of_birth = '17-Sep-1960', surname = 'TaxCredit', postcode = 'L15 3JY' where cert_number = 14000000123;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 14000000123 and date_inactive = '31-Dec-2099';

--DentalExemptions.feature
--TC07
update s_certificate_holder set date_of_birth = '21-Sep-1995', surname = 'Smith', postcode = 'L15 3JY' where cert_number = 20000035395;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000035395 and date_inactive = '31-Dec-2099';
--TC08
update s_certificate_holder set date_of_birth = '01-Apr-1990', surname = 'Adamson', postcode = 'NE15 8NY' where cert_number = 20000005481;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 20000005481 and date_inactive = '31-Dec-2099';
--TC09
update s_certificate_holder set date_of_birth = '05-May-2000', surname = 'Richards', postcode = 'LN16 9NY' where cert_number = 20000023471;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 20000023471 and date_inactive = '31-Dec-2099';
--TC10
update s_certificate_holder set date_of_birth = '01-Jan-1970', surname = 'Wright', postcode = 'NE1 9XY' where cert_number = 10067856873;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 10067856873 and date_inactive = '31-Dec-2099';
--TC11
update s_certificate_holder set date_of_birth = '02-Dec-1966', surname = 'Robson', postcode = 'NE1 9XY' where cert_number = 300000001514;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 300000001514 and date_inactive = '31-Dec-2099';
--TC12
update s_certificate_holder set date_of_birth = '01-Aug-1960', surname = 'Hudson', postcode = 'LN16 9NY' where cert_number = 30000001513;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 30000001513 and date_inactive = '31-Dec-2099';
--TC13
update s_certificate_holder set date_of_birth = '01-Sep-1959', surname = 'Ranger', postcode = 'NE15 8NY' where cert_number = 20000029643;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 2 where cert_number = 20000029643 and date_inactive = '31-Dec-2099';

--EndToEnd.feature
--TC02
update s_certificate_holder set date_of_birth = '21-Sep-1995', surname = 'Swallow', postcode = 'L15 3JY' where cert_number = 20000047039;
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 20000047039 and date_inactive = '31-Dec-2099';
--TC03
update s_certificate_holder set date_of_birth = '21-Sep-1995', surname = 'Hughes', postcode = 'L15 3JY' where cert_number = 20000036768;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 20000036768 and date_inactive = '31-Dec-2099';
--TC04
update s_certificate_holder set date_of_birth = '21-Sep-1995', surname = 'Kelsey', postcode = 'LN16 9NY' where cert_number = 20000035351;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+6), status_code = 99 where cert_number = 20000035351 and date_inactive = '31-Dec-2099';
--TC05
update s_certificate_holder set date_of_birth = '01-Jan-1980', surname = 'Bellamy', postcode = 'HA3 7TE' where cert_number = 20000005935;
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 20000005935 and date_inactive = '31-Dec-2099';
--TC06
update s_certificate_holder set date_of_birth = '01-Jan-1970', surname = 'Walmsey', postcode = 'GU18 5YQ' where cert_number = 10080001597;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 10080001597 and date_inactive = '31-Dec-2099';
--TC07
update s_certificate_holder set date_of_birth = '21-Sep-1995', surname = 'Kashif', postcode = 'UB3 4BG' where cert_number = 20000005947;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+12), status_code = 99 where cert_number = 20000005947 and date_inactive = '31-Dec-2099';
--TC08
update s_certificate_holder set date_of_birth = '31-Dec-2000', surname = 'Shelvey', postcode = 'LN16 9NY' where cert_number = 20000048388;
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 20000048388 and date_inactive = '31-Dec-2099';
--TC09
update s_certificate_holder set date_of_birth = '01-Sep-1988', surname = 'Weir', postcode = 'LN16 9NY' where cert_number = 20000046282;
update s_certificate set expiry_date = '31-Dec-2099', status_code = 97 where cert_number = 20000046282 and date_inactive = '31-Dec-2099';
--TC10
update s_certificate_holder set date_of_birth = '18-Jan-2000', surname = 'Scholes', postcode = 'LN16 9NY' where cert_number = 20000054343;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 20000054343 and date_inactive = '31-Dec-2099';
--TC11
update s_certificate_holder set date_of_birth = '01-Jan-1990', surname = 'Partrey', postcode = 'NE1 6SN' where cert_number = 20000052979;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+6), status_code = 99  where cert_number = 20000052979 and date_inactive = '31-Dec-2099';
--TC12
update s_certificate_holder set date_of_birth = '01-Apr-1990', surname = 'Charles', postcode = 'BC34 5EF' where cert_number = 20000003517;
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 20000003517 and date_inactive = '31-Dec-2099';
--TC13
update s_certificate_holder set date_of_birth = '18-Jan-2000', surname = 'Holder', postcode = 'TN38 9EF' where cert_number = 10067856881;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 10067856881 and date_inactive = '31-Dec-2099';
--TC14
update s_certificate_holder set date_of_birth = '01-Jan-1990', surname = 'Chapple', postcode = 'LN16 9NY' where cert_number = 20000003508;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+6), status_code = 99  where cert_number = 20000003508 and date_inactive = '31-Dec-2099';
--TC15
update s_certificate_holder set date_of_birth = '01-Feb-1986', surname = 'Staple', postcode = 'BC34 5EF' where cert_number = 10067845376;
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 10067845376 and date_inactive = '31-Dec-2099';
--TC16
update s_certificate_holder set date_of_birth = '01-Jan-1978', surname = 'Galloway', postcode = 'NE1 6SN' where cert_number = 41000001513;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 41000001513 and date_inactive = '31-Dec-2099';
--TC17
update s_certificate_holder set date_of_birth = '31-Dec-2000', surname = 'Humphrey', postcode = 'LN16 9NY' where cert_number = 10067845359;
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,+6), status_code = 99  where cert_number = 10067845359 and date_inactive = '31-Dec-2099';

--MultipleExemptions.feature
--TC01
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestA', surname = 'Forlan', postcode = 'BC34 5EF' where cert_number in (10068000871,20000063481);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000063481 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 10068000871 and date_inactive = '31-Dec-2099';
--TC02
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestB', surname = 'Stevenson', postcode = 'LN16 9NY' where cert_number in (20000057555,20000035648);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000035648 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000057555 and date_inactive = '31-Dec-2099';
--TC03
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestC', surname = 'Fredrick', postcode = 'LN16 9NY' where cert_number in (10067845377,20000058199);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000058199 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 10067845377 and date_inactive = '31-Dec-2099';
--TC04
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestD', surname = 'Shield', postcode = 'BC34 5EF' where cert_number in (20000005924,20000035940);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000035940 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 20000005924 and date_inactive = '31-Dec-2099';
--TC05
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestE', surname = 'Brown', postcode = 'LN16 9NY' where cert_number in (20000058159,10067914631);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000058159 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 10067914631 and date_inactive = '31-Dec-2099';
--TC06
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestF', surname = 'Woods', postcode = 'LN16 9NY' where cert_number in (12000000131,11000000122);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 11000000122 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 12000000131 and date_inactive = '31-Dec-2099';
--TC07
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestG', surname = 'Winters', postcode = 'LN16 9NY' where cert_number in (12000000132,14000000124);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 14000000124 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 12000000132 and date_inactive = '31-Dec-2099';
--TC08
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestH', surname = 'Brooklyn', postcode = 'LN16 9NY' where cert_number = (12000000133);
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 12000000133 and date_inactive = '31-Dec-2099';
--TC09
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestI', surname = 'Schmicheal', postcode = 'LN16 9NY' where cert_number in (20000073171,11000000123);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 11000000123 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 20000073171 and date_inactive = '31-Dec-2099';
--TC10
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestJ', surname = 'Waller', postcode = 'LN16 9NY' where cert_number in (20000073178,14000000125);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 14000000125 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 20000073178 and date_inactive = '31-Dec-2099';
--TC11
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestK', surname = 'Gilberto', postcode = 'LN16 9NY' where cert_number = (20000073162);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000073162 and date_inactive = '31-Dec-2099';
--TC12
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestL', surname = 'Berbatov', postcode = 'LN16 9NY' where cert_number in (12000000134,11000000124);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 12000000134 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 11000000124 and date_inactive = '31-Dec-2099';
--TC10
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestM', surname = 'Walter', postcode = 'LN16 9NY' where cert_number in (12000000135,14000000126);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 12000000135 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 14000000126 and date_inactive = '31-Dec-2099';
--TC11
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestN', surname = 'Nesbitt', postcode = 'LN16 9NY' where cert_number = (12000000136);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 12000000136 and date_inactive = '31-Dec-2099';
--TC12
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestO', surname = 'Targett', postcode = 'LN16 9NY' where cert_number in (20000073166,11000000125);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000073166 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 11000000125 and date_inactive = '31-Dec-2099';
--TC13
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestP', surname = 'Ramsey', postcode = 'LN16 9NY' where cert_number in (20000073161,14000000127);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000073161 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = '31-Dec-2099', status_code = 2 where cert_number = 14000000127 and date_inactive = '31-Dec-2099';
--TC14
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TestQ', surname = 'Wesley', postcode = 'LN16 9NY' where cert_number = (20000073157);
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000073157 and date_inactive = '31-Dec-2099';

--NamePage.feature
--TC10-13
update s_certificate_holder set date_of_birth = '31-Dec-2000', surname = 'Billingworth', postcode = 'LN16 9NY' where cert_number = 20000038211;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000038211 and date_inactive = '31-Dec-2099';
--TC14-16
update s_certificate_holder set date_of_birth = '31-Dec-2000', surname = 'Grant Jones', postcode = 'LN16 9NY' where cert_number = 20000038201;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000038201 and date_inactive = '31-Dec-2099';

--PostcodePage.feature
--TC15, TC16
update s_certificate_holder set date_of_birth = '28-Apr-1993', surname = 'ypcwouhi', postcode = 'L15 3JY' where cert_number = 20000036124;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000036124 and date_inactive = '31-Dec-2099';
--TC17
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'yzvbkmaw', postcode = 'NE1 6SN' where cert_number = 20000059858;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059858 and date_inactive = '31-Dec-2099';
--TC18
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'xgndyaiq', postcode = 'NE15 8NY' where cert_number = 20000059859;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059859 and date_inactive = '31-Dec-2099';
--TC19
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'ofejyamp', postcode = 'NE1 6SN' where cert_number = 20000059860;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059860 and date_inactive = '31-Dec-2099';
--TC20
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'estjhuly', postcode = 'NE15 8NY' where cert_number = 20000059861;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059861 and date_inactive = '31-Dec-2099';
--TC21
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'etcahuir', postcode = 'M1 1AA' where cert_number = 20000059797;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059797 and date_inactive = '31-Dec-2099';
--TC22
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'cmwpdxst', postcode = 'M60 1NW' where cert_number = 20000059798;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059798 and date_inactive = '31-Dec-2099';
--TC23
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'jnpqfyei', postcode = 'W1A 1HQ' where cert_number = 20000059799;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059799 and date_inactive = '31-Dec-2099';
--TC24
update s_certificate_holder set date_of_birth = '28-Nov-1980', surname = 'lwkzbitu', postcode = 'EC1A 1BB' where cert_number = 20000059800;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 20000059800 and date_inactive = '31-Dec-2099';

--NoMatch.feature
update s_certificate_holder set date_of_birth = '01-Jan-1990', surname = 'Burns', postcode = 'NA6 6AB' where cert_number = 20000037163;
update s_certificate set expiry_date = (SYSDATE)-7, status_code = 2 where cert_number = 20000037163 and date_inactive = '31-Dec-2099';

--TwinSearch.feature
--Matex + Matex
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Marsh', postcode = 'LN16 9NY' where cert_number = 11000000128;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Marsh', postcode = 'LN16 9NY' where cert_number = 11000000129;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number in (11000000128,11000000129) and date_inactive = '31-Dec-2099';
--Matex + Medex
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Wallace', postcode = 'LN16 9NY' where cert_number = 11000000130;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Wallace', postcode = 'LN16 9NY' where cert_number = 12000000143;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number in (11000000130,12000000143) and date_inactive = '31-Dec-2099';
--Matex + PPC
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Seaman', postcode = 'LN16 9NY' where cert_number = 11000000131;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Seaman', postcode = 'LN16 9NY' where cert_number = 20000073192;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number in (11000000131,11000000122) and date_inactive = '31-Dec-2099';
--Matex + Tax Credit
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Gallas', postcode = 'LN16 9NY' where cert_number = 11000000132;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Gallas', postcode = 'LN16 9NY' where cert_number = 14000000129;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number in (11000000132,14000000129) and date_inactive = '31-Dec-2099';
--Matex + HC2
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Batty', postcode = 'LN16 9NY' where cert_number = 11000000133;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = (11000000133) and date_inactive = '31-Dec-2099';
--Matex + HC2A
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Beardsley', postcode = 'LN16 9NY' where cert_number = 11000000134;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = (11000000134) and date_inactive = '31-Dec-2099';

--Medex + Matex
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Solano', postcode = 'LN16 9NY' where cert_number = 12000000142;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Solano', postcode = 'LN16 9NY' where cert_number = 11000000135;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 12000000142 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 11000000135 and date_inactive = '31-Dec-2099';
--Medex + Medex
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Cardona', postcode = 'LN16 9NY' where cert_number = 12000000141;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Cardona', postcode = 'LN16 9NY' where cert_number = 12000000140;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 12000000141 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 12000000140 and date_inactive = '31-Dec-2099';
--Medex + PPC
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Etherium', postcode = 'LN16 9NY' where cert_number = 12000000139;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Etherium', postcode = 'LN16 9NY' where cert_number = 20000073191;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 12000000139 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 20000073191 and date_inactive = '31-Dec-2099';
--Medex + Tax Credit
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Polygon', postcode = 'LN16 9NY' where cert_number = 12000000144;
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinB', surname = 'Polygon', postcode = 'LN16 9NY' where cert_number = 14000000129;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = 12000000144 and date_inactive = '31-Dec-2099';
update s_certificate set expiry_date = ADD_MONTHS(SYSDATE,-1), status_code = 2 where cert_number = 14000000129 and date_inactive = '31-Dec-2099';
--Medex + HC2
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Cole', postcode = 'LN16 9NY' where cert_number = 12000000145;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = (12000000145) and date_inactive = '31-Dec-2099';
--Medex + HC2A
update s_certificate_holder set date_of_birth = '03-Apr-1993', first_name = 'TwinA', surname = 'Ginola', postcode = 'LN16 9NY' where cert_number = 12000000146;
update s_certificate set expiry_date = '31-Dec-2029', status_code = 2 where cert_number = (12000000146) and date_inactive = '31-Dec-2099';
--- new format
update s_certificate set START_DATE =TRUNC(ADD_MONTHS(SYSDATE,-11)),expiry_date = TRUNC(ADD_MONTHS(SYSDATE,+10)), status_code = 2 where cert_number = 20000093090 and date_inactive = '31-Dec-2099';
commit;
