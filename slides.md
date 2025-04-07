---
theme: the-unnamed
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://cover.sli.dev
title: SEMANTIC CV FORMATS, A SEMI-DEEP DIVE
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

addons:
  - slidev-addon-rabbit
rabbit:
  slideNum: true 
themeConfig:
  aboutme-background: var(--slidev-theme-background)
  aboutme-color: var(--slidev-theme-color)
  aboutme-helloBg: var(--slidev-theme-accents-yellow)
  aboutme-helloColor: var(--slidev-theme-background)
  aboutme-nameColor: var(--slidev-theme-accents-red)
  aboutme-font-size: 1.1em
---



# SEMANTIC CV FORMATS, A SEMI-DEEP DIVE

Reimagining Career Data: Making CVs Smarter, Accessible, and Machine-Readable.
<!-- If you are reading the source markdown file, I seek your forgivness for it is a loooong file-->

---
layout: about-me

helloMsg: Who am I?
name: Salim Mahboubi
imageSrc: /me-pixel.svg
position: left
job:  "- Web Developer since 2017"
line1: "- Joining Data Lighthouse, Previously @BurdaForward, @Sharenow, etc"
line2: "... and I have a bone to pick with the job application process"
social1: www.smhb.me
social2: The picture to the right is NOT an NFT
---

# s


---

```yaml
layout: center
```

# 1. LET'S LOOK AT A GLOSSARY
- **Career Data**: All information related to an individual's professional identity, including: work history, education, projects, and contact information.
- **CIS**: (Career Information System): I'll refer to all systems that handle the career data of an individual as CIS. These systems include ATSs (Applicant Tracking Systems), career websites/apps, professional social networks, etc.

---

```yaml
layout: center
```

# 2. THE HISTORY AND STATUS QUO OF THE CV

<!-- -->

---

```yaml
layout: image
image: /CV history.excalidraw.svg
backgroundSize: contain
```

<!--
# Historically
 - people sent their CV as a physical document (ink on paper, probably cuneiform clay tablets too) detailing their career data, written by a human for a human's eyes.

## 2.2 Early Days of Computers
- CVs rapidly migrated towards digitized formats like PDFs, Word, or TXT documents, JPGs.
- But they were still intended only for humans to read. Computers were used only to ease editing and transfer.

## 2.3 Today

- We still use the same file formats, mainly PDF.
- CVs are uploaded to CISs, or sent via email, IM, etc.
- The career data is extracted from CVs or re-typed into forms.
 -->



---

```yaml
layout: center
```
# 3. Challenges

3.0 For Everyone: PDF software and the content of PDF files are rarely accessible.
<!-- There are ways to improve PDF accessibility like using heading tags, which help screen reader users a lot. But they are commonly overlooked -->

---

```yaml
layout: center
```

## <div class="text-6xl">3.1 For Recruiters and HR</div>

- <div class="text-4xl pb-6">CIS-extracted information can be erroneous, requiring tedious manual verification.</div>
- <div class="text-4xl pb-6">Each CV is unique in its format, presentation, and depth, making it difficult to locate relevant information.</div>
- <div class="text-4xl pb-6">Potentially missing out on getting good candidates.</div>
 
<!-- -->

---

```yaml
layout: center
```

## <div class="text-6xl">3.2 For Candidates:</div>

- <div class="text-4xl pb-6">Creating a concise document that fairly represents one’s career data is difficult.</div>
- <div class="text-4xl pb-6">Retyping the same career data in different forms over and over.</div>
- <div class="text-4xl pb-6">Designing a CV to be readable by both humans and CISs is challenging due to their differing requirements.</div>

<!-- -->

---

```yaml
layout: center
```

## <div class="text-6xl">3.3 For CISs:</div>

- <div class="text-4xl pb-6">The sheer visual, syntactic, and formatting diversity of CVs.</div>
- <div class="text-4xl pb-6">Extracting relevant information from unstructured files remains a hard problem for machines.</div>
- <div class="text-4xl pb-6">Maintaining a lot of heuristics for sufficiently good data extraction.</div>
  
<!-- -->
---

```yaml
layout: imageCaption

image: /CV File journey.excalidraw.svg
backgroundSize: contain
caption: "These are the possible ways career data can travel to reach the recruiter."
```

<!-- --> 

---
src: ./pages/pdf_format_example.md
---

<!-- Skip the PDF eof parts if time is tight--> 
---

```yaml
layout: center
```

# 4. EXISTING SOLUTIONS

---
src: ./pages/json_resume.md
---

<!-- -->

---

### Pros
- Simple yet complete enough schema.
- Open source, no barrier.
- Tools do what they promise.
### Cons
- It doesn't go beyond being a schema with a few tools.
- The tools are nothing exceptional and the result is like any other CV builder.
- Semantics are lost after the export. The JSON isn't embedded as metadata to the HTML nor to the PDF.
- No wide adoption, seems like a niche set of toys for developers.
<!-- -->

---
src: ./pages/europass_hr_open.md
---

<!-- -->
---

### Pros
- The schema is complete.
- The semantics are preserved. (Do some other orgs use it?) 
- Presumably a recognized template.
  
### Cons
- None of the links in the namespaces names work in the Europass XML embed.
- You have to register (for free) to download The HR Open Standards specifications.
- The related documentation, which includes use cases and implementation guidelines, is only available for paying members.  
- The templates are ugly and verbose.
- No wide adoption.
<!-- While yes, xml namespaces URIs aren't expected to be linking to live documents but yeah-->

---
src: ./pages/semantic_resume.md
---


---

### Pros
- The tool is easy to use for developers, based on markdown.
- Uses Schema.org specs.
- Open source.
- Semantics preserved on the html document.

  
### Cons
- Uses Schema.org specs for some semantics, thus leaving a lot of empty regions that aren't covered by its schemas.
- Non techies don't usually use markdown.
- The templates are limited.
- Semantics are lost if exported to another format.
- Seems abandoned.
- No wide adoption.
<!-- -->


---

```yaml
layout: center
```

# 5. A POTENTIAL PROJECT
<!-- -->

---

```yaml
layout: center
```

## <div class="text-6xl">5.1 GOALS</div> 
 
 <ol class="mt-6">
  <li class="text-4xl">Have a strong standard and tools that enable seamless transfer and treatment of career data.</li>
  <li class="text-4xl">Have it adopted.</li>
</ol>
<!-- -->


---

```yaml
layout: center
```

## <div class="text-6xl">5.1 THE PLAN</div>

<ul class="mt-6 text-xl">
  <li>Make/Adopt a standard and adapt it to be included into PDF, making a special file subformat.</li>
  <li>Work on great tooling and documentation both for developers and all kinds of end users.</li>
  <li>Work on getting the format adopted by an existing standards organization or found a new one.</li>
  <li>Collaborate with industry leaders, recruiters, and developers to ensure the standard meets real-world needs.</li>
  <li>Build open-source libraries and APIs to simplify integration for developers.</li>
  <li>Create user-friendly tools for candidates to generate compliant CVs effortlessly.</li>
  <li>Advocate for the adoption of the standard through conferences, blogs, and partnerships.</li>
</ul>
<!-- -->

---

```yaml
layout: imageCaption
image: /standards.png
backgroundSize: contain
caption: "Credit: xkcd.com/927"
```

## <div class="text-4xl"> 5.2 RISKS</div>

<!--
- **Adoption Challenges**: Resistance to adopt a new standard due to existing workflows and tools.
- **Complexity**: The standard might become too complex, discouraging developers and users from engaging with it.
- **Lack of Awareness**: Insufficient promotion could result in limited adoption and usage.
- **Interoperability Issues**: Ensuring compatibility with diverse systems and platforms may be difficult.
- **Privacy Concerns**: Mishandling of sensitive career data could lead to security and trust issues.
- **Funding and Resources**: Sustaining the project without adequate funding or community support could hinder progress.
- **Competition**: Existing solutions or standards might overshadow the proposed one. 
  -->

---


# CONCLUSION

<ul class="mt-6 text-2xl">
  <li>This talk is only a seed, the idea still needs clear detailed strategy and plans. It might not even be worthwile.</li>
  <li>As developers, we need to see beyond the tech and see the complexities of daily life dealings.</li>
  <li>We need to accept the history without having to accept the status quo.</li>
  <li>Let's also ponder why we continue using file formats from 20, 30, 40+ years ago (not necessarily in a negative way).</li>
  <li>... Add your own!</li>
</ul>

<!-- There are many takeaways from this talk, and it's not only to sell a new shiny idea for a standard/format.
But to me the situation is a good example of a bigger UX problem, as opposed the color or position of a button. IMO friction in a process is more damaging than any bright neon green color. Also this kind of problem goes beyond a single organisation, solving it won't fit in a quarterly plan or a couple of sprints, this really requires a community and inter-organisation cooperation. 
-->
---

```yaml
layout: two-cols
```

## Read more :

- [A good article on the pdf format](https://medium.com/@jberkenbilt/the-structure-of-a-pdf-file-6f08114a58f6)
- [PDF 1.7 specification](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf)
- [-DE- Guide on Barrier-free PDF](https://www.bundesfachstelle-barrierefreiheit.de/DE/Fachwissen/Informationstechnik/Barrierefreie-PDF/barrierefreie-pdf.html)
- [Adobe's Guide on PDF accessibility](https://www.adobe.com/accessibility/pdf/pdf-accessibility-overview.html)
- [HR Open Standards](https://www.hropenstandards.org/)
- [qpdf program and C++ library to transform PDFs](https://qpdf.readthedocs.io/)
- [Hacker News: why JSON-Resume didn't work](https://news.ycombinator.com/item?id=11026821)


## Slides :
https://github.com/ztickm/cvpdf-slides/

::right::

## Projects mentioned:

- https://jsonresume.org/
- https://europass.europa.eu
- https://www.hropenstandards.org/
- https://github.com/cllu/Semantic-Resume


## Contact me:
- https://smhb.me
- https://www.xing.com/profile/Salim_Mahboubi/
- https://www.linkedin.com/in/smahboubi/
- Let's have a chat after the talks !