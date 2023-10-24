<script lang="ts">
  import Layout from "../../components/Layout.svelte";
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";

  export let person = {};
  export let errors = {};

  const submit = () => {
    router.put(`/people/${person.id}`, { person });
  };

  router.on("success", (event) => {
    console.log(`Successfully made a visit to ${event.detail.page.url}`);
  });

  router.on("finish", (event) => {
    console.log("finished");
  });
</script>

<Layout>
  <h1>Edit Person</h1>
  <Form {person} {errors} on:submit={submit} />
</Layout>
