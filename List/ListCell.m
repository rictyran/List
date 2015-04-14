//
//  ListCell.m
//  List
//
//  Created by Richard Tyran on 1/7/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

#import "ListCell.h"
#import "ListTVC.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@implementation ListCell

{
    UIView * colorView;
    
    BOOL isDone;
    
    UIView * strikeThrough;
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
    
        colorView = [[UIView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 30, 10, 20, 20)];
        
        
        
//       colorView.backgroundColor = [UIColor blueColor];
        
        [self.contentView addSubview:colorView];

        strikeThrough = [[UIView alloc] initWithFrame:CGRectMake(10, 20, 100, 1)];
        strikeThrough.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:strikeThrough];
    }

    return self;
    
}

- (void)setItemInfo:(NSDictionary *)itemInfo {
    
    colorView.backgroundColor = itemInfo[@"color"];
    
    self.textLabel.text = itemInfo[@"text"];
    
    isDone = [itemInfo[@"done"] boolValue];
    
    strikeThrough.hidden = !isDone;
    
    _itemInfo = itemInfo;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 60;
//}

@end
