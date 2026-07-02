<template>
  <aside class="sidebar">
    <div class="sidebar-inner">
      <div class="avatar">
        <div class="avatar-circle">YT</div>
      </div>

      <div class="info">
        <h1 class="name">Yongjun Tan</h1>
        <p class="name-cn">檀勇俊</p>
        <p class="role">M.S. Student</p>
        <p class="dept">Computer Science and Technology</p>
        <p class="affil">
          <a href="https://www.njust.edu.cn/" target="_blank" rel="noopener noreferrer">
            Nanjing University of<br />Science and Technology
          </a>
        </p>
      </div>

      <nav class="contact">
        <a href="mailto:tanyongjun@njust.edu.cn">
          <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="4" width="20" height="16" rx="2"/><path d="M22 4L12 13L2 4"/></svg>
          Email
        </a>
        <a href="https://github.com/TansirFlow" target="_blank" rel="noopener noreferrer">
          <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/></svg>
          GitHub
        </a>
        <a href="https://openreview.net/" target="_blank" rel="noopener noreferrer">
          <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14,2 14,8 20,8"/></svg>
          OpenReview
        </a>
      </nav>
    </div>
  </aside>
</template>

<style scoped>
.sidebar {
  position: sticky;
  top: 0;
  height: 100vh;
  width: 240px;
  flex-shrink: 0;
  background: var(--bg-sidebar);
  border-right: 1px solid var(--border);
  display: flex;
  align-items: center;
  justify-content: center;
}

.sidebar-inner {
  padding: 32px 28px;
  text-align: center;
}

.avatar {
  margin-bottom: 24px;
}

.avatar-circle {
  width: 100px;
  height: 100px;
  margin: 0 auto;
  border-radius: 50%;
  background: linear-gradient(135deg, #2c3e50, #34495e);
  color: #ecf0f1;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: var(--serif);
  font-size: 1.8rem;
  font-weight: 600;
  letter-spacing: -1px;
  box-shadow: 0 2px 12px rgba(0,0,0,0.08);
}

.name {
  font-family: var(--serif);
  font-size: 1.3rem;
  font-weight: 700;
  color: var(--text);
  margin-bottom: 2px;
  letter-spacing: -0.3px;
}

.name-cn {
  font-size: 0.88rem;
  color: var(--text-tertiary);
  margin-bottom: 16px;
  font-weight: 400;
}

.role {
  font-size: 0.82rem;
  font-weight: 500;
  color: var(--text-secondary);
  margin-bottom: 2px;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.dept {
  font-size: 0.8rem;
  color: var(--text-tertiary);
  margin-bottom: 4px;
}

.affil {
  font-size: 0.8rem;
  color: var(--text-tertiary);
  margin-bottom: 28px;
  line-height: 1.5;
}

.affil a {
  color: var(--text-tertiary);
  border-bottom: none;
}

.affil a:hover {
  color: var(--link);
}

.contact {
  display: flex;
  flex-direction: column;
  gap: 10px;
  align-items: center;
}

.contact a {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  font-size: 0.78rem;
  font-weight: 500;
  color: var(--text-secondary);
  border-bottom: none;
  letter-spacing: 0.3px;
  text-transform: uppercase;
  transition: color 0.2s;
}

.contact a:hover {
  color: var(--text);
  border-bottom: none;
}

.contact svg {
  opacity: 0.6;
}

@media (max-width: 768px) {
  .sidebar {
    position: relative;
    width: 100%;
    height: auto;
    border-right: none;
    border-bottom: 1px solid var(--border);
  }

  .sidebar-inner {
    padding: 36px 24px;
  }

  .avatar-circle {
    width: 80px;
    height: 80px;
    font-size: 1.4rem;
  }

  .contact {
    flex-direction: row;
    gap: 20px;
    flex-wrap: wrap;
    justify-content: center;
  }
}
</style>
