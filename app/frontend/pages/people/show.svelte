<script>
  import Layout from "../../components/Layout.svelte";
  export let person = {};
</script>

<Layout>
  <h1>Person</h1>
  {person.first_name}
  {person.last_name}
</Layout>
