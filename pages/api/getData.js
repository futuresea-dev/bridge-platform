import mysql from 'mysql2/promise';

export default async function handler(req, res) {
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'bridge-db',
  });

  try {
    if (req.method === 'GET') {
      const { id } = req.query; // Get the ID from the query parameters

      if (id) {
        const [rows] = await connection.execute('SELECT * FROM services WHERE id = ?', [id]);
        if (rows.length > 0) {
          res.status(200).json({ data: rows[0] }); // Return the specific service
        } else {
          res.status(404).json({ message: 'Service not found' });
        }
      } else {
        const [rows] = await connection.execute('SELECT * FROM services');
        res.status(200).json({ data: rows });
      }
    } else {
      res.setHeader('Allow', ['GET']);
      res.status(405).end(`Method ${req.method} Not Allowed`);
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  } finally {
    await connection.end();
  }
}
