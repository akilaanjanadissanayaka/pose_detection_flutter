import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learning_input_image/learning_input_image.dart';

import 'pose.dart';

class PosePainter extends CustomPainter {
  final Pose pose;
  final Size imageSize;
  final InputImageRotation rotation;

  PosePainter({
    required this.pose,
    required this.imageSize,
    this.rotation = InputImageRotation.ROTATION_0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final dotPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    pose.landmarks.forEach((key, landmark) {
      canvas.drawCircle(transform(landmark.position, size), 1, dotPaint);
    });

    PoseLandmark? leftShoulder = pose.landmark(PoseLandmarkType.LEFT_SHOULDER);
    PoseLandmark? rightShoulder =
        pose.landmark(PoseLandmarkType.RIGHT_SHOULDER);
    PoseLandmark? leftElbow = pose.landmark(PoseLandmarkType.LEFT_ELBOW);
    PoseLandmark? rightElbow = pose.landmark(PoseLandmarkType.RIGHT_ELBOW);
    PoseLandmark? leftWrist = pose.landmark(PoseLandmarkType.LEFT_WRIST);
    PoseLandmark? rightWrist = pose.landmark(PoseLandmarkType.RIGHT_WRIST);
    PoseLandmark? leftHip = pose.landmark(PoseLandmarkType.LEFT_HIP);
    PoseLandmark? rightHip = pose.landmark(PoseLandmarkType.RIGHT_HIP);
    PoseLandmark? leftKnee = pose.landmark(PoseLandmarkType.LEFT_KNEE);
    PoseLandmark? rightKnee = pose.landmark(PoseLandmarkType.RIGHT_KNEE);
    PoseLandmark? leftAnkle = pose.landmark(PoseLandmarkType.LEFT_ANKLE);
    PoseLandmark? rightAnkle = pose.landmark(PoseLandmarkType.RIGHT_ANKLE);
    PoseLandmark? leftHeel = pose.landmark(PoseLandmarkType.LEFT_HEEL);
    PoseLandmark? rightHeel = pose.landmark(PoseLandmarkType.RIGHT_HEEL);
    PoseLandmark? leftFootIndex =
        pose.landmark(PoseLandmarkType.LEFT_FOOT_INDEX);
    PoseLandmark? rightFootIndex =
        pose.landmark(PoseLandmarkType.RIGHT_FOOT_INDEX);
    PoseLandmark? leftPinky = pose.landmark(PoseLandmarkType.LEFT_PINKY);
    PoseLandmark? rightPinky = pose.landmark(PoseLandmarkType.RIGHT_PINKY);
    PoseLandmark? leftIndex = pose.landmark(PoseLandmarkType.LEFT_INDEX);
    PoseLandmark? rightIndex = pose.landmark(PoseLandmarkType.RIGHT_INDEX);
    PoseLandmark? leftThumb = pose.landmark(PoseLandmarkType.LEFT_THUMB);
    PoseLandmark? rightThumb = pose.landmark(PoseLandmarkType.RIGHT_THUMB);

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.white.withOpacity(0.75);

    // final paint2 = Paint()
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 2
    //   ..color = Colors.red.withOpacity(0.75);

    //Draw arms
    if (leftElbow != null && leftWrist != null) {
      canvas.drawLine(transform(leftElbow.position, size),
          transform(leftWrist.position, size), paint);
    }

    if (leftElbow != null && leftShoulder != null) {
      canvas.drawLine(transform(leftElbow.position, size),
          transform(leftShoulder.position, size), paint);
    }

    if (rightElbow != null && rightWrist != null) {
      canvas.drawLine(transform(rightElbow.position, size),
          transform(rightWrist.position, size), paint);
    }

    if (rightElbow != null && rightShoulder != null) {
      canvas.drawLine(transform(rightElbow.position, size),
          transform(rightShoulder.position, size), paint);
    }

    // Draw Hand
    if (leftWrist != null && leftThumb != null) {
      canvas.drawLine(transform(leftWrist.position, size),
          transform(leftThumb.position, size), paint);
    }

    if (leftWrist != null && leftIndex != null) {
      canvas.drawLine(transform(leftWrist.position, size),
          transform(leftIndex.position, size), paint);
    }

    if (leftWrist != null && leftPinky != null) {
      canvas.drawLine(transform(leftWrist.position, size),
          transform(leftPinky.position, size), paint);
    }

    if (rightWrist != null && rightThumb != null) {
      canvas.drawLine(transform(rightWrist.position, size),
          transform(rightThumb.position, size), paint);
    }

    if (rightWrist != null && rightIndex != null) {
      canvas.drawLine(transform(rightWrist.position, size),
          transform(rightIndex.position, size), paint);
    }

    if (rightWrist != null && rightPinky != null) {
      canvas.drawLine(transform(rightWrist.position, size),
          transform(rightPinky.position, size), paint);
    }

    //Draw legs
    if (leftHip != null && leftKnee != null) {
      canvas.drawLine(transform(leftHip.position, size),
          transform(leftKnee.position, size), paint);
    }
    if (leftKnee != null && leftAnkle != null) {
      canvas.drawLine(transform(leftKnee.position, size),
          transform(leftAnkle.position, size), paint);
    }
    if (leftAnkle != null && leftHeel != null) {
      canvas.drawLine(transform(leftAnkle.position, size),
          transform(leftHeel.position, size), paint);
    }
    if (leftHeel != null && leftFootIndex != null) {
      canvas.drawLine(transform(leftHeel.position, size),
          transform(leftFootIndex.position, size), paint);
    }

    if (rightHip != null && rightKnee != null) {
      canvas.drawLine(transform(rightHip.position, size),
          transform(rightKnee.position, size), paint);
    }
    if (rightKnee != null && rightAnkle != null) {
      canvas.drawLine(transform(rightKnee.position, size),
          transform(rightAnkle.position, size), paint);
    }
    if (rightAnkle != null && rightHeel != null) {
      canvas.drawLine(transform(rightAnkle.position, size),
          transform(rightHeel.position, size), paint);
    }
    if (rightHeel != null && rightFootIndex != null) {
      canvas.drawLine(transform(rightHeel.position, size),
          transform(rightFootIndex.position, size), paint);
    }

    //Draw body
    if (leftHip != null && leftShoulder != null) {
      canvas.drawLine(transform(leftHip.position, size),
          transform(leftShoulder.position, size), paint);
    }
    if (rightHip != null && rightShoulder != null) {
      canvas.drawLine(transform(rightHip.position, size),
          transform(rightShoulder.position, size), paint);
    }

    if (leftKnee != null && rightKnee != null) {}

    checkPossision(canvas, size);
  }

  void checkPossision(Canvas canvas, Size size) {
    PoseLandmark? leftShoulder = pose.landmark(PoseLandmarkType.LEFT_SHOULDER);
    PoseLandmark? rightShoulder =
        pose.landmark(PoseLandmarkType.RIGHT_SHOULDER);

    PoseLandmark? leftElbow = pose.landmark(PoseLandmarkType.LEFT_ELBOW);
    PoseLandmark? rightElbow = pose.landmark(PoseLandmarkType.RIGHT_ELBOW);

    PoseLandmark? leftWrist = pose.landmark(PoseLandmarkType.LEFT_WRIST);
    PoseLandmark? rightWrist = pose.landmark(PoseLandmarkType.RIGHT_WRIST);

    PoseLandmark? righthip = pose.landmark(PoseLandmarkType.RIGHT_HIP);
    PoseLandmark? rightKnee = pose.landmark(PoseLandmarkType.RIGHT_KNEE);

    if (leftShoulder != null &&
        rightShoulder != null &&
        leftWrist != null &&
        rightWrist != null &&
        righthip != null &&
        rightKnee != null) {
      print("################################################################");
      print("leftShouldere: " +
          transformY(leftShoulder.position.dy, size).toString());
      print("leftWrist: " + transformY(leftWrist.position.dy, size).toString());
      print("rightShoulder: " +
          transformY(rightShoulder.position.dy, size).toString());
      print(
          "rightWrist: " + transformY(rightWrist.position.dy, size).toString());
      print("righthip: " + transformX(righthip.position.dx, size).toString());
      print("rightKnee: " + transformX(rightKnee.position.dx, size).toString());

      if (((transformX(righthip.position.dx, size) + 40) <=
              transformX(rightKnee.position.dx, size)) ||
          (transformX(righthip.position.dx, size) - 40) >=
              transformX(rightKnee.position.dx, size)) {
        print("possision sitting down");
        sitting(canvas, size);
      } else if ((transformY(leftShoulder.position.dy, size) + 40) <=
              transformY(leftWrist.position.dy, size) &&
          (transformY(rightShoulder.position.dy, size) + 40) <=
              transformY(rightWrist.position.dy, size)) {
        print("possision hands down");
        handsDown(canvas, size);
      } else {
        print("possision hands up");
        handsOpen(canvas, size);
      }
      print("################################################################");
    }
  }

  void sitting(Canvas canvas, Size size) {
    PoseLandmark? leftShoulder = pose.landmark(PoseLandmarkType.LEFT_SHOULDER);
    PoseLandmark? rightShoulder =
        pose.landmark(PoseLandmarkType.RIGHT_SHOULDER);

    PoseLandmark? leftElbow = pose.landmark(PoseLandmarkType.LEFT_ELBOW);
    PoseLandmark? rightElbow = pose.landmark(PoseLandmarkType.RIGHT_ELBOW);

    PoseLandmark? leftWrist = pose.landmark(PoseLandmarkType.LEFT_WRIST);
    PoseLandmark? rightWrist = pose.landmark(PoseLandmarkType.RIGHT_WRIST);

    PoseLandmark? righthip = pose.landmark(PoseLandmarkType.RIGHT_HIP);
    PoseLandmark? rightKnee = pose.landmark(PoseLandmarkType.RIGHT_KNEE);

    final paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.red.withOpacity(0.75);

    if (righthip != null && rightShoulder != null) {
      print("################################################################");
      print("righthip: " + transformX(righthip.position.dx, size).toString());
      print("rightShoulder: " +transformX(rightShoulder.position.dx, size).toString());
      if((transformX(righthip.position.dx, size)-20)>=transformX(rightShoulder.position.dx, size)){
        print("issue in backbone backwards");
        canvas.drawLine(transform(righthip.position, size),
            transform(rightShoulder.position, size), paint2);
            
      }
      else if((transformX(righthip.position.dx, size)+20)<=transformX(rightShoulder.position.dx, size)){
        print("issue in backbone frontwards");
        canvas.drawLine(transform(righthip.position, size),
            transform(rightShoulder.position, size), paint2);
      }
      else{
        print("not issue in backboone");
      }

      print("################################################################");
    }

    return null;
  }

  void handsOpen(Canvas canvas, Size size) {
    PoseLandmark? nose = pose.landmark(PoseLandmarkType.NOSE);
    PoseLandmark? leftHip = pose.landmark(PoseLandmarkType.LEFT_HIP);
    PoseLandmark? rightHip = pose.landmark(PoseLandmarkType.RIGHT_HIP);

    PoseLandmark? leftShoulder = pose.landmark(PoseLandmarkType.LEFT_SHOULDER);
    PoseLandmark? rightShoulder =
        pose.landmark(PoseLandmarkType.RIGHT_SHOULDER);

    PoseLandmark? leftElbow = pose.landmark(PoseLandmarkType.LEFT_ELBOW);
    PoseLandmark? rightElbow = pose.landmark(PoseLandmarkType.RIGHT_ELBOW);

    PoseLandmark? leftWrist = pose.landmark(PoseLandmarkType.LEFT_WRIST);
    PoseLandmark? rightWrist = pose.landmark(PoseLandmarkType.RIGHT_WRIST);

    PoseLandmark? leftKnee = pose.landmark(PoseLandmarkType.LEFT_KNEE);
    PoseLandmark? rightKnee = pose.landmark(PoseLandmarkType.RIGHT_KNEE);

    final paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.red.withOpacity(0.75);

    if (leftKnee != null &&
        rightKnee != null &&
        leftHip != null &&
        rightHip != null) {
      print("################################################################");
      print("chacking leg issues");
      print("leftKnee: " + transformX(leftKnee.position.dx, size).toString());
      print("leftHip: " + transformX(leftHip.position.dx, size).toString());
      print("rightKnee: " + transformX(rightKnee.position.dx, size).toString());
      print("rightHip: " + transformX(rightHip.position.dx, size).toString());

      // left leg
      if ((transformX(leftHip.position.dx, size) + 10) <=
          transformX(leftKnee.position.dx, size)) {
        print("issue to angle in left knee >");
        canvas.drawLine(transform(leftHip.position, size),
            transform(leftKnee.position, size), paint2);
      } else if ((transformX(leftHip.position.dx, size) - 10) >=
          transformX(leftKnee.position.dx, size)) {
        print("issue to angle in left knee <");
        canvas.drawLine(transform(leftHip.position, size),
            transform(leftKnee.position, size), paint2);
      } else {
        print("no issue in left leg");
      }

      // right leg
      if ((transformX(rightHip.position.dx, size) + 10) <=
          transformX(rightKnee.position.dx, size)) {
        canvas.drawLine(transform(rightHip.position, size),
            transform(rightKnee.position, size), paint2);
        print("issue to angle in right knee >>");
      } else if ((transformX(rightHip.position.dx, size) - 10) >=
          transformX(rightKnee.position.dx, size)) {
        canvas.drawLine(transform(rightHip.position, size),
            transform(rightKnee.position, size), paint2);
        print("issue to angle in right knee <");
      } else {
        print("no issue in right leg");
      }
      print("################################################################");
    }

    if (nose != null &&
        leftHip != null &&
        rightHip != null &&
        leftShoulder != null &&
        rightShoulder != null) {
      print("################################################################");
      print("chack backbone");
      print("nose: " + transformX(nose.position.dx, size).toString());
      print("leftHip: " + transformX(leftHip.position.dx, size).toString());
      print("rightHip: " + transformX(rightHip.position.dx, size).toString());

      if ((transformX(rightHip.position.dx, size) + 5) >
          transformX(nose.position.dx, size)) {
        print("issue to angle in right side");
        canvas.drawLine(transform(rightHip.position, size),
            transform(rightShoulder.position, size), paint2);
      } else if ((transformX(leftHip.position.dx, size) - 5) <
          transformX(nose.position.dx, size)) {
        print("issue to angle in left side");
        canvas.drawLine(transform(leftHip.position, size),
            transform(leftShoulder.position, size), paint2);
      } else {
        print("no issue in pose");
      }
      print("################################################################");
    }

    if (leftElbow != null && leftShoulder != null && leftWrist != null) {
      print("################################################################");
      print("checking left hand");
      print("leftShouldere: " +
          transformY(leftShoulder.position.dy, size).toString());
      print("leftElbow: " + transformY(leftElbow.position.dy, size).toString());
      print("leftWrist: " + transformY(leftWrist.position.dy, size).toString());

      if ((min(transformY(leftShoulder.position.dy, size),
                  transformY(leftWrist.position.dy, size)) -
              10) >=
          transformY(leftElbow.position.dy, size)) {
        print("isssue in upwords left");
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftWrist.position, size), paint2);
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftShoulder.position, size), paint2);
      } else if ((max(transformY(leftShoulder.position.dy, size),
                  transformY(leftWrist.position.dy, size)) +
              10) <=
          transformY(leftElbow.position.dy, size)) {
        print("isssue in downwords left");
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftWrist.position, size), paint2);
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftShoulder.position, size), paint2);
      } else {
        print("not issue in left hand");
      }

      print("################################################################");
    }
    if (rightElbow != null && rightShoulder != null && rightWrist != null) {
      print("################################################################");
      print("checking right hand");
      print("rightShoulder: " +
          transformY(rightShoulder.position.dy, size).toString());
      print(
          "rightElbow: " + transformY(rightElbow.position.dy, size).toString());
      print(
          "rightWrist: " + transformY(rightWrist.position.dy, size).toString());

      if ((min(transformY(rightShoulder.position.dy, size),
                  transformY(rightWrist.position.dy, size)) -
              10) >=
          transformY(rightElbow.position.dy, size)) {
        print("isssue in upwords right");
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightWrist.position, size), paint2);
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightShoulder.position, size), paint2);
      } else if ((max(transformY(rightShoulder.position.dy, size),
                  transformY(rightWrist.position.dy, size)) +
              10) <=
          transformY(rightElbow.position.dy, size)) {
        print("isssue in downwords right");
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightWrist.position, size), paint2);
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightShoulder.position, size), paint2);
      } else {
        print("not issue in right hand");
      }
      print("################################################################");
    }
    return null;
  }

  void handsDown(Canvas canvas, Size size) {
    PoseLandmark? nose = pose.landmark(PoseLandmarkType.NOSE);
    PoseLandmark? leftHip = pose.landmark(PoseLandmarkType.LEFT_HIP);
    PoseLandmark? rightHip = pose.landmark(PoseLandmarkType.RIGHT_HIP);

    PoseLandmark? leftShoulder = pose.landmark(PoseLandmarkType.LEFT_SHOULDER);
    PoseLandmark? rightShoulder =
        pose.landmark(PoseLandmarkType.RIGHT_SHOULDER);

    PoseLandmark? leftElbow = pose.landmark(PoseLandmarkType.LEFT_ELBOW);
    PoseLandmark? rightElbow = pose.landmark(PoseLandmarkType.RIGHT_ELBOW);

    PoseLandmark? leftWrist = pose.landmark(PoseLandmarkType.LEFT_WRIST);
    PoseLandmark? rightWrist = pose.landmark(PoseLandmarkType.RIGHT_WRIST);

    PoseLandmark? leftKnee = pose.landmark(PoseLandmarkType.LEFT_KNEE);
    PoseLandmark? rightKnee = pose.landmark(PoseLandmarkType.RIGHT_KNEE);

    final paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.red.withOpacity(0.75);

    // check legs
    if (leftKnee != null &&
        rightKnee != null &&
        leftHip != null &&
        rightHip != null) {
      print("################################################################");
      print("chacking leg issues");
      print("leftKnee: " + transformX(leftKnee.position.dx, size).toString());
      print("leftHip: " + transformX(leftHip.position.dx, size).toString());
      print("rightKnee: " + transformX(rightKnee.position.dx, size).toString());
      print("rightHip: " + transformX(rightHip.position.dx, size).toString());

      // left leg
      if ((transformX(leftHip.position.dx, size) + 10) <=
          transformX(leftKnee.position.dx, size)) {
        print("issue to angle in left knee >");
        canvas.drawLine(transform(leftHip.position, size),
            transform(leftKnee.position, size), paint2);
      } else if ((transformX(leftHip.position.dx, size) - 10) >=
          transformX(leftKnee.position.dx, size)) {
        print("issue to angle in left knee <");
        canvas.drawLine(transform(leftHip.position, size),
            transform(leftKnee.position, size), paint2);
      } else {
        print("no issue in left leg");
      }

      // right leg
      if ((transformX(rightHip.position.dx, size) + 10) <=
          transformX(rightKnee.position.dx, size)) {
        canvas.drawLine(transform(rightHip.position, size),
            transform(rightKnee.position, size), paint2);
        print("issue to angle in right knee >");
      } else if ((transformX(rightHip.position.dx, size) - 10) >=
          transformX(rightKnee.position.dx, size)) {
        canvas.drawLine(transform(rightHip.position, size),
            transform(rightKnee.position, size), paint2);
        print("issue to angle in right knee <");
      } else {
        print("no issue in right leg");
      }
      print("################################################################");
    }

    // check back bone
    if (nose != null &&
        leftHip != null &&
        rightHip != null &&
        leftShoulder != null &&
        rightShoulder != null) {
      print("################################################################");
      print("chack backbone");
      print("nose: " + transformX(nose.position.dx, size).toString());
      print("leftHip: " + transformX(leftHip.position.dx, size).toString());
      print("rightHip: " + transformX(rightHip.position.dx, size).toString());

      if ((transformX(rightHip.position.dx, size) + 5) >
          transformX(nose.position.dx, size)) {
        print("issue to angle in right side");
        canvas.drawLine(transform(rightHip.position, size),
            transform(rightShoulder.position, size), paint2);
      } else if ((transformX(leftHip.position.dx, size) - 5) <
          transformX(nose.position.dx, size)) {
        print("issue to angle in left side");
        canvas.drawLine(transform(leftHip.position, size),
            transform(leftShoulder.position, size), paint2);
      } else {
        print("no issue in pose");
      }
      print("################################################################");
    }

    // check hands
    if (leftElbow != null && leftShoulder != null && leftWrist != null) {
      print("################################################################");
      print("checking left hand");
      print("leftShouldere: " +
          transformX(leftShoulder.position.dx, size).toString());
      print("leftElbow: " + transformX(leftElbow.position.dx, size).toString());
      print("leftWrist: " + transformX(leftWrist.position.dx, size).toString());

      if ((min(transformX(leftShoulder.position.dx, size),
                  transformX(leftWrist.position.dx, size)) -
              9) >
          transformX(leftElbow.position.dx, size)) {
        print("isssue in < left hand");
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftWrist.position, size), paint2);
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftShoulder.position, size), paint2);
      } else if ((max(transformX(leftShoulder.position.dx, size),
                  transformX(leftWrist.position.dx, size)) +
              9) <
          transformX(leftElbow.position.dx, size)) {
        print("isssue in > left hand");
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftWrist.position, size), paint2);
        canvas.drawLine(transform(leftElbow.position, size),
            transform(leftShoulder.position, size), paint2);
      } else {
        print("not issue in left hand");
      }

      print("################################################################");
    }
    if (rightElbow != null && rightShoulder != null && rightWrist != null) {
      print("################################################################");
      print("checking right hand");

      print("rightShoulder: " +
          transformX(rightShoulder.position.dx, size).toString());
      print(
          "rightElbow: " + transformX(rightElbow.position.dx, size).toString());
      print(
          "rightWrist: " + transformX(rightWrist.position.dx, size).toString());

      if ((min(transformX(rightShoulder.position.dx, size),
                  transformX(rightWrist.position.dx, size)) -
              9) >
          transformX(rightElbow.position.dx, size)) {
        print("isssue in < right hand");
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightWrist.position, size), paint2);
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightShoulder.position, size), paint2);
      } else if ((max(transformX(rightShoulder.position.dx, size),
                  transformX(rightWrist.position.dx, size)) +
              9) <
          transformX(rightElbow.position.dx, size)) {
        print("isssue in > right hand");
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightWrist.position, size), paint2);
        canvas.drawLine(transform(rightElbow.position, size),
            transform(rightShoulder.position, size), paint2);
      } else {
        print("not issue in right hand");
      }
      print("################################################################");
    }
    return null;
  }

  Offset transform(Offset point, Size size) {
    return Offset(transformX(point.dx, size), transformY(point.dy, size));
  }

  double transformX(double x, Size size) {
    switch (rotation) {
      case InputImageRotation.ROTATION_90:
        return x * size.width / imageSize.height;
      case InputImageRotation.ROTATION_270:
        return size.width - x * size.width / imageSize.height;
      default:
        return x * size.width / imageSize.width;
    }
  }

  double transformY(double y, Size size) {
    switch (rotation) {
      case InputImageRotation.ROTATION_90:
      case InputImageRotation.ROTATION_270:
        return y * size.height / imageSize.width;
      default:
        return y * size.height / imageSize.height;
    }
  }

  @override
  bool shouldRepaint(covariant PosePainter oldDelegate) {
    return pose != oldDelegate.pose;
  }
}
