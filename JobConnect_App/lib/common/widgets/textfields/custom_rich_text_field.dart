import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class CustomRichTextField extends StatefulWidget {
  const CustomRichTextField({
    super.key,
    required this.hintText,
    this.maxCharacters = 500,
    this.maxLines = 4,
    this.controller,
    this.onChanged,
  });

  final String hintText;
  final int maxCharacters;
  final int maxLines;
  final TextEditingController? controller;
  final Function(int)? onChanged;

  @override
  State<CustomRichTextField> createState() => _CustomRichTextFieldState();
}

class _CustomRichTextFieldState extends State<CustomRichTextField> {
  late TextEditingController _controller;
  int _charCount = 0;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(_updateCharCount);
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    } else {
      _controller.removeListener(_updateCharCount);
    }
    super.dispose();
  }

  void _updateCharCount() {
    setState(() {
      _charCount = _controller.text.length;
    });
    widget.onChanged?.call(_charCount);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _controller,
          maxLines: widget.maxLines,
          inputFormatters: [
            LengthLimitingTextInputFormatter(widget.maxCharacters),
          ],
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: UColors.gray,
                  fontFamily: 'Arimo',
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
              borderSide: const BorderSide(
                color: UColors.lightGray,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
              borderSide: const BorderSide(
                color: UColors.lightGray,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
              borderSide: const BorderSide(
                color: UColors.primaryColor,
                width: 1.5,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: USizes.md,
              vertical: USizes.sm,
            ),
          ),
        ),
        const SizedBox(height: USizes.xs),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '$_charCount/${widget.maxCharacters}',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: UColors.gray,
                  fontFamily: 'Arimo',
                ),
          ),
        ),
      ],
    );
  }
}

