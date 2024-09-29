import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/color.dart';

const OutlineInputBorder ENABLED_BORDER = OutlineInputBorder(
  borderSide: BorderSide(width: 1, color: ENABLED_BORDER_COLOR),
);
const OutlineInputBorder FOCUSED_BORDER = OutlineInputBorder(
  borderSide: BorderSide(width: 1, color: FOCUSED_BORDER_COLOR),
);
const OutlineInputBorder ERROR_BORDER = OutlineInputBorder(
  borderSide: BorderSide(width: 1, color: ERROR_BORDER_COLOR),
);
const OutlineInputBorder FOCUSED_ERROR_BORDER = OutlineInputBorder(
  borderSide: BorderSide(width: 1, color: FOCUSED_ERROR_BORDER_COLOR),
);

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({
    super.key,
    this.label,
    this.validationText,
    this.controller,
    this.suffixIconButton,
    this.prefixIcon,
    this.prefixIconColor,
    required this.obscureText,
    this.focusNode,
    this.fillColor,
  });

  final String? label;
  final String? validationText;
  final TextEditingController? controller;
  final IconButton? suffixIconButton;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final bool obscureText;
  final FocusNode? focusNode;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: fillColor != null,
        suffixIcon: suffixIconButton,
        hintText: label,
        contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        enabledBorder: ENABLED_BORDER,
        focusedBorder: FOCUSED_BORDER,
        errorBorder: ERROR_BORDER,
        focusedErrorBorder: FOCUSED_ERROR_BORDER,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validationText;
        } else {
          return null;
        }
      },
    );
  }
}

class SignUpTextFormField extends StatelessWidget {
  const SignUpTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.validationText,
    this.validator,
  });
  final TextEditingController controller;
  final String label;
  final String? validationText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: PRIMARY_COLOR),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 10,
        ),
        suffixIcon: InkWell(
          onTap: () {
            controller.clear();
          },
          child: const Icon(
            Icons.close,
            color: Colors.grey,
          ),
        ),
      ),
      validator: validator ??
          (value) {
            if (value!.isEmpty) {
              return validationText;
            } else {
              return null;
            }
          },
    );
  }
}

class PrimaryTextFormField extends StatelessWidget {
  const PrimaryTextFormField({
    super.key,
    this.controller,
    this.label,
    this.validationText,
  });
  final String? label;

  final TextEditingController? controller;
  final String? validationText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label ?? ''),
        enabledBorder: ENABLED_BORDER,
        focusedBorder: FOCUSED_BORDER,
        errorBorder: ERROR_BORDER,
        focusedErrorBorder: FOCUSED_ERROR_BORDER,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validationText;
        } else {
          return null;
        }
      },
    );
  }
}

class AboutTextFormField extends StatelessWidget {
  const AboutTextFormField({
    super.key,
    this.controller,
    this.label,
    this.validationText,
  });
  final String? label;

  final TextEditingController? controller;
  final String? validationText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? '',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 10),
            hintText: label,
            enabledBorder: ENABLED_BORDER,
            focusedBorder: FOCUSED_BORDER,
            errorBorder: ERROR_BORDER,
            focusedErrorBorder: FOCUSED_ERROR_BORDER,
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return validationText;
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}

class ClickableTextFormField extends StatelessWidget {
  const ClickableTextFormField(
      {super.key,
      this.label,
      this.validationText,
      this.controller,
      this.suffixIcon,
      this.suffixIconColor,
      this.maxLines,
      this.hints,
      this.onTap,
      this.inputFormatters});
  final String? label;
  final String? validationText;
  final String? hints;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final int? maxLines;

  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      onTap: onTap,
      canRequestFocus: false,
      inputFormatters: inputFormatters,
      magnifierConfiguration: const TextMagnifierConfiguration(),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hints,
        prefixIcon: Icon(
          suffixIcon,
          color: suffixIconColor,
        ),
        label: Text(label ?? ''),
        // contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        enabledBorder: ENABLED_BORDER,
        focusedBorder: FOCUSED_BORDER,
        errorBorder: ERROR_BORDER,
        focusedErrorBorder: FOCUSED_ERROR_BORDER,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validationText;
        } else {
          return null;
        }
      },
    );
  }
}

class AboutClickableTextFormField extends StatelessWidget {
  const AboutClickableTextFormField({
    super.key,
    this.label,
    this.validationText,
    this.controller,
    this.prefixIcon,
    this.prefixColor,
    this.hintText,
    this.onTap,
  });
  final String? label;
  final String? hintText;
  final String? validationText;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final Color? prefixColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? '',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          onTap: onTap,
          canRequestFocus: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText ?? '',
            prefixIcon: Icon(
              prefixIcon,
              color: prefixColor,
            ),
            contentPadding: const EdgeInsets.only(left: 10),
            enabledBorder: ENABLED_BORDER,
            focusedBorder: FOCUSED_BORDER,
            errorBorder: ERROR_BORDER,
            focusedErrorBorder: FOCUSED_ERROR_BORDER,
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return validationText;
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
