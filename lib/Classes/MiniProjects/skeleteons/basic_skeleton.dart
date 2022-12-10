import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/skeleteons/helper/network/api_manager.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/skeleteons/models/dummy_json.dart';
import 'package:skeletons/skeletons.dart';

class BasicSkeleton extends StatefulWidget {
  const BasicSkeleton({Key? key}) : super(key: key);

  @override
  State<BasicSkeleton> createState() => _BasicSkeletonState();
}

class _BasicSkeletonState extends State<BasicSkeleton> {
  late final ApiManager _apiManager;
  late List<DummyJson> _dummyJson;
  bool _isLoading = true;

  @override
  void initState() {
    _setApiSettings();
    super.initState();
    setState(() => _isLoading = false);
  }

  void _setApiSettings() async {
    _apiManager = ApiManager();
    _dummyJson = await _apiManager.fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Skeleton Basic')),
      body: ListView.builder(itemBuilder: (context, index) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 6,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 2,
                child: SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                    height: 75,
                    width: 75,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonLine(
                      style: SkeletonLineStyle(
                        padding: const EdgeInsets.only(
                          top: 16,
                          bottom: 8,
                          right: 8,
                          left: 8,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        randomLength: true,
                      ),
                    ),
                    const SkeletonLine(
                      style: SkeletonLineStyle(
                        padding: EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          right: 16,
                          left: 8,
                        ),
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// ListView.builder(
//               itemCount: _dummyJson.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Center(child: Text(_dummyJson[index].title)),
//                 );
//               }),
