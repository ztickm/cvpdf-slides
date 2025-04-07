## 4.3 Semantic Resume

[A simple HTML resume](https://github.com/cllu/Semantic-Resume) with semantic markups.

```html {*}{maxHeight: '400px', lines:true}
  <main class="page theme-default" itemscope itemtype="http://schema.org/Person">
    <header>
      <h1 itemprop="name">Chunliang Lyu</h1>
      <meta itemprop="alternateName" content="Chunliang Lu">

      <link itemprop="sameAs" href="https://linkedin.com/in/chunlianglyu">
      <ul>
        <li><a href="https://chunlianglyu.com" itemprop="url">https://chunlianglyu.com</a></li>
      </ul>
    </header>
    <section class="summary">
      <h2>Summary</h2>
      <p>I have spent four years of PHD ...</p>
    </section>
    <section class="education">
      <h2>Education</h2>
      <details open>
        <summary><span itemprop="alumniOf" itemscope itemtype="http://schema.org/EducationalOrganization">
                <link href="https://www.cuhk.edu.hk/" itemprop="url">
                <span itemprop="name">The Chinese University of Hong Kong</span>
          </span>, Ph.D.
          <time>2011 - 2016</time>
        </summary>
        <ul>
          <li>Research Area: Entity Retrieval, Natural Language Processing, Knowledge Graph.</li>
        </ul>

      </details>
      </details>
    </section>
    <section class="projects">
      <h2>Projects <a href="https://chunlianglyu.com/projects/" target="_blank">[more]</a></h2>
      <details open>
        <summary><span itemprop="worksFor" itemscope itemtype="http://schema.org/Organization">
                <link href="https://hyperlinkapp.com/" itemprop="url">
                <span itemprop="name">Hyperlink</span>
          </span> (<a href="https://hyperlinkapp.com" target="_blank">https://hyperlinkapp.com</a>), Co-founder
          <time>2014 - 2015</time>
        </summary>
        <p>Hyperlink is a unified platform for searching and managing personal information streams across 13 online services, such as social updates from Twitter and cloud files from Dropbox.</p>
        <ul>
          <li>Developed the backend in Python 3, with Flask/PostgreSQL/ElasticSearch/Celery as main stack.</li>
          <li>Designed the frontend using AngularJS, including extensive unit and end-to-end testing.</li>
          <li>Deployed the system on Amazon Web Services with Docker, designed and validated the scaling strategy.</li>
        </ul>

      </details>
    </section>
    <section class="skills">
      <h2>Technical Skills</h2>
      <ul>
        <li>Language: Scala, Python, Java, JavaScript, PHP, C++</li>
        <li>Database: PostgreSQL, MongoDB, MySQL</li>
        <li>Framework: ElasticSearch, Lucene, Hadoop, Spark, ReactJS, AngularJS</li>
        <li>Tool: Git, Gulp, Linux, Docker, Amazon Web Services</li>
      </ul>
    </section>
    <section class="publications">
      <h2>Selected Publications <a href="https://scholar.google.com.hk/citations?user=c5GAV_MAAAAJ" target="_blank">[more]</a></h2>
      <ul>
        <li><strong>C. Lu</strong>, W. Lam, Y. Liao. Entity Retrieval via Entity Factoid Hierarchy. In: Proceedings of the 53rd Annual Meeting of the Association for Computational Linguistics (ACL). 2015.</li>
        <li><strong>C. Lu</strong>, L. Bing, W. Lam. Structured Positional Entity Language Model for Enterprise Entity Retrieval. In: Proceedings of the 22nd ACM Conference on Information and Knowledge Management (CIKM). 2013.</li>
      </ul>
    </section>
  </main>
```
