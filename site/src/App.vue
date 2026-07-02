<script setup lang="ts">
import SideBar from './components/SideBar.vue'
import MainContent from './components/MainContent.vue'
</script>

<template>
  <div class="layout">
    <SideBar />
    <MainContent />
  </div>
</template>

<style>
.layout {
  display: flex;
  min-height: 100vh;
}

@media (max-width: 768px) {
  .layout {
    flex-direction: column;
  }
}
</style>
