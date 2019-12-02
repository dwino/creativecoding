let n = 0;
let d = 0;
let nReal = n;
let dReal = d;
let nOffset = 100;
let dOffset = 1000;
let nIncrement = 0.0005;
let dIncrement = 0.0001;

function setup() {
	createCanvas(400, 400);
	angleMode(DEGREES);

}

function draw() {
	background(0);
	translate(width / 2, height / 2);

	noFill();
	stroke(255);
	strokeWeight(1);
	beginShape();
	for (let i = 0; i < 361; i++) {
		let k = i * d;
		let r = width / 2 * sin(n * k);
		let x = r * cos(k);
		let y = r * sin(k);
		vertex(x, y);
	}
	endShape(CLOSE);

	noFill();
	stroke(255, 0, 0);
	strokeWeight(2);
	beginShape();
	for (let i = 0; i < 361; i++) {
		let k = i;
		let r = width / 2 * sin(n * k);
		let x = r * cos(k);
		let y = r * sin(k);
		vertex(x, y);
	}
	endShape(CLOSE);

	nReal = map(noise(nOffset), 0, 1, 0, 10)
	dReal = map(noise(dOffset), 0, 1, 0, 100)

	nOffset += nIncrement;
	dOffset += dIncrement;

	n = round(nReal);
	d = float(dReal.toFixed(3));
}