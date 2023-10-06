import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key, this.title, this.content});
  final String? title;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          width: 331,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xfff4f4f4),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Expanded(
                  flex: 3,
                  child: Text(
                    title!,
                    style: TextStyle(
                      color: Color(0xFF0084FF),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0.15,
                      letterSpacing: 0.04,
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerRight,
                  child: Opacity(
                    opacity: 0.40,
                    child: Expanded(
                      child: Text(
                        content!,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF001A4C),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0.15,
                          letterSpacing: 0.04,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}
