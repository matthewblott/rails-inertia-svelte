<script>
  export let people = []
  export let user = {}
  import { inertia } from '@inertiajs/svelte'

</script>

<p>
  Logged in: {user.email}
</p>
<h1>People</h1>

<hr>
<ul>
	{#each people as person}
		<li>
		  <a href="{`/people/${person.id}`}" use:inertia>{person.first_name} {person.last_name}</a></li>
	{/each}
</ul>

<p>
  There are {people.length} people.
</p>
