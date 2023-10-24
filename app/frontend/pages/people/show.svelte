<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Layout from "../../components/Layout.svelte";

  export let person = {};

  const submit = () => {
    router.delete(`/people/${person.id}`);
  };
</script>

<Layout>
  <h1>Person</h1>
  <div>
    <label>First Name <input bind:value={person.first_name} /></label>
  </div>
  <div>
    <label>Last Name <input bind:value={person.last_name} /></label>
  </div>
  <div>
    <a href={`/people/${person.id}/edit`} use:inertia>Edit</a>

    <button on:click={submit}>Delete</button>
  </div>
</Layout>

<style>
  label {
    display: block;
  }

  input {
    display: block;
    border-radius: 5px;
    background-color: inherit;
    border-color: whitesmoke;
    color: inherit;
    border-style: solid;
    border-width: 1px;
  }

  a {
    border-radius: 5px;
    border-style: solid;
    padding-left: 5px;
    padding-right: 5px;
    border-width: 1px;
    display: inline-block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
      text-decoration: none;
    }
  }

  button {
    border-radius: 5px;
    background-color: inherit;
    border-color: whitesmoke;
    color: inherit;
    border-style: solid;
    border-width: 1px;
    display: inline-block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }
</style>
