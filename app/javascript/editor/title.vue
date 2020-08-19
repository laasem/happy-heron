<template>
  <section>
    <header>Descriptive title of this deposit for library catalog and contact information</header>
    <div class="mb-3 row">
      <label for="title"class="col-sm-2 col-form-label">Title of deposit</label>
      <div class="col-sm-10">
        <input id="title" v-model="myTitle" class="form-control">
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ['title'],
  data() {
    return {
      myTitle: this.title
    }
  },
  watch: {
    myTitle() {
        this.$emit('modify-title', this.myTitle);
    }
  }
}
</script>

<style scoped>
</style>
