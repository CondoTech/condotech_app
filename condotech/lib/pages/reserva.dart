import 'package:condotech/util/color.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ReservationListPage extends StatefulWidget {
  const ReservationListPage({Key? key}) : super(key: key);

  @override
  _ReservationListPageState createState() => _ReservationListPageState();
}

class _ReservationListPageState extends State<ReservationListPage> {
  List<Reservation> reservations = [
    Reservation(
      date: DateTime(2024, 6, 25, 10, 30),
      details: 'Reunião de Condomínio',
    ),
    Reservation(
      date: DateTime(2024, 6, 26, 14, 0),
      details: 'Visita Técnica',
    ),
    Reservation(
      date: DateTime(2024, 6, 27, 16, 15),
      details: 'Limpeza Geral',
    ),
    Reservation(
      date: DateTime(2024, 6, 28, 9, 0),
      details: 'Entrega de Correspondência',
    ),
  ];

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Paleta.azulEscuro,
        toolbarHeight: 75,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.question_mark),
            color: Paleta.bgColor,
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              '/home', (Route<dynamic> route) => false),
          icon: const Icon(Icons.arrow_back),
          color: Paleta.bgColor,
        ),
        title: const Text(
          'Reserva',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                _selectedTime =
                    null; // Reset selected time when a new day is selected
              });
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
              });
            },
          ),
          if (_selectedDay != null)
            ElevatedButton(
              onPressed: () => _showTimePickerModal(context),
              child: Text(
                _selectedTime != null
                    ? 'Hora Selecionada: ${_selectedTime!.format(context)}'
                    : 'Selecionar Hora',
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: reservations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.event),
                  title: Text(
                    'Reserva para ${reservations[index].details}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle:
                      Text('Data: ${reservations[index].date.toString()}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        reservations.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implementar ação para adicionar nova reserva
          // Exemplo: Navigator.pushNamed(context, '/add-reservation');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Ação para adicionar nova reserva'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showTimePickerModal(BuildContext context) async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );

    if (selectedTime != null) {
      setState(() {
        _selectedTime = selectedTime;
        _addReservation(_selectedDay!, _selectedTime!);
      });
    }
  }

  void _addReservation(DateTime selectedDay, TimeOfDay selectedTime) {
    setState(() {
      reservations.add(
        Reservation(
          date: DateTime(
            selectedDay.year,
            selectedDay.month,
            selectedDay.day,
            selectedTime.hour,
            selectedTime.minute,
          ),
          details: 'Nova Reserva',
        ),
      );
    });
  }
}

class Reservation {
  final DateTime date;
  final String details;

  Reservation({required this.date, required this.details});
}
