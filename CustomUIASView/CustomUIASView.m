
#import "CustomUIASView.h"


@implementation CustomUIASView

@synthesize firstButton;
@synthesize secondButton;
@synthesize thirdButton;

- (id)initWithFrame:(CGRect)frame {
  
  if ((self = [super initWithFrame:frame])) {
    
    self.alpha           = .85;
    self.backgroundColor = [UIColor blackColor];
    
    UIImage *buttonImageNormal;
    UIImage *stretchableButtonImageNormal;

    buttonImageNormal            = [UIImage imageNamed:@"as-bg.png"];
    stretchableButtonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    
    self.firstButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    self.firstButton.frame           = CGRectMake(10, 10, 300, 50);
    self.firstButton.backgroundColor = [UIColor clearColor];
    
    [self.firstButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.firstButton setTitle:@"Choice One" forState:UIControlStateNormal];
    [self.firstButton setBackgroundImage:stretchableButtonImageNormal forState:UIControlStateNormal];
    
    self.firstButton.titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    
    [self addSubview:self.firstButton];
    
    self.secondButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    self.secondButton.frame           = CGRectMake(10, (10 + 50 + 5), 300, 50);
    self.secondButton.backgroundColor = [UIColor clearColor];
    
    [self.secondButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.secondButton setTitle:@"Choice Two" forState:UIControlStateNormal];
    [self.secondButton setBackgroundImage:stretchableButtonImageNormal forState:UIControlStateNormal];
    
    self.secondButton.titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    
    [self addSubview:self.secondButton];
    
    self.thirdButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    buttonImageNormal            = [UIImage imageNamed:@"as-bg.png"];
    stretchableButtonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    
    self.thirdButton.frame           = CGRectMake(10, (secondButton.frame.origin.y + secondButton.frame.size.height + 5), 300, 50);
    self.thirdButton.backgroundColor = [UIColor clearColor];
    
    [self.thirdButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.thirdButton setTitle:@"Cancel" forState:UIControlStateNormal];
    [self.thirdButton setBackgroundImage:stretchableButtonImageNormal forState:UIControlStateNormal];
    
    self.thirdButton.titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    
    [self addSubview:self.thirdButton];
  }
  
  return self;
}

- (void)dealloc {
  [firstButton release];
  [secondButton release];
  [thirdButton release];
  [super dealloc];
}

@end