//
//  PhotoViewController.m
//  EdgarPhotoViewer
//
//  Created by Andreas Schmid on 8/28/16.
//  Copyright © 2016 Edgar Ruiz. All rights reserved.
//

#import "PhotoViewController.h"
#import "InfoViewController.h"

@interface PhotoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photoView;

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *photo = [UIImage imageNamed:self.currPhoto.fileName];
    [_photoView setImage:photo];
    self.title = self.currPhoto.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    InfoViewController *ivc = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    [ivc setCurrPhoto:self.currPhoto];
    
}


@end
