import 'package:flutter/material.dart';
import 'package:fyp_twentyfive/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:learning_pose_detection/learning_pose_detection.dart';
import 'package:learning_input_image/learning_input_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => PoseDetectionState(),
        child: PoseDetectionPage(),
        // body: Center(
        //   child: Text('$user'),
        // ),
      ),
    );
  }
}

class PoseDetectionPage extends StatefulWidget {
  @override
  _PoseDetectionPageState createState() => _PoseDetectionPageState();
}

class _PoseDetectionPageState extends State<PoseDetectionPage> {
  PoseDetectionState get state => Provider.of(context, listen: false);
  PoseDetector _detector = PoseDetector(isStream: false);

  @override
  void dispose() {
    _detector.dispose();
    super.dispose();
  }

  Future<void> _detectPose(InputImage image) async {
    if (state.isNotProcessing) {
      state.startProcessing();
      state.image = image;
      state.data = await _detector.detect(image);
      state.stopProcessing();
      // print(state.data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InputCameraView(
      cameraDefault: InputCameraType.rear,
      title: 'Pose Detection',
      onImage: _detectPose,
      // resolutionPreset: ResolutionPreset.high,
      overlay: Consumer<PoseDetectionState>(
        builder: (_, state, __) {
          if (state.isEmpty) {
            return Container();
          }

          Size originalSize = state.size!;
          Size size = MediaQuery.of(context).size;

          // if image source from gallery
          // image display size is scaled to 360x360 with retaining aspect ratio
          if (state.notFromLive) {
            if (originalSize.aspectRatio > 1) {
              size = Size(1280.0, 720.0 / originalSize.aspectRatio);
            } else {
              size = Size(1280.0 * originalSize.aspectRatio, 720.0);
            }
          }

          return PoseOverlay(
            size: size,
            originalSize: originalSize,
            rotation: state.rotation,
            pose: state.data!,
          );
        },
      ),
    );
  }
}

class PoseDetectionState extends ChangeNotifier {
  InputImage? _image;
  Pose? _data;
  bool _isProcessing = false;

  InputImage? get image => _image;
  Pose? get data => _data;

  String? get type => _image?.type;
  InputImageRotation? get rotation => _image?.metadata?.rotation;
  Size? get size => _image?.metadata?.size;

  bool get isNotProcessing => !_isProcessing;
  bool get isEmpty => _data == null;
  bool get isFromLive => type == 'bytes';
  bool get notFromLive => !isFromLive;

  void startProcessing() {
    _isProcessing = true;
    notifyListeners();
  }

  void stopProcessing() {
    _isProcessing = false;
    notifyListeners();
  }

  set image(InputImage? image) {
    _image = image;

    if (notFromLive) {
      _data = null;
    }
    notifyListeners();
  }

  set data(Pose? data) {
    _data = data;
    notifyListeners();
  }
}
