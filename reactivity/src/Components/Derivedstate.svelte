<script>
	let numbers = [1, 2, 3, 4];

	// Use a reactive declaration for derived state
	$: total = numbers.reduce((t, n) => t + n, 0);

	function addNumber() {
		// Reassign array to trigger reactivity
		numbers = [...numbers, numbers.length + 1];
	}
</script>

<p>PRESS THE BUTTON TO CHANGE THE COUNTER STATE (DERIVED STATE)</p>
<p>{numbers.join(' + ')} = {total}</p>

<button on:click={addNumber}>
	Add a number
</button>
