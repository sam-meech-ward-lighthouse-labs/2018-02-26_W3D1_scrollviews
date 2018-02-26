//
//  ViewController.m
//  SpaceMan
//
//  Created by Sam Meech-Ward on 2018-02-26.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, strong) UIImageView *starmanImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  [self withAutoLayout];
}

- (void)withAutoLayout {
  UIImage *starman = [UIImage imageNamed:@"starman"];
  self.starmanImageView = [[UIImageView alloc] initWithImage:starman];
  
  [self.scrollView addSubview:self.starmanImageView];

  self.starmanImageView.translatesAutoresizingMaskIntoConstraints = NO;
  
  [self.starmanImageView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
  [self.starmanImageView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
  [self.starmanImageView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
  [self.starmanImageView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
  
  
  self.scrollView.minimumZoomScale = 0.1;
  self.scrollView.maximumZoomScale = 1.0;
}

-(void)withoutautoLayout {
  UIImage *starman = [UIImage imageNamed:@"starman"];
  self.starmanImageView = [[UIImageView alloc] initWithImage:starman];
  
  [self.scrollView addSubview:self.starmanImageView];
  //  self.scrollView.delegate = self;
  //  self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width*3, self.scrollView.frame.size.height);
  self.scrollView.contentSize = starman.size;
  
  self.scrollView.minimumZoomScale = 0.1;
  self.scrollView.maximumZoomScale = 1.0;
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
  return self.starmanImageView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
  NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));
}

@end
