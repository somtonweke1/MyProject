//
//  DetailsViewController.m
//  MyProject
//
//  Created by Somtochukwu Nweke on 6/29/18.
//  Copyright © 2018 Somtochukwu Nweke. All rights reserved.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backdropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterview;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.movie[@"poster_path"];
    
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    
    
    NSURL *posterURL =[NSURL URLWithString:fullPosterURLString];
    [self.posterview setImageWithURL:posterURL];
    
    NSString *backdropURLString = self.movie[@"backdrop_path"];
    
    NSString *fullbackdropURLString = [baseURLString
                                     stringByAppendingString:posterURLString];
    NSURL *backdropURL = [NSURL URLWithString:fullPosterURLString];
    [self.backdropView setImageWithURL:backdropURL];
    
    self.titleLable.text = self.movie[@"title"];
    self.synopsisLabel.text= self.movie[@"overview"];
    
    [self.titleLable sizeToFit];
    [self.synopsisLabel sizeToFit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
