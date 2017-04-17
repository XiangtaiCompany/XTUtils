//
//  BaseAPIManager.h
//  ArchitecturalPattern（架构）
//
//  Created by 何凯楠 on 2017/3/15.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^NetworkCompletionHandler)(NSError *error, id result);

typedef NS_ENUM(NSUInteger, FormatDataType) {
    FormatDataTypeRefresh,
    FormatDataTypeLoadMore,
};

typedef NS_ENUM(NSUInteger, NetworkError) {
    NetworkErrorNoData,
    NetworkErrorNoMoreData
} ;

@interface XTBaseAPIUtils : NSObject

+ (void)requestGetWithURL:(NSString *)url completionHandler:(NetworkCompletionHandler)completionHandler;

+ (void)requestPostWithURL:(NSString *)url parm:(id)parm completionHandler:(NetworkCompletionHandler)completionHandler;



@end
