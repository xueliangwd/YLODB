//
//  BKJFMDBManager.m
//  Pods
//
//  Created by YuXueliang on 2017/5/19.
//
//

#import "BKJFMDBManager.h"

@implementation BKJFMDBManager


static  FMDatabase *db = nil;



+ (BKJFMDBManager *)shareManager{
    static BKJFMDBManager *manager = nil;
    
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        manager = [[BKJFMDBManager alloc]init];
    });
    return manager;
}
@end
