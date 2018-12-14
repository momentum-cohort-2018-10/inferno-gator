/* global fetch, Cookies, $, books   */

function bookHtml (book) {
  return `
  <div class="level">
    <div class="level-left">
      <div class="level-item">
        <div>
          <p>
            <span class="is-size-4 has-text-weight-bold">${book.title}</span>
            <span>${book.author_string}</span>
          </p>
          <p class="has-text-grey-light">Added Jan 2, 2018</p>
        </div>
      </div>
    </div>

    <div class="level-right">
      <div class="buttons level-item">
        <button class="button">Start Reading</button>
        <button class="button is-danger">Remove Book</button>
      </div>
    </div>
  </div>
  `
}

if (books.length === 0) {
  $('#book-list').append('<p>No books</p>')
}

for (let book of books) {
  $('#book-list').append(bookHtml(book))
}
