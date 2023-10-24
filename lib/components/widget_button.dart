import 'package:flutter/material.dart';

class SahaButtonFullParent extends StatelessWidget {
  final Function? onPressed;
  final String? text;
  final Color? textColor;
  final Color? color;
  final Color? colorBorder;
  final EdgeInsetsGeometry? padding;

  const SahaButtonFullParent(
      {Key? key,
      this.onPressed,
      this.text,
      this.textColor,
      this.color,
      this.colorBorder,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding:
          padding != null ? padding! : EdgeInsets.only(left: 25, right: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            side: colorBorder == null
                ? BorderSide(width: 0, color: Colors.transparent)
                : BorderSide(
                    width: 1.0,
                    color: colorBorder!,
                  ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPressed as void Function()?,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 3, bottom: 3),
                  child: Text(
                    "$text",
                    style: TextStyle(
                        color: textColor ??
                            Theme.of(context)
                                .primaryTextTheme
                                .headline6!
                                .color),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SahaButtonSizeChild extends StatelessWidget {
  final Function? onPressed;
  final String? text;
  final Color? textColor;
  final Color? color;
  final double? width;
  final double? height;

  const SahaButtonSizeChild(
      {Key? key,
      this.onPressed,
      this.text,
      this.textColor,
      this.color,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: MaterialButton(
        minWidth: width,
        height: height,
        padding: EdgeInsets.only(top: 15, bottom: 15),
        color: onPressed == null
            ? Colors.grey
            : (color ?? Theme.of(context).primaryColor),
        onPressed: () {
          onPressed!();
        },
        child: Text(
          "$text",
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final double? height;
  final Function? onPressed;
  final String? content;
  final TextStyle? contentStyle;
  final Color? color;
  final Color? colorBorder;
  final double? radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? contentpadding;

  const ButtonWidget(
      {Key? key,
      this.height,
      this.onPressed,
      this.content,
      this.contentStyle,
      this.color,
      this.colorBorder,
      this.radius,
      this.contentpadding,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding:
          padding ?? EdgeInsets.only(left: 0, right: 0),
      child: InkWell(
        onTap: onPressed as void Function()?,
        child: Container(
          height: height,
          padding: contentpadding ??
              EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
          decoration: BoxDecoration(
              border: Border.all(
                  color: colorBorder ?? const Color.fromARGB(255, 211, 91, 82)),
              borderRadius: BorderRadius.circular(radius ?? 0),
              color: color),
          child: Center(
            child: Text(
              "$content",
              style: contentStyle ??
                  TextStyle(
                      color:
                          Theme.of(context).primaryTextTheme.headline6!.color),
            ),
          ),
        ),
      ),
    );
  }
}
