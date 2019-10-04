<template>
  <v-card
    max-width="344"
    class="mx-auto"
  >
    <v-card-text>
        <p>Lenovo A10-30 Digitizer Replacement</p>
        <small>screen, replacement to be ordered and fitted.</small>
        <v-select
          :items="items"
          label="input test"
          outlined
        ></v-select>
    </v-card-text>
    <v-card-actions>
      <v-btn text>Click</v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    items: ['Foo', 'Bar', 'Fizz', 'Buzz']
  })
};
</script>
