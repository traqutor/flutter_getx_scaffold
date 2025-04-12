part of 'app_pages.dart';

/// Contains all route names as constants
abstract class Routes {
  Routes._();

  static const home = '/';
  static const settings = '/settings';
  static const notFound = '/not-found';

  // SEO app routes
  static const seoDashboard = '/seo-dashboard';
  static const seoAnalysis = '/seo-analysis';

  // BLE app routes
  static const bleScan = '/ble-scan';
  static const bleDevice = '/ble-device';
}
