#import "Foo.h"

@implementation Foo

- (id)init
{
    self = [super init];
    if (self) {
        _bar = [[Bar alloc] init];
    }
    return self;    
}

- (void)dealloc
{
    [_bar release];
    [super dealloc];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%p: @Foo { _bar = %@ }", self, _bar];
}

@end
