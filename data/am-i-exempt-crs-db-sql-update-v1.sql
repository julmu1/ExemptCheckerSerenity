--EndToEnd.feature
update dbo.dataCertificate set ValidTo = '2029-03-28' where AssessmentRecNo = 9840469;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'Active', postcode = 'L15 3JY', DOB = '1993-01-01' where CaseRef = 1111364;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, -32, GETDATE()) where AssessmentRecNo = 9840472;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'Expired', postcode = 'L15 3JY', DOB = '1993-01-02' where CaseRef = 1111365;

update dbo.dataCertificate set ValidTo = '2099-12-31' where AssessmentRecNo = 9840479;
update dbo.dataCertificate set ValidTo = DATEADD(DAY, +56, GETDATE()) where AssessmentRecNo = 9840388;
--select * from dbo.dataCertificate where AssessmentRecNo = 9840479;
update dbo.dataApplicant set Forename = 'HcTwoA', Surname = 'Active', postcode = 'L15 3JY', DOB = '1993-01-03' where CaseRef = 1111372;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, -32, GETDATE()) where AssessmentRecNo = 9840474;
update dbo.dataApplicant set Forename = 'HcTwoA', Surname = 'Expired', postcode = 'L15 3JY', DOB = '1993-01-04' where CaseRef = 1111367;

--Over60.feature
update dbo.dataCertificate set ValidTo = '2029-03-28' where AssessmentRecNo = 9840461;
update dbo.dataApplicant set Forename = 'AgeRule', Surname = 'HcTwo', postcode = 'L15 3JY', DOB = '1960-09-17' where CaseRef = 1111355;

--MultipleExemptions.feature
update dbo.dataCertificate set ValidTo = '2029-12-31' where AssessmentRecNo = 9840465;
update dbo.dataApplicant set Forename = 'TestH', Surname = 'Brooklyn', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111360;

update dbo.dataCertificate set ValidTo = '2029-12-31' where AssessmentRecNo = 9840466;
update dbo.dataApplicant set Forename = 'TestK', Surname = 'Gilberto', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111361;

update dbo.dataCertificate set ValidTo = '2099-12-31' where AssessmentRecNo = 9840467;
update dbo.dataApplicant set Forename = 'TestN', Surname = 'Nesbitt', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111362;

update dbo.dataCertificate set ValidTo = '2099-12-31' where AssessmentRecNo = 9840468;
update dbo.dataApplicant set Forename = 'TestQ', Surname = 'Wesley', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111363;

--TwinSearch.feature
update dbo.dataCertificate set ValidTo = DATEADD(DAY, -32, GETDATE()) where AssessmentRecNo = 9840475;
update dbo.dataApplicant set Forename = 'TwinB', Surname = 'Ginola', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111368;

update dbo.dataCertificate set ValidTo = '2029-12-31' where AssessmentRecNo = 9840476;
update dbo.dataApplicant set Forename = 'TwinB', Surname = 'Beardsley', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111369;

update dbo.dataCertificate set ValidTo = '2029-12-31' where AssessmentRecNo = 9840477;
update dbo.dataApplicant set Forename = 'TwinB', Surname = 'Batty', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111370;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, -32, GETDATE()) where AssessmentRecNo = 9840478;
update dbo.dataApplicant set Forename = 'TwinB', Surname = 'Cole', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111371;

--DentalExemptions.feature
update dbo.dataCertificate set ValidTo = DATEADD(DAY, -32, GETDATE()) where AssessmentRecNo = 9840478;
update dbo.dataApplicant set Forename = 'TwinB', Surname = 'Cole', postcode = 'LN16 9NY', DOB = '1993-04-03' where CaseRef = 1111371;

--PostcodePage.feature
update dbo.dataCertificate set ValidTo = DATEADD(DAY, +56, GETDATE()) where AssessmentRecNo = 9840366;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'PostcodeFix', postcode = 'NE1 6SN', DOB = '2001-03-01' where CaseRef = 1111257;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, +56, GETDATE()) where AssessmentRecNo = 9840367;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'PostcodeFix', postcode = 'NE15 8NY', DOB = '2001-03-02' where CaseRef = 1111258;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, +56, GETDATE()) where AssessmentRecNo = 9840368;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'PostcodeFix', postcode = 'M1 1NW', DOB = '2001-03-03' where CaseRef = 1111259;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, +56, GETDATE()) where AssessmentRecNo = 9840369;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'PostcodeFix', postcode = 'M60 1NW', DOB = '2001-03-04' where CaseRef = 1111260;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, +56, GETDATE()) where AssessmentRecNo = 9840370;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'PostcodeFix', postcode = 'W1A 1HQ', DOB = '2001-03-05' where CaseRef = 1111261;

update dbo.dataCertificate set ValidTo = DATEADD(DAY, +56, GETDATE()) where AssessmentRecNo = 9840371;
update dbo.dataApplicant set Forename = 'HcTwo', Surname = 'PostcodeFix', postcode = 'EC1A 1BB', DOB = '2001-03-06' where CaseRef = 1111262;
