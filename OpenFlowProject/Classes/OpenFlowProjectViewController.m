
#import "OpenFlowProjectViewController.h"
#import "AFGetImageOperation.h"


@implementation OpenFlowProjectViewController

@synthesize openFlowView;

- (void)dealloc {
	[loadImagesOperationQueue release]; loadImagesOperationQueue = nil;
    [openFlowView release]; openFlowView = nil;
    [super dealloc];
}

-(void)viewWillAppear:(BOOL)animated
{
    if(!loadImagesOperationQueue)
        loadImagesOperationQueue = [[NSOperationQueue alloc] init];
    self.openFlowView.viewDelegate = self;
    self.openFlowView.dataSource = self;
    [(AFOpenFlowView *)self.openFlowView setNumberOfImages:30]; 
}

- (void)imageDidLoad:(NSArray *)arguments {
	UIImage *loadedImage = (UIImage *)[arguments objectAtIndex:0];
	NSNumber *imageIndex = (NSNumber *)[arguments objectAtIndex:1];
	[(AFOpenFlowView *)self.openFlowView setImage:loadedImage forIndex:[imageIndex intValue]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (UIImage *)defaultImage {
	return [UIImage imageNamed:@"default.png"];
}

- (void)openFlowView:(AFOpenFlowView *)openFlowView requestImageForIndex:(int)index {
	AFGetImageOperation *getImageOperation = [[AFGetImageOperation alloc] initWithIndex:index viewController:self];
	[loadImagesOperationQueue addOperation:getImageOperation];
	[getImageOperation release];
}

- (void)openFlowView:(AFOpenFlowView *)openFlowView selectionDidChange:(int)index {
	NSLog(@"Cover Flow selection did change to %d", index);
}

@end