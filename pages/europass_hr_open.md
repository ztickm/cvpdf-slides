
## 4.2 EuroPass CV & HR Open Standards
- When you create a [europass](europass.europa.eu) CV and open the resulting PDF on a text editor we get something like:
```xml {all|11-26|19-78}{maxHeight:'400px', lines:true}
%PDF-1.6

6 0 obj
<<
/Length 7 0 R
/Filter /FlateDecode
>>
stream
x��\[w�Ȳ~�W�����馹�̚ud[q...

<MANY_OBJECTS_OMITTED_HERE...>

65 0 obj
<<
/Length 14821
/Type /EmbeddedFile
>>
stream

<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Candidate
    xsi:schemaLocation="http://www.europass.eu/1.0 Candidate.xsd" xmlns="http://www.europass.eu/1.0"
    xmlns:oa="http://www.openapplications.org/oagis/9"
    xmlns:eures="http://www.europass_eures.eu/1.0" xmlns:hr="http://www.hr-xml.org/3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <hr:DocumentID schemeID="Test-0001" schemeName="DocumentIdentifier" schemeAgencyName="EUROPASS"
        schemeVersionID="4.0" />
    <CandidatePerson>
        <PersonName>
            <oa:GivenName>Salim</oa:GivenName>
            <hr:FamilyName>Mahboubi</hr:FamilyName>
        </PersonName>
        <Communication>
            <ChannelCode>Email</ChannelCode>
            <oa:URI>contact@smhb.me</oa:URI>
        </Communication>
        <PrimaryLanguageCode name="NORMAL">ara</PrimaryLanguageCode>
        <Visa>
            <hr:IssuingCountryCode>de</hr:IssuingCountryCode>
        </Visa>
        <Visa>
            <hr:IssuingCountryCode>dz</hr:IssuingCountryCode>
        </Visa>
    </CandidatePerson>
    <CandidateProfile languageCode="en">
        <hr:ID schemeID="Test-0001" schemeName="CandidateProfileID" schemeAgencyName="EUROPASS"
            schemeVersionID="1.0" />
        <EmploymentHistory>
            <EmployerHistory>
                <hr:OrganizationName>BurdaForward GmbH</hr:OrganizationName>
                <OrganizationContact>
                    <Communication>
                        <Address>
                            <oa:CityName>Hamburg</oa:CityName>
                            <CountryCode>de</CountryCode>
                        </Address>
                    </Communication>
                </OrganizationContact>
                <hr:IndustryCode>J</hr:IndustryCode>
                <PositionHistory>
                    <PositionTitle typeCode="URI"
                        languageID="http://data.europa.eu/esco/occupation/f2b15a0e-e65a-438a-affb-29b9d50b77d1">Senior
                        Fullstack Web Developer</PositionTitle>
                    <eures:EmploymentPeriod>
                        <eures:StartDate>
                            <hr:FormattedDateTime>2023-06-15</hr:FormattedDateTime>
                        </eures:StartDate>
                        <eures:EndDate>
                            <hr:FormattedDateTime>2025-03-31</hr:FormattedDateTime>
                        </eures:EndDate>
                        <hr:CurrentIndicator>false</hr:CurrentIndicator>
                    </eures:EmploymentPeriod>
                    <City>Hamburg</City>
                    <Country>de</Country>
                </PositionHistory>
      </EmployerHistory>
        </EmploymentHistory>
    </CandidateProfile>
</Candidate>
```