---
theme: the-unnamed
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://cover.sli.dev
title: Semantic CV formats in PDF, a deep dive
info: |
  Reimagining Career Data: Making CVs Smarter, Accessible, and Machine-Readable.
  Learn more at [smhb.me](https://smhb.me)
class: text-center
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
themeConfig:
  aboutme-background: var(--slidev-theme-background)
  aboutme-color: var(--slidev-theme-color)
  aboutme-helloBg: var(--slidev-theme-accents-yellow)
  aboutme-helloColor: var(--slidev-theme-background)
  aboutme-nameColor: var(--slidev-theme-accents-red)
  aboutme-font-size: 1.1em
---



# SEMANTIC CV FORMATS IN PDF, A DEEP DIVE

Reimagining Career Data: Making CVs Smarter, Accessible, and Machine-Readable.


---
layout: about-me

helloMsg: Who am I?
name: Salim Mahboubi
imageSrc: /me-pixel.svg
position: left
job:  "- Web Developer since 2017"
line1: "- Previously @BurdaForward, @Sharenow, etc"
line2: "... and I have a bone to pick"
social1: www.smhb.me
social2: The picture to the right is NOT an NFT
---

# s


---

```yaml
layout: center
```

# 1. LET'S LOOK AT A GLOSSARY
- **Career Data** : All information related an individual's profesionnal identity, including : work history, education, projects, and contact information
- **CIS** : (Career Information System): I'll refer to all systems that handle the career data of an individual as CIS, these systems include ATSs(Applicant Tracking Systems), Career Websites / Apps, Professional Social Networks, etc.

---

```yaml
layout: center
```

# 2. THE HISTORY AND STATUS QUO

---

```yaml
layout: image
image: /CV-Clay-tablet.jpg
backgroundSize: 80%
```
## 2.1 In the days of olde

<!--Historically, people sent their CV as a physical document (ink on paper, probably cuneiform clay tablets too) detailing their career data, written by a human for a human's eyes. -->

--- 

```yaml
layout: center
```

## <div class="text-6xl">2.2 Early days of Computers</div>

- <div class="text-4xl">CVs rapidly migrated towards digitized formats like PDFs, Word or txt documents, JPGs</div>
- <div class="text-4xl">But they were still intended only for humans to read. The computer was only for the ease of transfer</div>

---

```yaml
layout: center
```

## <div class="text-6xl">2.3 Today</div>

- <div class="text-4xl">We still use the same file formats, mainly PDF</div>
- <div class="text-4xl">CVs are upload to CISs, or sent via email, IM, etc</div>
- <div class="text-4xl">The career data is extracted from CVs or re-typed into forms</div>


---

```yaml
layout: image

image: /CV File journey.excalidraw.svg
backgroundSize: contain
```
---

```yaml
layout: center
```
# 3. Challenges

---

```yaml
layout: center
```

## <div class="text-6xl">For recruiters and companies :</div>

- <div class="text-4xl pb-6">ATSs extracted information can be erroneous, requiring tedious manual verification.</div>
- <div class="text-4xl pb-6">Each CV is unique in its format, presentation, and depth, making it difficult to locate relevant information.</div>
- <div class="text-4xl pb-6">Potentially missing out on getting good candidates.</div>
 

---

```yaml
layout: center
```

## <div class="text-6xl">For candidates:</div>

- <div class="text-4xl pb-6">Creating a concise document that optimally and fairly encompasses one’s information is difficult.</div>
- <div class="text-4xl pb-6">Retyping the same information over and over.</div>
- <div class="text-4xl pb-6">Designing a CV to be readable by both humans and ATSs is challenging due to their differing requirements.</div>

---

```yaml
layout: center
```

## <div class="text-6xl">For CISs:</div>

- <div class="text-4xl pb-6">The sheer visual diversity of CVs </div>
- <div class="text-4xl pb-6">Extracting relevant information from unstructured files remains a hard problem for machines.</div>


---

## PDF EXAMPLE

If we open a PDF in a text editor we might get something like this:

```txt {*}{maxHeight:'400px'}
%PDF-2.0
%����
1 0 obj<</Pages 2 0 R/Type/Catalog>>
endobj
4 0 obj<</Filter/FlateDecode/Length 167>>stream
x����
�@E���,�f��8���`]+��U|����V�
E	���rsP:,��C%�8�2l�����n����!1(�*�qyAȂ�\0Y�O�"�!ñ
�Dw��q�&��z�� *��Ez�����Ѻ���fƘ蘜"��G��!b�H��v�몝!��x��K�
endstream
endobj
5 0 obj<</Type/Font/Subtype/Type1/BaseFont/Times-Roman>>
endobj
6 0 obj<</Type/Font/Subtype/Type1/BaseFont/Helvetica>>
endobj
7 0 obj<</CreationDate(D:20250401212815+02'00')/ModDate(D:20250401212815+02'00')>>
endobj
xref
0 8
0000000000 65535 f
0000000015 00000 n
0000000059 00000 n
0000000109 00000 n
0000000229 00000 n
0000000462 00000 n
0000000526 00000 n
0000000588 00000 n
trailer
<</Root 1 0 R/Info 7 0 R/ID[<42841C13BBF709D79A200FA1691836F8><537FA2D8DBAC9E7F1F517F53E389BA56>]/Size 8>>
startxref
678
%%EOF
```

---

```yaml
layout: center
```

# 4. EXISTING SOLUTIONS

---

## 4.1 JSON-Resume

- An Open-Source [Project](https://jsonresume.org/t) built to inspire a new creative movement around resumes.
  
```json {*}{maxHeight: '400px'}
{
  "basics": {
    "name": "Salim Mahboubi",
    "label": "Software Engineer",
    "email": "example@example.com",
    "phone": "(+49)17 000 000 00",
    "url": "https://www.smhb.me",
    "summary": "Software Engineer with ...",
    "location": {
      "city": "Hamburg",
      "countryCode": "DE"
    },
    "profiles": [
      {
        "network": "GitHub",
        "username": "ztickm",
        "url": "https://github.com/ztickm"
      },
      {
        "network": "LinkedIn",
        "username": "smahboubi",
        "url": "https://www.linkedin.com/in/smahboubi/"
      }
    ]
  },
  "work": [
    {
      "name": "BurdaForward GmbH",
      "position": "Senior Fullstack Developer",
      "url": "https://www.burda-forward.de/",
      "startDate": "2023-07",
      "summary": "BurdaForward is one of the largest digital publishers...",
      "highlights": [
        "Led two complex projects as Tech Project Lead, involving multiple stakeholders, ..." 
      ]
    },
  ],
   "education": [
    {
      "institution": "Oran's University",
      "area": "Computer Science",
      "studyType": "Master",
      "startDate": "2015-09",
      "endDate": "2017-06",
      "score": "",
      "courses": [
        "Educational Sciences",
        "Educational Technology"
      ]
    }
  ],
  "skills": [
    {
      "name": "Fullstack",
      "keywords": [
        "JavaScript",
        "ES6",
      ]
    }
  ]
}
```

---

### Pros
- Simple schema.
- Open source, no barrier.
- Tools do what they promise.
### Cons
- It doesn't go beyond being a schema with a few tools. 
- The tools are nothing exceptional and the result is like any other CV builder.
- No wide adoption, seems like a niche set of toys for developers.

---

## 4.2 EuroPass CV & HR Open Standards
- When you create a [europass](europass.europa.eu) CV and open the resulting PDF on a text editor we get something like:
  
```txt
...
65 0 obj
<<
/Length 14821
/Type /EmbeddedFile
>>
stream
```
```xml {*}{maxHeight:'300px'}
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
												Fullstack Web Develeoper</PositionTitle>
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
---

### Pros
- The XML schema complete.
- You can reupload the PDF to Europass and it gets all your info perfectly. (Do some other orgs use it?) 
- Presumably a recognized template.
  
### Cons
- None of the links to the namespaces work in the Europass XML embed.
- You have to register to download The HR Open Standards specifications.
- The templates are ugly and verbose.
- No wide adoption.


---

```yaml
layout: center
```

# 5. A POTENTIAL PROJECT

---

```yaml
layout: center
```

## 5.1 GOALS 
 
 <ol class="mt-6">
  <li class="text-2xl">Have a strong standard and tools that allow seamless transfer and treatment of career data.</li>
  <li class="text-2xl">Have it adopted.</li>
</ol>


---

```yaml
layout: center
```

## 5.1 THE PLAN 

<ul class="mt-6">
  <li>Make/Adopt a standard and adapt it to be included into PDF, making a special file subformat.</li>
  <li>Work on great tooling and documentation both for developers and all kinds of end users.</li>
  <li>Work on getting the format adopted by an existing standards organization or found a new one.</li>
  <li>Collaborate with industry leaders, recruiters, and developers to ensure the standard meets real-world needs.</li>
  <li>Build open-source libraries and APIs to simplify integration for developers.</li>
  <li>Create user-friendly tools for candidates to generate compliant CVs effortlessly.</li>
  <li>Advocate for the adoption of the standard through conferences, blogs, and partnerships.</li>
</ul>

---

```yaml
layout: image
image: /standards.png
backgroundSize: 70%
```

## 5.2 RISKS

<!--
- **Adoption Challenges**: Resistance to adopt a new standard due to existing workflows and tools.
- **Complexity**: The standard might become too complex, discouraging developers and users from engaging with it.
- **Lack of Awareness**: Insufficient promotion could result in limited adoption and usage.
- **Interoperability Issues**: Ensuring compatibility with diverse systems and platforms may be difficult.
- **Privacy Concerns**: Mishandling of sensitive career data could lead to security and trust issues.
- **Funding and Resources**: Sustaining the project without adequate funding or community support could hinder progress.
- **Competition**: Existing solutions or standards might overshadow the proposed one.-->

---

# 6. CURRENT STATE AND FUTURE PROSPECTS

## Current State:
  - Existing standards like JSON-Resume and Europass have limited adoption and scope.
  - Tools for semantic career data are fragmented and lack widespread support.

## Future Prospects:
  - Increased focus on interoperability and machine-readable formats in the job market.
  - Potential for AI and machine learning to leverage structured career data more effectively.
  - Growing awareness of the importance of data privacy and security may drive adoption of better standards.

---

# CONCLUSION

- The goal of this presentation is not really to sell the idea for a new file format.
- As developers, we need to see beyond the tech and see the complexities of daily life dealings.
- We need to accept the history without having to accept status quo.
- Let's also ponder about why we keep using file formats from 20 years ago. 

---

## Read more:
- [A good article on the pdf format](https://medium.com/@jberkenbilt/the-structure-of-a-pdf-file-6f08114a58f6)
- [PDF 1.7 specification](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf)
- [qpdf program and C++ library for structural, content-preserving transformations on PDF files.](https://qpdf.readthedocs.io/)
- [Hacker News Discussion About why JSON-Resume didn't work](https://news.ycombinator.com/item?id=11026821)
- [HR Open Standards](https://www.hropenstandards.org/)


