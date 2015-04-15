//
//  ViewController.m
//  scrolling
//
//  Created by Vitalii Semenov on 10.04.15.
//  Copyright (c) 2015 Vitalii Semenov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mount"]];
    self.myScrollView.contentSize = self.imageView.frame.size;
    [self.myScrollView addSubview:self.imageView];
    self.myScrollView.delegate = self;
    self.myScrollView.minimumZoomScale = 0.5;
    self.myScrollView.maximumZoomScale = 2.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIScrollView Delegate
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

@end
