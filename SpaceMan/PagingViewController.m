//
//  PagingViewController.m
//  SpaceMan
//
//  Created by Sam Meech-Ward on 2018-02-26.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "PagingViewController.h"

@interface PagingViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation PagingViewController

- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  // Create an array of the image views
  NSArray <UIImage *>*images = @[
                                 [UIImage imageNamed:@"planet1"],
                                 [UIImage imageNamed:@"planet2"],
                                 [UIImage imageNamed:@"planet3"],
                                 [UIImage imageNamed:@"planet4"],
                                 [UIImage imageNamed:@"rick-morty"]];
  
  // add each image view to the scrollview
  
  CGFloat xOffset = 0;
  for(UIImage *image in images) {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.scrollView addSubview:imageView];
    
    // Make the images the size of a page. Properly size each image / each page.
    // Set the image view's position within the scroll view.
    imageView.frame = CGRectMake(xOffset, 0, CGRectGetWidth(self.scrollView.frame), CGRectGetHeight(self.scrollView.frame));
    
    xOffset += CGRectGetWidth(self.scrollView.frame);
  }
  
  // Define the content size of the scroll view to be the sum of the width of the scroll view * the amount of items in the array / the number of pages
  self.scrollView.contentSize = CGSizeMake(xOffset, 0);
  
  // Snap to each screen.
  self.scrollView.pagingEnabled = YES;
}


@end
