import 'package:flutter/material.dart';
import 'deskripsi_tugas.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<Map<String, dynamic>> tasks = [
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/task/task-1.jpg',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/task/task-1.jpg',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/task/task-1.jpg',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/task/task-1.jpg',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/task/task-1.jpg',
    },
    {
      'title': 'Bersihkan ruangan RT05',
      'description':
          'Rapikan dan bersihkan ruangan, dan pastikan tidak ada sampah tertinggal',
      'lecturer': 'Nama Dosen',
      'time': '20 Jam',
      'due': 'DL : 5 hari',
      'image': 'assets/task/task-1.jpg',
    },
  ];

  void _showFilterDialog() {
    showDialog(
      context: context,
      barrierColor: Colors.black54,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Filter Berdasarkan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF4B367C),
                  ),
                ),
                SizedBox(height: 10),
                Text('Berdasarkan Status'),
                SizedBox(height: 5),
                Text('Berdasarkan Bobot Jam/Poin: Dari Kecil - Besar'),
                SizedBox(height: 5),
                Text('Berdasarkan Bobot Jam/Poin: Dari Besar - Kecil'),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Tutup'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 6, 127),
        title: Text(
          'DAFTAR TUGAS',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 42, 6, 127),
                  Colors.white,
                ],
                stops: [0.5, 0.5],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 89, 58, 132),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.filter_list,
                            size: 30,
                            color: Colors.black,
                          ),
                          onPressed: _showFilterDialog,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari...',
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TaskDetailScreen(),
                              ),
                            );
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      tasks[index]['image'],
                                      height: 70,
                                      width: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          tasks[index]['title'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          tasks[index]['description'],
                                          style: TextStyle(fontSize: 12),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              tasks[index]['lecturer'],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              tasks[index]['time'],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              tasks[index]['due'],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskDetailPage extends StatelessWidget {
  final Map<String, dynamic> task;

  TaskDetailPage({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task['title']),
        backgroundColor: Color.fromARGB(255, 42, 6, 127),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(task['image']),
            SizedBox(height: 16),
            Text(
              task['title'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Dosen: ${task['lecturer']}'),
            SizedBox(height: 8),
            Text('Waktu: ${task['time']}'),
            SizedBox(height: 8),
            Text('Deadline: ${task['due']}'),
            SizedBox(height: 16),
            Text(
              task['description'],
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
