<script setup lang="ts">
import ExperienceItem from "~/components/content/ExperienceItem.vue";

interface Experience{
  title?: string;
  year?: string;
  description?: string;
}

defineProps({
  titleText: {
    type: String,
    required: false,
  },
  experience: {
    type: Array as PropType<Experience[]>,
    required: false,
  },
});
</script>
<template>
  <div class="not-prose flex flex-col gap-4 lg:w-1/2">
    <h3 class="uppercase tracking-widest font-light text-zinc-900 dark:text-orange-600">
      {{ titleText }}
    </h3>
    <ul class="space-y-4">
      <ExperienceItem v-for="(item, index) in experience" :key="index" :title="item.title" :year="item.year" :description="item.description" />
    </ul>
  </div>
</template>
