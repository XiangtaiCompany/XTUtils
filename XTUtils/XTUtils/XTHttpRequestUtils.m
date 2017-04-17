//
//  HttpTool.m
//  MeiTuan
//
//  Created by 何凯楠 on 16/6/13.
//  Copyright © 2016年 HeXiaoBa. All rights reserved.
//

#import "XTHttpRequestUtils.h"
#import "NSObject+MBProgressHUD.h"

@implementation HttpTool

+ (nullable XBURLSessionDataTask *)GET:(nonnull NSString *)URLString
                               success:(nullable XBResponseSuccess)success
                               failure:(nullable XBResponseFailure)failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript", @"text/plain",nil];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    XBURLSessionDataTask *task = [manager GET:URLString parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        success(task, responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        failure(task, error);
        [NSObject hudClass_showMessage:@"请检查当前网络，或者服务器错误" hideAfterDelay:2];
    }];
    
    return task;
}

+ (nullable XBURLSessionDataTask *)POST:(nonnull NSString *)URLString
                             parameters:(nullable id)parameters
                                success:(nullable XBResponseSuccess)success
                                failure:(nullable XBResponseFailure)failure

{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript", @"text/plain",nil];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    XBURLSessionDataTask *task = [manager POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        success(task, responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        failure(task, error);
        [NSObject hudClass_showMessage:@"请检查当前网络，或者服务器错误" hideAfterDelay:2];
    }];
    return task;
}

+ (nullable XBURLSessionDataTask *)POST:(nonnull NSString *)URLString
                             parameters:(nullable id)parameters
              constructingBodyWithBlock:(void (^ _Nullable)(id<AFMultipartFormData> _Nonnull formData))block
                                 success:(nullable XBResponseSuccess)success
                                 failure:(nullable XBResponseFailure)failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript", @"text/plain",nil];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    XBURLSessionDataTask *task = [manager POST:URLString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        block(formData);
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        success(task, responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        failure(task, error);
        [NSObject hudClass_showMessage:@"请检查当前网络，或者服务器错误" hideAfterDelay:2];
    }];
    return task;
}


@end
