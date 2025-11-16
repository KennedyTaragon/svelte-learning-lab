<script>
	let numbers = [1, 2, 3, 4];

	function addNumber() {
		// Create a new array instead of mutating the old one
		numbers = [...numbers, numbers.length + 1];
	}
</script>

<p>PRESS THE BUTTON TO CHANGE THE COUNTER STATE</p>

<p>{numbers.join(' + ')} = ...</p>

<button on:click={addNumber}>
	Add a number
</button>
