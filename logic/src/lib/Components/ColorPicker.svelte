<script lang="ts">
  // List of values you want to loop over
  let colors = ['red', 'green', 'blue', 'purple', 'orange'];

  let selected = $state('');
</script>

<div class="color-picker">
  {#each colors as color, i}
    <button
      style="background: {color}"
      aria-label={color}
      aria-current={selected === color}
      on:click={() => (selected = color)}
    >
      {i + 1}
    </button>
  {/each}
</div>

<p>Selected color: {selected || 'none'}</p>
