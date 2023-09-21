async function fetchBooks(){
    const response = await fetch('https://www.googleapis.com/books/v1/volumes?q=foction');
    const jsonData = await response.json();

    const bookList= jsonData.items;
    const bookListElement= document.getElementById('bookList');
    bookListElement.innerHTML='';
    for(const book of bookList){
        const bookElement=document.createElement('li');
        bookElement.textContent=book.volumeInfo.title;
        bookListElement.appendChild(bookElement);
    }
}
