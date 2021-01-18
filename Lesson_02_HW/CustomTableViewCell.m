//
//  CustomTableViewCell.m
//  Lesson_02_HW
//
//  Created by Glumer Glumer on 18.01.2021.
//

#import "CustomTableViewCell.h"


@implementation CustomTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _myCellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, self.contentView.bounds.size.width / 2, self.contentView.bounds.size.height)];
        _myCellLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_myCellLabel];
    }
    return self;
}

- (void)layoutSubviews
{
   [super layoutSubviews];

   CGRect contentViewBound = self.contentView.bounds;

   if(self.imageView.image) {
      CGRect imageViewFrame = self.imageView.frame;
      imageViewFrame.origin.x = contentViewBound.size.width / 2;
      self.imageView.frame = imageViewFrame;
   }
}

@end
