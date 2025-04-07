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
  <div class="w-full h-full flex flex-col">
    <slot />
    <div :style="style" class="h-full"></div>
    <div
      class="bg-black bg-opacity-30 p-4 drop-shadow-[0_1.2px_1.2px_rgba(0,0,0,0.8)]"
    >
      <p class="text-center text-white text-2xl font-black">{{ caption }}</p>
    </div>
  </div>
</template>
