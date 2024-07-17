import 'package:agromall_test/domain/counntry/country_model/coutnry_model.dart';
import 'package:agromall_test/presentation/utils.dart';
import 'package:auto_route/auto_route.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// #docregion platform_imports
// Import for Android features.
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import '../core/app_colors.dart';
import '../core/font.dart';
// import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class CountryDetailsScreen extends StatefulWidget {
  const CountryDetailsScreen({super.key, required this.country});
  final CountryModel country;

  @override
  State<CountryDetailsScreen> createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends State<CountryDetailsScreen> {
  final PageController _pageController = PageController();
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (WebResourceError error) {},
          onHttpError: (HttpResponseError error) {
            debugPrint('Error occurred on page: ${error.response?.statusCode}');
          },
          onUrlChange: (UrlChange change) {
            debugPrint('url change to ${change.url}');
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse(widget.country.maps!.googleMaps!));

    // #docregion platform_features
    // if (controller.platform is AndroidWebViewController) {
    //   AndroidWebViewController.enableDebugging(true);
    //   (controller.platform as AndroidWebViewController)
    //       .setMediaPlaybackRequiresUserGesture(false);
    // }
    // #enddocregion platform_features

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        // backgroundColor: Colors,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).appBarTheme.iconTheme!.color),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          widget.country.name!.common!,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20.sp,
                // color: AppColors.warmGreySwatch[900],
                fontWeight: FontWeight.w700,
              ),
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel with Smooth Page Indicator
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
              height: 300.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    controller: _pageController,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: SvgPicture.network(widget.country.flags!.svg!,
                            fit: BoxFit.cover),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: SvgPicture.network(
                            widget.country.coatOfArms!.svg!,
                            fit: BoxFit.cover),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: WebViewWidget(controller: _controller),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 10.h,
                    child: SmoothPageIndicator(
                      controller: _pageController, // PageController
                      count: 3,
                      effect: WormEffect(
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                        spacing: 3.w,
                        dotColor: Colors.grey.shade600,
                        activeDotColor: Colors.white,
                      ), // your preferred effect
                    ),
                  ),
                  Positioned(
                      left: 10.h,
                      right: 10.h,
                      top: 145.h,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkResponse(
                              onTap: () {
                                _pageController.previousPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              },
                              child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  // ignore: sort_child_properties_last
                                  child: Image.asset(
                                      "assets/images/png/arrow_backward.png"),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Colors.transparent.withOpacity(0.5))),
                            ),
                            InkResponse(
                              onTap: () {
                                _pageController.nextPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              },
                              child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  // ignore: sort_child_properties_last
                                  child: Image.asset(
                                      "assets/images/png/arrow_forward.png"),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Colors.transparent.withOpacity(0.5))),
                            )
                          ]))
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Row(children: [
              Text("Population: ", style: _keyTextStyle(context)),
              Text(widget.country.population.toString(),
                  style: _infoTextStyle(context))
            ]),

            Row(children: [
              Text("Region: ", style: _keyTextStyle(context)),
              Text(widget.country.region ?? "N/A",
                  style: _infoTextStyle(context))
            ]),
            Row(children: [
              Text("Capital: ", style: _keyTextStyle(context)),
              Text(widget.country.capital[0], style: _infoTextStyle(context))
            ]),
            Row(children: [
              Text("Motto: ", style: _keyTextStyle(context)),
              Text("N/A", style: _infoTextStyle(context))
            ]),
            SizedBox(height: 30.h),
            Row(children: [
              Text("Official language: ", style: _keyTextStyle(context)),
              Text(widget.country.languages!.eng ?? "N/A",
                  style: _infoTextStyle(context))
            ]),
            Row(children: [
              Text("Ethic group: ", style: _keyTextStyle(context)),
              Text("N/A", style: _infoTextStyle(context))
            ]),

            Row(children: [
              Text("Religion: ", style: _keyTextStyle(context)),
              Text("N/A", style: _infoTextStyle(context))
            ]),

            Row(children: [
              Text("Governnment: ", style: _keyTextStyle(context)),
              Text("N/A", style: _infoTextStyle(context))
            ]),

            SizedBox(height: 30.h),
            Row(children: [
              Text("Independence: ", style: _keyTextStyle(context)),
              Text("N/A", style: _infoTextStyle(context))
            ]),
            Row(
              children: [
                Text("Area: ", style: _keyTextStyle(context)),
                Text(widget.country.area.toString(),
                    style: _infoTextStyle(context))
              ],
            ),

            Row(children: [
              Text("Currency: ", style: _keyTextStyle(context)),
              Text("N/A", style: _infoTextStyle(context))
            ]),
            Row(children: [
              Text("GDP: ", style: _keyTextStyle(context)),
              Text("N/A", style: _infoTextStyle(context))
            ]),
            SizedBox(height: 30.h),
            Row(children: [
              Text("Time zone: ", style: _keyTextStyle(context)),
              Text(widget.country.timezones[0], style: _infoTextStyle(context))
            ]),
            Row(children: [
              Text("Date format: ", style: _keyTextStyle(context)),
              Text("N/A")
            ]),
            Row(children: [
              Text("Dialing code: ", style: _keyTextStyle(context)),
              Text(widget.country.idd!.root! + widget.country.idd!.suffixes[0],
                  style: _infoTextStyle(context)),
            ]),
            Row(children: [
              Text("Driving: ", style: _keyTextStyle(context)),
              Text(widget.country.car?.side!.toTitleCase() ?? "N/A",
                  style: _infoTextStyle(context))
            ]),
            // Text('Area: 467.63 km2', style: _infoTextStyle(context)),
          ],
        ),
      ),
    );
  }

  TextStyle _infoTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w300,
        // color: AppColors.warmGreySwatch[900],
        fontFamily: Font.axiforma);
  }

  TextStyle _keyTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        fontSize: 16.sp,
        // color: AppColors.warmGreySwatch[900],
        fontFamily: Font.axiforma,
        fontWeight: FontWeight.w600);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
