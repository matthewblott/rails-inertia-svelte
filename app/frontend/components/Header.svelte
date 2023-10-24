<script>
  import { inertia } from "@inertiajs/svelte";
</script>

<header>
  <nav>
    <a href="/" use:inertia>Home</a> |
    <a href="/about" use:inertia>About</a> |
    <a href="/people" use:inertia>People</a> |
    <a href="/people/new" use:inertia>New Person</a>
  </nav>
</header>
