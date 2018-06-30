//
//  MovieCell.h
//  MyProject
//
//  Created by Somtochukwu Nweke on 6/29/18.
//  Copyright © 2018 Somtochukwu Nweke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *SynopsisLabel;

@end
