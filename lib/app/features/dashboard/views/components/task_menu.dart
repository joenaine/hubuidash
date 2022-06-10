part of dashboard;

class TaskMenu extends StatelessWidget {
  const TaskMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, String label) onSelected;

  @override
  Widget build(BuildContext context) {
    return SimpleSelectionButton(
      data: const [
        "My Business",
        "Customers",
        "Activities",
        "Social",
        "Messages",
      ],
      onSelected: onSelected,
    );
  }
}
