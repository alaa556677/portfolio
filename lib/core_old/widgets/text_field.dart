import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../styles/colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.prefix,
    this.hintText,
    this.textInputType,
    this.height,
    this.suffix,
    this.color,
    this.controller,
    this.borderRadius,
    this.onSubmitted,
    this.onTap,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.helperText,
    this.hintColor,
    this.filledColor,
    this.hintTextSize,
    this.fontSize,
    this.border,
    this.maxLines,
    this.minLines,
    this.readOnly,
    this.inputFormatters,
  });
  final double? height;
  final IconData? prefix;
  final Widget? suffix;
  final TextInputType? textInputType;
  final String? hintText;
  final Color? color;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  final Function()? onTap;
  final Function(String value)? onChanged;
  final double? borderRadius;
  final bool obscureText;
  final dynamic validator;
  final String? helperText;
  final Color? hintColor;
  final Color? filledColor;
  final double? hintTextSize;
  final double? fontSize;
  final InputBorder? border;
  final int? maxLines;
  final int? minLines;
  final bool? readOnly;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  double? width;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      inputFormatters:widget.inputFormatters,
      readOnly: widget.readOnly ?? false,
      onChanged:(value)=> widget.onChanged?.call(value),
      validator: widget.validator,
      onFieldSubmitted: widget.onSubmitted,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      obscureText: widget.obscureText,
      maxLines: widget.maxLines,
      minLines: widget.minLines ,
      style: TextStyle(color: widget.hintColor ?? AppColors.textSecondaryColor(context), fontSize:widget.fontSize),
      decoration: InputDecoration(
        suffixIcon: widget.suffix,
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Icon(widget.prefix, color: AppColors.textSecondaryColor(context), size: 20),
        ),
        isDense: true,
        // filled: true,
        fillColor: widget.filledColor,
        contentPadding: EdgeInsetsDirectional.only(end: 12),
        labelText: '${widget.hintText}',
        labelStyle: TextStyle(fontSize:widget.hintTextSize?? 12, color:widget.hintColor ?? AppColors.textSecondaryColor(context)),
        border:  widget.border ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
          borderSide: BorderSide( color: AppColors.textSecondaryColor(context), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
          borderSide: BorderSide(
              color: AppColors.textSecondaryColor(context),
              width: 2
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
          borderSide: BorderSide(
              color: AppColors.textSecondaryColor(context),
              width: 2
          ),
        ),
        errorStyle: TextStyle(fontSize: 12),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              width: 2,
              color: AppColors.errorBorder,
            )),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
          borderSide: BorderSide(
            width: 2,
            color: AppColors.textSecondaryColor(context)
          ),
        ),
      ),
    );
  }
}