import 'package:flutter/material.dart';

class DatePickerField extends FormField<DateTime> {
  DatePickerField({
    Key? key,
    required String label,
    required IconData prefixIcon,
    FormFieldSetter<DateTime>? onSaved,
    FormFieldValidator<DateTime>? validator,
    ValueChanged<DateTime>? onChanged,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          builder: (FormFieldState<DateTime> state) {
            return _DatePickerFieldContent(
              label: label,
              prefixIcon: prefixIcon,
              selectedDate: state.value,
              errorText: state.errorText,
              onDateSelected: (date) {
                state.didChange(date);
                if (onChanged != null) {
                  onChanged(date);
                }
              },
            );
          },
        );
}

class _DatePickerFieldContent extends StatefulWidget {
  final String label;
  final IconData prefixIcon;
  final DateTime? selectedDate;
  final String? errorText;
  final Function(DateTime) onDateSelected;

  const _DatePickerFieldContent({
    Key? key,
    required this.label,
    required this.prefixIcon,
    required this.selectedDate,
    required this.errorText,
    required this.onDateSelected,
  }) : super(key: key);

  @override
  State<_DatePickerFieldContent> createState() =>
      _DatePickerFieldContentState();
}

class _DatePickerFieldContentState extends State<_DatePickerFieldContent> {
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.selectedDate;
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });

      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => _selectDate(context),
          child: AbsorbPointer(
            child: TextField(
              decoration: InputDecoration(
                labelText: widget.label,
                prefixIcon: Icon(widget.prefixIcon),
                suffixIcon: const Icon(Icons.calendar_today),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.errorText == null ? Colors.grey : Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.errorText == null ? Colors.grey : Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.errorText == null ? Colors.blue : Colors.red,
                    width: 2,
                  ),
                ),
                errorText: widget.errorText,
              ),
              controller: TextEditingController(
                text: selectedDate != null
                    ? '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}'
                    : '',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
