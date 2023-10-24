<script lang="ts">
  import Layout from "../../components/Layout.svelte";
  import { router } from "@inertiajs/svelte";
  import { onMount } from "svelte";

  export let person = {};

  let first_name = "";
  let last_name = "";

  const submit = () => {
    router.post(`/people`, { first_name, last_name });
  };

  onMount(() => {
    first_name = person.first_name;
    last_name = person.last_name;
  });
</script>

<Layout>
  <h1>New Person</h1>

  <form on:submit|preventDefault={submit}>
    <p>
      <label for={first_name}>First Name</label>
      <input {first_name} id={first_name} bind:value={first_name} />
    </p>

    <p>
      <label for={last_name}>Last Name</label>
      <input {last_name} id={last_name} value={last_name} />
    </p>

    <p>
      <button type="submit">Submit</button>
    </p>
  </form>
</Layout>
