<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Layout from "../../components/Layout.svelte";
  export let people = [];
  export let user = {};
</script>

<Layout>
  <h1>People</h1>

  <ul>
    {#each people as person}
      <li>
        <a href={`/people/${person.id}`} use:inertia
          >{person.first_name} {person.last_name}</a
        >
      </li>
    {/each}
  </ul>
</Layout>
