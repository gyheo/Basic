let value = prompt('Enter the number :');
let prime = '';
let cnt = 0;
let i, j;

for(i = 2; i <= value; i++){
	for(j = 1; j <= value; j++){
		if (i % j == 0)
			cnt++
	}
	if(cnt <= 2) {
		prime += i;
		prime += ',';
    }

	cnt = 0;
}

console.log(prime); 