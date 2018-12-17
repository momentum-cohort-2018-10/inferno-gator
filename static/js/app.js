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

function changeStatusTab (status) {
  $('.book-list').hide()
  $(`#book-list-${status}`).show()
  $('.tabs li').removeClass('is-active')
  $(`li[data-tab-status=${status}]`).addClass('is-active')
}

function loadBookData () {
  $.get('/api/books')
    .then(function (books) {
      for (let book of books) {
        addBookToList(book)
      }
    })
}

function setupTabs () {
  $('.book-list').hide()

  $('.tabs li').on('click', function (event) {
    event.preventDefault()
    changeStatusTab(this.dataset.tabStatus)
  })

  changeStatusTab('want_to_read')
}

function setupNewBookModal () {
  $('#add-book-button').on('click', function () {
    $('#add-book-modal').addClass('is-active')
  })

  $('.modal-background, .modal-close, #new-book-cancel').on('click', function (event) {
    event.preventDefault()
    $('#add-book-modal').removeClass('is-active')
  })

  $('#new-book-form').on('submit', function (event) {
    event.preventDefault()
    let book = {
      title: $('#new-book-title').val(),
      authors: $('#new-book-authors').val().split(',').map(name => name.trim()),
      status: $('#new-book-status').val()
    }
    $.ajax({
      url: '/api/books/',
      method: 'POST',
      data: JSON.stringify(book),
      contentType: 'application/json'
    }).then(function (book) {
      addBookToList(book)
      $('#add-book-modal').removeClass('is-active')
    })
  })
}

function addBookToList (book) {
  $(`#book-list-${book.status}`).append(bookHtml(book))
}

function setupCSRFAjax () {
  var csrftoken = Cookies.get('csrftoken')

  $.ajaxSetup({
    beforeSend: function (xhr, settings) {
      if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
        xhr.setRequestHeader('X-CSRFToken', csrftoken)
      }
    }
  })
}

function startPage () {
  loadBookData()
  setupTabs()
  setupNewBookModal()
  setupCSRFAjax()
}

function csrfSafeMethod (method) {
  // these HTTP methods do not require CSRF protection
  return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method))
}

startPage()
