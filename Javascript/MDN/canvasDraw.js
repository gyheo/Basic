function draw() {
    // let canvas = document.getElementById('canvas');
    let canvas = document.querySelector('canvas');
    if (canvas.getContext) {
        let ctx = canvas.getContext('2d');

        ctx.fillStyle = 'rgb(200, 0, 0)';
        ctx.fillRect(10, 10, 50, 50);

        ctx.fillStyle = 'rgba(0, 0, 200, 0.5)';
        ctx.fillRect(30, 30, 50, 50);

        ctx.fillStyle = 'rgba(10, 150, 90, 0.5)';
        ctx.fillRect(50, 50, 100, 100);

        ctx.clearRect(75, 75, 50, 50);
        
        ctx.strokeStyle = 'rgb(24, 60, 30)';
        ctx.strokeRect(90, 90, 20, 20);
    }
}