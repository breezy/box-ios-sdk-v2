//
//  BOXBookmarkRequest.h
//  BoxContentSDK
//

#import "BOXRequestWithSharedLinkHeader.h"

@interface BOXBookmarkRequest : BOXRequestWithSharedLinkHeader

@property (nonatomic, readwrite, assign) BOOL requestAllBookmarkFields;
@property (nonatomic, readwrite, strong) NSArray *notMatchingEtags;//If-None-Match: Array of strings representing etag values
@property (nonatomic, readonly, strong) NSString *bookmarkID;

- (instancetype)initWithBookmarkID:(NSString *)bookmarkID;
- (void)performRequestWithCompletion:(BOXBookmarkBlock)completionBlock;
- (void)performRequestWithCached:(BOXBookmarkBlock)cacheBlock
                       refreshed:(BOXBookmarkBlock)refreshBlock;

@end
