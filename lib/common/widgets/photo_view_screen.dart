import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class InfoImage extends StatefulWidget {
  final String? imageView;
  const InfoImage({Key? key, this.imageView}) : super(key: key);

  @override
  _InfoImageState createState() => _InfoImageState();
}

class _InfoImageState extends State<InfoImage> {
  PageController? controller;
  int? indexSelected;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Stack(
          children: <Widget>[
            Container(
                color: Colors.black,
                child: PhotoView(
                  imageProvider: NetworkImage(
                      widget.imageView!),
                  loadingBuilder: (context, progress) => Center(
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  backgroundDecoration: BoxDecoration(color: Colors.black),
                  gaplessPlayback: false,
                  customSize: MediaQuery.of(context).size,
                )),
            Positioned(
              top: 10,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(top: 30, right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Icon(
                      Icons.clear,
                      color: Colors.grey,
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
