---
theme: the-unnamed
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://cover.sli.dev
title: Semantic CV formats in PDF, a deep dive
info: |
  How is our career data presented when shared to the world, and how can we make it better?
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

How is our career data presented when shared to the world, and how can we make it better?


---
layout: about-me

helloMsg: Who am I?
name: Salim Mahboubi
imageSrc: /me-pixel.svg
position: left
job:  "Web Developer since 2017"
line1: "- Previously @BurdaForward, @Sharenow and many others"
line2: "... and I have a bone to pick"
social1: www.smhb.me
---

# s


---

# 1. LET'S LOOK AT A GLOSSARY
- **Career Data** : All information related an individual's profesionnal identity, including : work history, education, projects, and contact information
- **CIS** : (Career Information System): I'll refer to all systems that handle the career data of an individual as CIS, these systems include ATSs(Applicant Tracking Systems), Career Websites / Apps, Professional Social Networks, etc.
- **JD** : (Job Description): A widly used HR industry term, referring to the documents describing the position's requirements, tasks, benefits, and other descriptive sections.

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

## <div class="text-6xl">For recruiters and companies :</div>

- <div class="text-4xl pb-6">ATSs extracted information can be erroneous, requiring tedious manual verification.</div>
- <div class="text-4xl pb-6">Each CV is unique in its format, presentation, and depth, making it difficult to locate relevant information.</div>
- <div class="text-4xl pb-6">Potentially missing out on getting good candidates.</div>
 

---

## <div class="text-6xl">For candidates:</div>

- <div class="text-4xl pb-6">Creating a concise document that optimally and fairly encompasses one’s information is difficult.</div>
- <div class="text-4xl pb-6">Retyping the same information over and over.</div>
- <div class="text-4xl pb-6">Designing a CV to be readable by both humans and ATSs is challenging due to their differing requirements.</div>

---

## <div class="text-6xl">For CISs:</div>

- <div class="text-4xl pb-6">Text is sometimes saved/recognized as raster/vectorial images instead of actual text.</div>
- <div class="text-4xl pb-6">OCR software used to convert images back to text is still imperfect.</div>
- <div class="text-4xl pb-6">Extracting relevant information from semantically unstructured files remains a hard problem for machines.</div>
- <div class="text-4xl pb-6">Developing AI for this is resource-intensive, whereas a standard could simplify the process for everyone.</div>


---

# PDF EXAMPLE

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
- An Open-Source Project  
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
- kl
- dsad
### Cons
- kl
- dsad

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
		xsi:schemaLocation="http://www.europass.eu/1.0Candidate.xsd" xmlns="http://www.europass.eu/1.0"
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
- kl
- dsad
### Cons
- kl
- dsad


---

# The Plan 
- Make/Adopt a standard and adapt it to be included PDF, making a special file subformat.
- Work on great tooling and documentation both for developers and all kinds of end users.
- Work on getting the format adopted by a existing standards organisation or found a new one.
- Work on getting wide adoption from the public and 

---

# 6. CURRENT STATE AND FUTURE PROSPECTS

- 

---

# CONCLUSION

- Structured and meaningful data is an important way of communication in a binary world, even when Machine Learning algorithms "can understand" unstructured text.


---

## Read more:
- A good article on the pdf format: [https://medium.com/@jberkenbilt/the-structure-of-a-pdf-file-6f08114a58f6]
- PDF 1.7 specification : [https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf]
- qpdf program and C++ library for structural, content-preserving transformations on PDF files.  : [https://qpdf.readthedocs.io/]
- [[https://news.ycombinator.com/item?id=11026821][Hacker News Discussion About why JSON-Resume didn't work]]
- HR Open Standards https://www.hropenstandards.org/

- https://www.w3.org/TR/?filter-tr-name=semantic
- https://www.w3.org/TR/?filter-tr-name=RDF

<h2 v-click> </h2>
