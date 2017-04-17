//
//  BaseAPIManager.m
//  ArchitecturalPattern（架构）
//
//  Created by 何凯楠 on 2017/3/15.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "XTBaseAPIUtils.h"
#import "XTHttpRequestUtils.h"
#import "XBConst.h"

@implementation XTBaseAPIUtils

+ (void)requestGetWithURL:(NSString *)url completionHandler:(NetworkCompletionHandler)completionHandler {
    NSString *allUrl = [NSString stringWithFormat:@"%@%@", URL_IP, url];
    
    [XTHttpRequestUtils GET:allUrl success:^(XBURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        if (responseObject) {
            completionHandler ? completionHandler(nil, responseObject) : nil;
        }
    } failure:^(XBURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
        if (error) {
            completionHandler ? completionHandler(error, nil) : nil;
        }
    }];

}

+ (void)requestPostWithURL:(NSString *)url parm:(id)parm completionHandler:(NetworkCompletionHandler)completionHandler {
    
    NSString *allUrl = [NSString stringWithFormat:@"%@%@", URL_IP, url];
    
    [XTHttpRequestUtils POST:allUrl parameters:parm success:^(XBURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        if (responseObject) {
            completionHandler ? completionHandler(nil, responseObject) : nil;
        }
    } failure:^(XBURLSessionDataTask * _Nullable task, NSError * _Nullable error) {
        if (error) {
            completionHandler ? completionHandler(error, nil) : nil;
        }
    }];
    
}

@end
