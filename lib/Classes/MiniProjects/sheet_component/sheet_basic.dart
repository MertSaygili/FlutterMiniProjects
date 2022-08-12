import 'package:flutter/material.dart';

class SheetBasic extends StatefulWidget {
  const SheetBasic({Key? key}) : super(key: key);

  @override
  State<SheetBasic> createState() => _SheetBasicState();
}

class _SheetBasicState extends State<SheetBasic> with TickerProviderStateMixin {
  Color _backgrounColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgrounColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              transitionAnimationController: AnimationController(
                vsync: this,
                duration: const Duration(milliseconds: 400),
                reverseDuration: const Duration(milliseconds: 500),
                // debugLabel: 'sadsa', ne ise yariyor bilmiyorum
                animationBehavior: AnimationBehavior.normal,
              ),
              elevation: 999, // arka tarafi iyice sakliyor
              // clipBehavior: Clip.hardEdge,  ne ise yariyor anlamadim
// isScrollControlled -> sheetin sizeni max yapar ve kontrol etmeyi kolaylastirir,
              isScrollControlled: true,
              isDismissible: true, // arka tarafa tiklayinca kapamayi kapiyor
              enableDrag: true, // asagi yukari hareketi saglamak icin
              builder: (context) {
                return const _CustomSheetState();
              });

          if (result is bool) {
            setState(() {
              _backgrounColor = Colors.amber;
            });
          }
        },
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}

class _CustomSheetState extends StatefulWidget {
  const _CustomSheetState({
    Key? key,
  }) : super(key: key);

  @override
  State<_CustomSheetState> createState() => _CustomSheetStateState();
}

class _CustomSheetStateState extends State<_CustomSheetState> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: SizedBox(
        // height ozelligi ile sheetin yuksekligi ayarlanabilir
        // height: MediaQuery.of(context).size.height * 0.60,
        child: Column(
          // sadece verilen alan kadar yer kullanir
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Resim asagidadir'),
            Image.network("https://picsum.photos/200"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop<bool>(true);
                setState(() {});
              },
              child: ListTile(
                title: const Center(child: Text('Change bg color')),
                trailing: Icon(
                  Icons.change_history,
                  color: _color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
