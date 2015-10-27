//
//  BOXFileThumbnailRequest.h
//  BoxContentSDK
//

#import "BOXRequestWithSharedLinkHeader.h"

@interface BOXFileThumbnailRequest : BOXRequestWithSharedLinkHeader

@property (nonatomic, readonly, strong) NSString *fileID;
@property (nonatomic, readwrite, strong) NSNumber *minHeight;
@property (nonatomic, readwrite, strong) NSNumber *minWidth;
@property (nonatomic, readwrite, strong) NSNumber *maxHeight;
@property (nonatomic, readwrite, strong) NSNumber *maxWidth;

- (instancetype)initWithFileID:(NSString *)fileID;

- (instancetype)initWithFileID:(NSString *)fileID size:(BOXThumbnailSize)size;

- (void)performRequestWithProgress:(BOXProgressBlock)progressBlock
                        completion:(BOXImageBlock)completionBlock;

- (void)performRequestWithProgress:(BOXProgressBlock)progressBlock
                            cached:(BOXImageBlock)cacheBlock
                         refreshed:(BOXImageBlock)refreshBlock;

@end
