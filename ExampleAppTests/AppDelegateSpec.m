#import <Kiwi/Kiwi.h>
#import "AppDelegate.h"


SPEC_BEGIN(AppDelegateSpec)

describe(@"#foo", ^{
  it(@"returns bar", ^{
    AppDelegate *delegate = [[AppDelegate alloc] init];
    [[delegate.foo should] equal:@"bar"];
  });
});

SPEC_END