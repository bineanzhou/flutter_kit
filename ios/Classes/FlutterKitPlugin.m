#import "FlutterKitPlugin.h"
#import <flutter_kit/flutter_kit-Swift.h>

@implementation FlutterKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterKitPlugin registerWithRegistrar:registrar];
}
@end
