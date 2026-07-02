<script setup lang="ts">
const education = [
  {
    period: '2025 – Present',
    degree: 'M.S.',
    major: 'Computer Science and Technology',
    school: 'Nanjing University of Science and Technology',
    schoolZh: '南京理工大学',
    url: 'https://www.njust.edu.cn/',
  },
  {
    period: '2021 – 2025',
    degree: 'B.S.',
    major: 'Software Engineering',
    school: 'Anhui University',
    schoolZh: '安徽大学',
    url: 'https://www.ahu.edu.cn/',
  },
]

const research = [
  'Time Series Imputation',
  'Deep Learning',
  'Representation Learning',
  'Temporal Pattern Mining',
]

const publications: Array<{
  title: string
  authors: string
  venue: string
  year: string
  links: Array<{ label: string; href: string }>
}> = []
</script>

<template>
  <main class="main">
    <!-- About -->
    <section class="section">
      <h2 class="section-title">About</h2>
      <div class="prose">
        <p>
          I am a master's student at
          <a href="https://www.njust.edu.cn/" target="_blank" rel="noopener noreferrer">Nanjing University of Science and Technology</a>,
          majoring in Computer Science and Technology.
        </p>
        <p>
          My research focuses on <strong>time series imputation</strong> — developing methods to recover
          missing values in temporal data. I am particularly interested in applying deep learning
          techniques to handle incomplete time series in real-world scenarios.
        </p>
      </div>
    </section>

    <!-- Education -->
    <section class="section">
      <h2 class="section-title">Education</h2>
      <div class="edu-list">
        <div v-for="item in education" :key="item.school" class="edu-item">
          <span class="edu-period">{{ item.period }}</span>
          <div class="edu-body">
            <span class="edu-degree">{{ item.degree }}, {{ item.major }}</span>
            <span class="edu-school">
              — <a :href="item.url" target="_blank" rel="noopener noreferrer">{{ item.school }}</a>
              <span class="edu-zh">（{{ item.schoolZh }}）</span>
            </span>
          </div>
        </div>
      </div>
    </section>

    <!-- Research -->
    <section class="section">
      <h2 class="section-title">Research Interests</h2>
      <ul class="research-list">
        <li v-for="item in research" :key="item">{{ item }}</li>
      </ul>
    </section>

    <!-- Publications -->
    <section class="section">
      <h2 class="section-title">Publications</h2>
      <div v-if="publications.length > 0" class="pub-list">
        <div v-for="(pub, index) in publications" :key="index" class="pub-item">
          <p class="pub-title">{{ pub.title }}</p>
          <p class="pub-meta">{{ pub.authors }}. <em>{{ pub.venue }}</em>, {{ pub.year }}.</p>
          <span class="pub-links">
            <a v-for="link in pub.links" :key="link.label" :href="link.href" target="_blank" rel="noopener noreferrer">[{{ link.label }}]</a>
          </span>
        </div>
      </div>
      <p v-else class="empty">Coming soon.</p>
    </section>

    <footer class="footer">
      <p>© 2025 Yongjun Tan</p>
    </footer>
  </main>
</template>

<style scoped>
.main {
  flex: 1;
  padding: 56px 56px 72px;
  max-width: 720px;
}

.section {
  margin-bottom: 44px;
}

.section-title {
  font-family: var(--serif);
  font-size: 1.25rem;
  font-weight: 700;
  color: var(--text);
  margin-bottom: 18px;
  letter-spacing: -0.3px;
}

/* Prose */
.prose {
  font-size: 0.95rem;
  line-height: 1.85;
  color: var(--text);
}

.prose p {
  margin-bottom: 14px;
}

.prose p:last-child {
  margin-bottom: 0;
}

.prose strong {
  font-weight: 600;
  color: var(--text);
}

/* Education */
.edu-list {
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.edu-item {
  display: flex;
  gap: 20px;
  align-items: baseline;
  font-size: 0.92rem;
}

.edu-period {
  flex-shrink: 0;
  width: 110px;
  font-size: 0.82rem;
  color: var(--text-tertiary);
  font-variant-numeric: tabular-nums;
  padding-top: 1px;
}

.edu-degree {
  font-weight: 600;
  color: var(--text);
}

.edu-school {
  color: var(--text-secondary);
}

.edu-school a {
  color: var(--text-secondary);
}

.edu-school a:hover {
  color: var(--link);
}

.edu-zh {
  font-size: 0.8rem;
  color: var(--text-tertiary);
}

/* Research */
.research-list {
  list-style: none;
  padding: 0;
  display: flex;
  flex-wrap: wrap;
  gap: 8px 0;
}

.research-list li {
  font-size: 0.92rem;
  color: var(--text);
  padding-right: 20px;
  position: relative;
}

.research-list li::after {
  content: '·';
  position: absolute;
  right: 6px;
  color: var(--text-tertiary);
}

.research-list li:last-child::after {
  content: '';
}

/* Publications */
.pub-list {
  display: flex;
  flex-direction: column;
  gap: 22px;
}

.pub-title {
  font-size: 0.95rem;
  font-weight: 600;
  color: var(--text);
  margin-bottom: 2px;
  line-height: 1.5;
}

.pub-meta {
  font-size: 0.85rem;
  color: var(--text-secondary);
  margin-bottom: 4px;
}

.pub-links {
  display: inline-flex;
  gap: 10px;
}

.pub-links a {
  font-size: 0.8rem;
  color: var(--link);
  font-weight: 500;
}

.empty {
  font-size: 0.9rem;
  color: var(--text-tertiary);
  font-style: italic;
}

/* Footer */
.footer {
  margin-top: 56px;
  padding-top: 20px;
  border-top: 1px solid var(--border);
}

.footer p {
  font-size: 0.75rem;
  color: var(--text-tertiary);
}

@media (max-width: 768px) {
  .main {
    padding: 36px 24px 56px;
  }

  .edu-item {
    flex-direction: column;
    gap: 2px;
  }

  .edu-period {
    width: auto;
    font-size: 0.78rem;
  }

  .research-list {
    flex-direction: column;
    gap: 6px;
  }

  .research-list li::after {
    content: '';
  }
}
</style>
