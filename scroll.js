function scrollToBottom() {
  let currentPosition = window.pageYOffset;
  let maxPosition = document.body.scrollHeight - window.innerHeight;
  
  if (currentPosition >= maxPosition) {
    clearInterval(scrollInterval);
  } else {
    window.scrollBy(0, 10);
  }
}

let scrollInterval = setInterval(scrollToBottom, 120);
