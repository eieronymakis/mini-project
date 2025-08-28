document.getElementById("search-input").blur();

let currentPage = 1;
let totalPages = 1;
let currentSortBy = 'id';
let currentSortOrder = 'asc';

async function fetchProducts() {
  const response = await fetch(
    `/products?page=${currentPage}&sort_by=${currentSortBy}&sort=${currentSortOrder}&search=${encodeURIComponent(currentSearch)}`
  );
  const data = await response.json();

  totalPages = data.total_pages;
  document.getElementById('page-info').innerText = `Page ${data.page} of ${totalPages}`;

  const tbody = document.getElementById('products-tbody');
  tbody.innerHTML = '';

  data.products.forEach((product, index) => {
    const row = document.createElement('tr');
    row.innerHTML = `
      <th scope="row">${product.id}</th>
      <td>${product.serialNumber}</td>
      <td>${product.name}</td>
      <td>${product.description || ''}</td>
    `;
    tbody.appendChild(row);
  });
}

function sortBy(column) {
  if (currentSortBy === column) {
    currentSortOrder = currentSortOrder === 'asc' ? 'desc' : 'asc';
  } else {
    currentSortBy = column;
    currentSortOrder = 'asc';
  }
  currentPage = 1;
  fetchProducts();
}

function nextPage() {
  if (currentPage < totalPages) {
    currentPage++;
    fetchProducts();
  }
}

function prevPage() {
  if (currentPage > 1) {
    currentPage--;
    fetchProducts();
  }
}

let currentSearch = '';

document.addEventListener('DOMContentLoaded', () => {
  fetchProducts();

  document.getElementById('prev-btn').addEventListener('click', prevPage);
  document.getElementById('next-btn').addEventListener('click', nextPage);

  const searchInput = document.getElementById('search-input');
  searchInput.addEventListener('input', () => {
    currentSearch = searchInput.value;
    currentPage = 1;
    fetchProducts();
  });
});