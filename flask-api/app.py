from flask import Flask, render_template, jsonify, request
import mysql.connector

app = Flask(__name__)

def get_db_connection():
    return mysql.connector.connect(
        host='172.20.0.6',
        user='root',
        password='xyz12345',
        database='cytech-db'
    )

@app.route('/')
def index():
    return render_template('root.html')

@app.route('/products')
def get_products():
    page = request.args.get('page', 1, type=int)
    per_page = 15
    offset = (page - 1) * per_page

    sort_order = request.args.get('sort', 'asc').lower()
    if sort_order not in ['asc', 'desc']:
        sort_order = 'asc'

    sort_by = request.args.get('sort_by', 'id').lower()
    if sort_by not in ['id', 'name']:
        sort_by = 'id'

    search_query = request.args.get('search', '', type=str).strip()

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    base_query = 'FROM products'
    params = []

    if search_query:
        base_query += ' WHERE name LIKE %s'
        params.append(f'%{search_query}%')

    count_query = f'SELECT COUNT(*) AS count {base_query}'
    cursor.execute(count_query, params)
    total = cursor.fetchone()['count']

    base_query += f' ORDER BY {sort_by} {sort_order} LIMIT %s OFFSET %s'
    params.extend([per_page, offset])

    query = f'SELECT * {base_query}'
    cursor.execute(query, params)
    products = cursor.fetchall()

    cursor.close()
    conn.close()

    total_pages = (total + per_page - 1) // per_page

    return jsonify({
        'products': products,
        'page': page,
        'total_pages': total_pages,
        'sort_order': sort_order,
        'sort_by': sort_by,
        'search': search_query
    })

if __name__ == "__main__":
    app.run(debug=True)