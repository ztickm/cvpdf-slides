<script setup lang="ts">
import { computed } from "vue";
import { handleBackground } from "@slidev/client/layoutHelper.ts";

const props = defineProps({
  image: {
    type: String,
  },
  backgroundSize: {
    type: String,
    default: "cover",
  },
  caption: {
    type: String,
  },
});

const style = computed(() =>
  handleBackground(props.image, false, props.backgroundSize)
);
</script>

<template>
  <div class="slidev-layout w-full h-full" :style="style">
    <slot />
    <div
      class="absolute bottom-0 left-0 right-0 p-4 bg-black bg-opacity-50 text-white"
    >
      <p class="text-center">{{ caption }}</p>
    </div>
  </div>
</template>
