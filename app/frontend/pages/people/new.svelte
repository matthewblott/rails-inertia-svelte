<script>
  import { onMount } from "svelte";
  import { router } from "@inertiajs/svelte";

  export let person = {};
  export let user = {};

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

<p>
  Logged in: {user.email}
</p>
<h1>Person</h1>

<hr />
<form on:submit|preventDefault={submit}>
  <p>
    <label for={first_name}>First Name</label>
    <input {first_name} id={first_name} value={first_name} />
  </p>

  <p>
    <label for={last_name}>Last Name</label>
    <input {last_name} id={last_name} value={last_name} />
  </p>

  <p>
    <button type="submit">Submit</button>
  </p>
</form>
