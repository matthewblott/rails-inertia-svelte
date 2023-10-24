<script>
  export let people = [];
  export let user = {};
  import { inertia } from "@inertiajs/svelte";
  import { InertiaLink } from "@inertiajs/svelte";
</script>

<p>
  Logged in: {user.email}
</p>
<h1>People!</h1>

<hr />
<a href="/people/new" use:inertia>New</a>
<ul>
  {#each people as person}
    <li>
      <InertiaLink href={`/people/${person.id}`}>
        {person.first_name}
        {person.last_name}
      </InertiaLink>

      <a href={`/people/${person.id}`} use:inertia
        >{person.first_name} {person.last_name}</a
      >
    </li>
  {/each}
</ul>

<p>
  There are {people.length} people.
</p>
