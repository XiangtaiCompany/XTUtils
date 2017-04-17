//
//  SavePhotosTool.h
//  YiXingTravel
//
//  Created by 何凯楠 on 2017/3/10.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//  保存图片到相册中

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XTSavePhotosAlbumUtils : NSObject

/**
 save image to photos

 @param image image
 */
+ (void)xt_saveImageToPhotos:(UIImage *)image;

@end
