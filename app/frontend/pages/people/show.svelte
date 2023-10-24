<script>
  export let person = {}
  export let user = {}
  import { inertia } from '@inertiajs/svelte'

</script>

<p>
  Logged in: {user.email}
</p>
<h1>Person</h1>

<hr>

<p>

  {person.first_name}
</p>
