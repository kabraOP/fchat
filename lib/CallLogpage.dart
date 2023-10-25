// ignore: file_names
import 'package:flutter/material.dart';
import 'package:call_log/call_log.dart';

// void main() {
//   runApp(MyApp3());
// }

// class MyApp3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CallLogScreen(),
//     );
//   }
// }

class CallLogScreen extends StatefulWidget {
  @override
  _CallLogScreenState createState() => _CallLogScreenState();
}

class _CallLogScreenState extends State<CallLogScreen> {
  List<CallLogEntry> _callLogs = [];

  @override
  void initState() {
    super.initState();
    _fetchCallLogs();
  }

  Future<void> _fetchCallLogs() async {
    print("asdfgh");
    try {
      final callLogs = await CallLog.get();
      setState(() {
        _callLogs = callLogs.toList();
      });
    } catch (e) {
      print('Error fetching call logs: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Logs'),
      ),
      body: ListView.builder(
        itemCount: _callLogs.length,
        itemBuilder: (context, index) {
          final callLog = _callLogs[index];
          return ListTile(
            title: Text(callLog.name?.isNotEmpty ?? false
                ? callLog.name.toString()
                : 'Unknown'),
            subtitle: Text(callLog.number.toString()),
            trailing: Text(callLog.callType == CallType.incoming
                ? 'Incoming'
                : callLog.callType == CallType.outgoing
                    ? 'Outgoing'
                    : 'Missed'),
          );
        },
      ),
    );
  }
}
