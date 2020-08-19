<template>
  <div id="editor">
    <h1>Deposit your work</h1>
    <AddFiles />
    {{formData.title}}
    <Title :title="formData.title" @modify-title="modifyTitle"/>
    <Contributors />
    <Dates />
    <Collection />
    <Description />
    <Embargo />
    <License />
    <Agreement />
    <Buttons />

  </div>
</template>

<script>
import AddFiles from 'editor/addFiles.vue'
import Title from 'editor/title.vue'
import Contributors from 'editor/contributors.vue'
import Dates from 'editor/dates.vue'
import Collection from 'editor/collection.vue'
import Description from 'editor/description.vue'
import Embargo from 'editor/embargo.vue'
import License from 'editor/license.vue'
import Agreement from 'editor/agreement.vue'
import Buttons from 'editor/buttons.vue'

export default {
  components: {
    AddFiles,
    Title,
    Contributors,
    Dates,
    Collection,
    Description,
    Embargo,
    License,
    Agreement,
    Buttons,
  },
  data: function () {
    return {
      formData: {
        title: ''
      }
    }
  },
  methods: {
    modifyTitle: function(val) {
      this.formData.title = val
    }
  }
}
</script>

<style scoped>

</style>
