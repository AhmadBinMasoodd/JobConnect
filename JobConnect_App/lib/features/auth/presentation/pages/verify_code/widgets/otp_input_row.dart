import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../core/constant/colors.dart';

class OtpInputRow extends StatelessWidget {
  const OtpInputRow({
    super.key,
    this.length = 6,
    this.totalWidth = 236,
    this.boxHeight = 50,
  });

  final int length;
  final double totalWidth;
  final double boxHeight;

  Widget _digitField(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1),
      ],
      onChanged: (value) {
        if (value.isNotEmpty) {
          FocusScope.of(context).nextFocus();
        } else {
          FocusScope.of(context).previousFocus();
        }
      },
      decoration: const InputDecoration(
        isDense: true,
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: totalWidth,
      height: boxHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: UColors.lightGray),
        ),
        child: Row(
          children: List.generate(length, (index) {
            return Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Center(child: _digitField(context)),
                  ),
                  if (index != length - 1)
                    const SizedBox(
                      height: double.infinity,
                      child: VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: UColors.lightGray,
                      ),
                    ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
