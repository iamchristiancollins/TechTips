let array = [5, 3, 8, 4, 2];
const container = document.getElementById("array-container");

function createBars() {
    container.innerHTML = ""; // Clear the container
    array.forEach(value => {
        const bar = document.createElement("div");
        bar.classList.add("array-bar");
        bar.style.height = `${value * 20}px`;
        container.appendChild(bar);
    });
}

function sleep(ms) {
    return new promise(resolve => setTimeout(resolve, ms));
}

async function bubbleSort() {
    let len = array.length;
    for (let i = 0; i < len ; i++) {
        for(let j = 0 ; j < len - i - 1; j++){ 
            if (array[j] > array[j + 1]) {
                let temp = array[j];
                array[j] = array[j+1];
                array[j + 1] = temp;
                createBars(); // Update bars
                await sleep(100); // Wait for 100ms
            }
        }
    }
}

createBars(); // Initial bar creation
