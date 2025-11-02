<script>
	let count = 0;

	function increment() {
		count += 1;
	}
</script>

<button on:click={increment}>
	Clicked {count} {count === 1 ? 'time' : 'times'}
</button>

<style>
	button {
		font-size: 1em;
		padding: 0.5em 1em;
		border: none;
		background-color: #ff3e00;
		color: white;
		border-radius: 8px;
		cursor: pointer;
	}
</style>
