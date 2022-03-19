import './components.dart';

class Input extends StatefulWidget {
  final Key? key;
  final String? errorText;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final InputBorder? inputBorder;
  final bool? filled;
  final Color? fillColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool readOnly;
  final GestureTapCallback? onTap;
  final FocusNode? focusNodeOf;
  final FocusNode? focusNodeFor;
  final Function(String)? functionSubmit;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxLines;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  Input({
    this.key,
    this.errorText,
    this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.obscureText = false,
    this.onTap,
    this.readOnly = false,
    this.focusNodeOf,
    this.focusNodeFor,
    this.functionSubmit,
    this.inputAction = TextInputAction.done,
    this.inputFormatters,
    this.maxLength,
    this.controller,
    this.validator,
    this.inputBorder,
    this.filled,
    this.fillColor,
    this.maxLines = 1,
  });

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  late bool _isLook;

  @override
  void initState() {
    super.initState();

    _isLook = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: true,
      key: widget.key,
      controller: widget.controller,
      focusNode: widget.focusNodeOf,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText ? _isLook : widget.obscureText,
      decoration: InputDecoration(
        filled: widget.filled,
        fillColor: widget.fillColor,
        border: widget.inputBorder,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        errorText: widget.errorText,
        suffixIcon: !widget.obscureText
            ? widget.suffixIcon
            : IconButton(
                onPressed: () => setState(() {
                  _isLook = !_isLook;
                }),
                icon: Icon(_isLook ? Icons.lock : Icons.lock_open),
                splashRadius: 20.0,
              ),
      ),
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      readOnly: widget.readOnly,
      textInputAction: widget.inputAction,
      onFieldSubmitted: widget.functionSubmit != null
          ? widget.functionSubmit
          : (value) {
              FocusScope.of(context).requestFocus(widget.focusNodeFor);
            },
      inputFormatters: widget.inputFormatters,
      maxLength: widget.maxLength,
      validator: widget.validator,
      maxLines: widget.maxLines,
    );
  }
}
