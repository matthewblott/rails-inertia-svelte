<script lang="ts">
  import { capitalCase } from "change-case";

  export let name = "";
  export let value = "";
</script>

<label for={name}>{capitalCase(name)}</label>
<input id={name} {name} {value} />
