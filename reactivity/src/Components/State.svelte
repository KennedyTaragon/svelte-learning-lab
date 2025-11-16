<script>
  let count = 0;

  function increment() {
    count += 1;
  }
</script>

<p>PRESS THE BUTTON TO CHANGE THE COUNTER STATE</p>
<button on:click={increment}>
  Clicked {count} {count === 1 ? 'time' : 'times'}
</button>

