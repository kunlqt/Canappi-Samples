/****************************************************************************************************

 Disclaimer: IMPORTANT:  This artifact is supplied to you by Convergence Modeling LLC.
 in consideration of your agreement to the following terms, and your use, installation, 
 modification or redistribution of this acceptance constitutes acceptance of these terms.  
 If you do not agree with these terms, please do not use, install, modify or redistribute 
 this Convergence Modeling LLC artifact.
 
 In consideration of your agreement to abide by the following terms, and subject
 to these terms, Convergence Modeling LLC grants you a personal, non-exclusive license, 
 to use, reproduce, modify and redistribute this artifact, with or without
 modifications, in source and/or binary forms. 
 
 Except as expressly stated in this notice, no other rights or licenses, express or implied, 
 are granted by Convergence Modeling LLC herein, including but not limited to any patent rights 
 that may be infringed by your derivative works or by other works in which the Convergence Modeling 
 artifact may be incorporated.
 
 This artifact is provided by Convergence Modeling LLC on an "AS IS" basis. CONVERGENCE MODELING LLC 
 MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF 
 NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE CONVERGENCE 
 MODELING LLC artifact OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
 IN NO EVENT SHALL CONVERGENCE MODELING LLC BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL 
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
 OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR
 DISTRIBUTION OF CONVERGENCE MODELING LLC artifact, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT 
 (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF CONVERGENCE MODELING LLC HAS BEEN ADVISED OF 
 THE POSSIBILITY OF SUCH DAMAGE.

 
****************************************************************************************************/


#import <UIKit/UIKit.h>
#import "labelViewController.h"
 
 
#import "JSON.h"
#import "ASIHTTPRequest.h"
#import "ASINetworkQueue.h"
#import "ASIFormDataRequest.h"
#import "ASIDownloadCache.h"




#import <SystemConfiguration/SystemConfiguration.h>
#import "GradientButton.h"

 




#import "mapMenuViewController.h"
#import "webStringViewController.h"
#import "webURLViewController.h"
#import "standardButtonViewController.h"
#import "fontViewController.h"
#import "labelViewController.h"
#import "sliderViewController.h"
#import "playerViewController.h"
#import "ImagesViewController.h"
#import "textEntryLayoutMDSLViewController.h"
#import "textEntryViewController.h"
#import "gradientButtonViewController.h"
#import "standardButtonView2Controller.h"
#import "pickersViewController.h"
#import "detailViewController.h"
#import "contactViewController.h"
#import "buttonViewController.h"
#import "parisViewController.h"
#import "westSamoaViewController.h"
#import "belleViewController.h"
#import "webMenuController.h"
#import "homeViewController.h"
#import "aboutViewController.h"
#import "gradientButtonsMDSLController.h"
#import "standardButtonsMDSLController.h"
#import "fontsMDSLController.h"
#import "labelsMDSLController.h"
#import "imagesMDSLController.h"
#import "standardMapMDSLController.h"
#import "hybridMapMDSLController.h"
#import "satelliteMapMDSLController.h"
#import "playerMDSLController.h"
#import "pickersMDSLController.h"
#import "slidersMDSLController.h"
#import "browserStringMDSLController.h"
#import "actionsMDSLController.h"
#import "browserURLMDSLController.h"
#import "actionViewController.h"
#import "youTubeViewController.h"



@implementation labelViewController 

	@synthesize parentController ;
    @synthesize labelViewIds ;
    @synthesize labelViewValues ;

	 


	 
	// Layout : labelLayout	 
	@synthesize myBckgndImage ;
	@synthesize myBckgndPath ;
	
 
	@synthesize client1Label ; 
 
	@synthesize emailclient1Label ; 
 
	@synthesize client2Label ; 
 
	@synthesize emailclient2Label ; 
 
	@synthesize clienttxt1TextField ;
	@synthesize clienttxt1TextFieldId ;
 
	@synthesize emailtxt1TextField ;
	@synthesize emailtxt1TextFieldId ;
 
	@synthesize clienttxt2TextField ;
	@synthesize clienttxt2TextFieldId ;
 
	@synthesize emailtxt2TextField ;
	@synthesize emailtxt2TextFieldId ;
 
	@synthesize infoButton ;





-(NSMutableDictionary *) identities {
	return labelViewIds ;
}

-(NSMutableDictionary *) values {
	return labelViewValues ;
}

- (NSString *)getDocumentDirectory {
	NSArray *arrayPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);

 	return [arrayPaths objectAtIndex:0];
}

- (void)willShowViewController:(BOOL)animtated {
	
	
}

- (void)didShowViewController:(BOOL)animtated {
}


+ (NSString*) stringWithUUID {
    CFUUIDRef uuidObj = CFUUIDCreate(nil);//create a new UUID
    //get the string representation of the UUID
    NSString *uuidString = (NSString*)CFUUIDCreateString(nil, uuidObj) ;
    CFRelease(uuidObj);
    return [uuidString autorelease] ;
}



-(void)saveValues
{
	NSString *value = @"" ;
			 
    if (myBckgndPath == nil) myBckgndPath = @"student.png" ;
	[[self values] setValue:myBckgndPath forKey:@"myBckgnd"];
 
 
 
 
 
    value = clienttxt1TextField.text ;
    if (value == nil) value = @"" ;
	[[self values] setValue:value forKey:@"clienttxt1"];	 
 
    value = emailtxt1TextField.text ;
    if (value == nil) value = @"" ;
	[[self values] setValue:value forKey:@"emailtxt1"];	 
 
    value = clienttxt2TextField.text ;
    if (value == nil) value = @"" ;
	[[self values] setValue:value forKey:@"clienttxt2"];	 
 
    value = emailtxt2TextField.text ;
    if (value == nil) value = @"" ;
	[[self values] setValue:value forKey:@"emailtxt2"];	 
 
    value = [infoButton currentTitle] ;
    if (value == nil) value = @"" ;
	[[self values] setValue:value forKey:@"info"];	 

}







-(NSString*)retrieveFromUserDefaultsFor:(NSString*)key
{
	if (key != nil) return [[[NSUserDefaults standardUserDefaults] objectForKey:key] retain];
	return @"";
}

-(NSString *) textValueForControl:(NSString *)name {
	return [labelViewValues objectForKey:name];
}

-(NSString *) idForControl:(NSString *)name {
	return [labelViewIds objectForKey:name];
}

-(void) setId:(NSString *)identity forControl:(NSString *)name {
	[labelViewIds setObject:identity forKey:name] ;
}





- (void)didSelectViewController {

	// Register the observer for the keyboardWillShow event
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardDidShowNotification object:nil];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardDidHideNotification object:nil];


		

	
	
	
}

- (void)keyboardWillShow:(NSNotification *)note {  
    // create custom done button that will clear the keyboard
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                            style:UIBarButtonSystemItemDone 
                                                            target:self 
                                                            action:@selector(doneButton:)];
    for (UIView *subView in self.view.subviews) {
        if ([subView isFirstResponder]) {
            UITextField *t = (UITextField *)subView;
            if (t.keyboardType == UIKeyboardTypeNamePhonePad)  self.navigationItem.rightBarButtonItem = doneButton;
            if (t.keyboardType == UIKeyboardTypeNumberPad)  self.navigationItem.rightBarButtonItem = doneButton;
            if (t.keyboardType == UIKeyboardTypeDecimalPad)  self.navigationItem.rightBarButtonItem = doneButton;
            if (t.keyboardType == UIKeyboardTypeNumbersAndPunctuation)  self.navigationItem.rightBarButtonItem = doneButton;
            if (t.keyboardType == UIKeyboardTypePhonePad)  self.navigationItem.rightBarButtonItem = doneButton;
        }
            
    }
    
    [doneButton release];
}

- (void)keyboardWillHide:(NSNotification *)note { 
	//
}

-(void)doneButton:(id) sender {
    self.navigationItem.rightBarButtonItem = nil ; 
		
	
	
	
	
	
    [clienttxt1TextField resignFirstResponder];
	
    [emailtxt1TextField resignFirstResponder];
	
    [clienttxt2TextField resignFirstResponder];
	
    [emailtxt2TextField resignFirstResponder];
	
	
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {

	self.labelViewIds = [[NSMutableDictionary alloc] initWithCapacity:16] ;
	self.labelViewValues = [[NSMutableDictionary alloc] initWithCapacity:16] ;

	BOOL isUserDefault = NO;
	
	
	
	
	
	[self.view setBackgroundColor:	
	[UIColor scrollViewTexturedBackgroundColor]
];

	 
	myBckgndImage = [[UIImageView alloc] init];
	
	CALayer * myBckgndImageLayer = [myBckgndImage layer];
	[myBckgndImageLayer setMasksToBounds:YES];
	[myBckgndImageLayer setCornerRadius:8];
	[myBckgndImage.layer setBorderColor: [	
	[UIColor whiteColor]
 CGColor]];
	[myBckgndImage.layer setBorderWidth: 2];
	
	myBckgndImage.frame =  CGRectMake(10, 160, 300, 100);
	

	NSString *myBckgndfilePath = [[self getDocumentDirectory] stringByAppendingPathComponent:@""]; 
	NSData *myBckgnddata = [NSData dataWithContentsOfFile:myBckgndfilePath];; 
    if (myBckgnddata != nil) {
		UIImage *image = [UIImage imageWithData:myBckgnddata];
		myBckgndImage.image = image;
	}

	[self.view addSubview:myBckgndImage];
 

	client1Label = [[UILabel alloc] init];
	client1Label.textAlignment = UITextAlignmentLeft;
	client1Label.backgroundColor = [UIColor clearColor];
	[client1Label setFrame:CGRectMake(30, 55, 80, 28)];
	[client1Label setFont:[UIFont fontWithName:@"helvetica" size:16]];
		
	client1Label.textColor = 	
	[UIColor redColor]
;
	client1Label.text = @"left";
	[self.view addSubview:client1Label];
 

	emailclient1Label = [[UILabel alloc] init];
	emailclient1Label.textAlignment = UITextAlignmentLeft;
	emailclient1Label.backgroundColor = [UIColor clearColor];
	[emailclient1Label setFrame:CGRectMake(30, 85, 80, 28)];
	[emailclient1Label setFont:[UIFont fontWithName:@"helvetica" size:16]];
		
	emailclient1Label.textColor = 	
	[UIColor blackColor]
;
	emailclient1Label.text = @"middle";
	[self.view addSubview:emailclient1Label];
 

	client2Label = [[UILabel alloc] init];
	client2Label.textAlignment = UITextAlignmentRight;
	client2Label.backgroundColor = [UIColor clearColor];
	[client2Label setFrame:CGRectMake(30, 115, 80, 28)];
	[client2Label setFont:[UIFont fontWithName:@"helvetica" size:16]];
		
	client2Label.textColor = 	
	[UIColor brownColor]
;
	client2Label.text = @"right";
	[self.view addSubview:client2Label];
 

	emailclient2Label = [[UILabel alloc] init];
	emailclient2Label.textAlignment = UITextAlignmentLeft;
	emailclient2Label.backgroundColor = [UIColor clearColor];
	[emailclient2Label setFrame:CGRectMake(30, 170, 60, 28)];
	[emailclient2Label setFont:[UIFont fontWithName:@"helvetica" size:16]];
		
	emailclient2Label.textColor = 	
	[UIColor greenColor]
;
	emailclient2Label.text = @"This is a multi-line label";
	[emailclient2Label setLineBreakMode:UILineBreakModeWordWrap] ;
	emailclient2Label.numberOfLines = 2;
	[self.view addSubview:emailclient2Label];

	
	clienttxt1TextField = [[UITextField alloc] init];	
	clienttxt1TextField.delegate = self;
	clienttxt1TextField.textAlignment = UITextAlignmentLeft;
	clienttxt1TextField.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;
	[clienttxt1TextField setFrame:CGRectMake(120, 55, 110, 28)];
	[clienttxt1TextField setFont:[UIFont fontWithName:@"helvetica" size:12]];
	clienttxt1TextField.textColor = [UIColor blueColor];
	clienttxt1TextField.backgroundColor = [UIColor redColor];
	clienttxt1TextField.autocorrectionType = UITextAutocorrectionTypeNo;
	clienttxt1TextField.keyboardType =  UIKeyboardTypeAlphabet;
	//clienttxt1TextField.tag = 0;
	clienttxt1TextField.clearButtonMode = false;	
	[clienttxt1TextField setBorderStyle:UITextBorderStyleBezel] ;
	

	
	if (parentController != nil) {
		if ([parentController respondsToSelector:@selector(clienttxt1TextField)]) { 
			UITextField * tzip = [parentController clienttxt1TextField] ;
			clienttxt1TextField.text = tzip.text ; 
		}}
	if (isUserDefault) {
		NSString *value = [self retrieveFromUserDefaultsFor:@"clienttxt1"] ;	
		clienttxt1TextField.text = value ;
		clienttxt1TextFieldId = [self retrieveFromUserDefaultsFor:@"clienttxt1Id"] ; ;
		
	}
	[self.view addSubview:clienttxt1TextField];
	

	
	emailtxt1TextField = [[UITextField alloc] init];	
	emailtxt1TextField.delegate = self;
	emailtxt1TextField.textAlignment = UITextAlignmentCenter;
	emailtxt1TextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
	[emailtxt1TextField setFrame:CGRectMake(120, 85, 110, 28)];
	[emailtxt1TextField setFont:[UIFont fontWithName:@"helvetica" size:12]];
	emailtxt1TextField.textColor = [UIColor blackColor];
	emailtxt1TextField.backgroundColor = [UIColor whiteColor];
	emailtxt1TextField.autocorrectionType = UITextAutocorrectionTypeNo;
	emailtxt1TextField.keyboardType =  UIKeyboardTypeAlphabet;
	//emailtxt1TextField.tag = 0;
	emailtxt1TextField.clearButtonMode = false;	
	[emailtxt1TextField setBorderStyle:UITextBorderStyleNone] ;
	

	
	if (parentController != nil) {
		if ([parentController respondsToSelector:@selector(emailtxt1TextField)]) { 
			UITextField * tzip = [parentController emailtxt1TextField] ;
			emailtxt1TextField.text = tzip.text ; 
		}}
	if (isUserDefault) {
		NSString *value = [self retrieveFromUserDefaultsFor:@"emailtxt1"] ;	
		emailtxt1TextField.text = value ;
		emailtxt1TextFieldId = [self retrieveFromUserDefaultsFor:@"emailtxt1Id"] ; ;
		
	}
	[self.view addSubview:emailtxt1TextField];
	

	
	clienttxt2TextField = [[UITextField alloc] init];	
	clienttxt2TextField.delegate = self;
	clienttxt2TextField.textAlignment = UITextAlignmentRight;
	clienttxt2TextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
	[clienttxt2TextField setFrame:CGRectMake(120, 115, 110, 28)];
	[clienttxt2TextField setFont:[UIFont fontWithName:@"helvetica" size:12]];
	clienttxt2TextField.textColor = [UIColor brownColor];
	clienttxt2TextField.backgroundColor = [UIColor whiteColor];
	clienttxt2TextField.autocorrectionType = UITextAutocorrectionTypeNo;
	clienttxt2TextField.keyboardType =  UIKeyboardTypeAlphabet;
	//clienttxt2TextField.tag = 0;
	clienttxt2TextField.clearButtonMode = false;	
	[clienttxt2TextField setBorderStyle:UITextBorderStyleLine] ;
	

	
	if (parentController != nil) {
		if ([parentController respondsToSelector:@selector(clienttxt2TextField)]) { 
			UITextField * tzip = [parentController clienttxt2TextField] ;
			clienttxt2TextField.text = tzip.text ; 
		}}
	if (isUserDefault) {
		NSString *value = [self retrieveFromUserDefaultsFor:@"clienttxt2"] ;	
		clienttxt2TextField.text = value ;
		clienttxt2TextFieldId = [self retrieveFromUserDefaultsFor:@"clienttxt2Id"] ; ;
		
	}
	[self.view addSubview:clienttxt2TextField];
	

	
	emailtxt2TextField = [[UITextField alloc] init];	
	emailtxt2TextField.delegate = self;
	emailtxt2TextField.textAlignment = UITextAlignmentLeft;
	emailtxt2TextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
	[emailtxt2TextField setFrame:CGRectMake(120, 170, 110, 80)];
	[emailtxt2TextField setFont:[UIFont fontWithName:@"helvetica" size:15]];
	emailtxt2TextField.textColor = [UIColor cyanColor];
	emailtxt2TextField.backgroundColor = [UIColor clearColor];
	emailtxt2TextField.autocorrectionType = UITextAutocorrectionTypeNo;
	emailtxt2TextField.keyboardType =  UIKeyboardTypeAlphabet;
	//emailtxt2TextField.tag = 0;
	emailtxt2TextField.placeholder = @"this is a place holder";
	emailtxt2TextField.clearButtonMode = false;	
	[emailtxt2TextField setBorderStyle:UITextBorderStyleRoundedRect] ;
	

	
	if (parentController != nil) {
		if ([parentController respondsToSelector:@selector(emailtxt2TextField)]) { 
			UITextField * tzip = [parentController emailtxt2TextField] ;
			emailtxt2TextField.text = tzip.text ; 
		}}
	if (isUserDefault) {
		NSString *value = [self retrieveFromUserDefaultsFor:@"emailtxt2"] ;	
		emailtxt2TextField.text = value ;
		emailtxt2TextFieldId = [self retrieveFromUserDefaultsFor:@"emailtxt2Id"] ; ;
		
	}
	[self.view addSubview:emailtxt2TextField];
	
 
	NSString * const infoButtonText = @"" ; 
	infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];		
	

	[infoButton setFrame:CGRectMake(280, 370, 20, 20)];
	
	//[infoButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[infoButton addTarget:self action:@selector(displayInfo:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:infoButton];
	//[infoButton release];

	[self didSelectViewController];

	[self setTitle:@"Labels"];
	
    [super viewDidLoad];


	
}

-(id) initWithTabBar {
	if ([self init]) {
		self.title = @"Labels";
	
	
	}
	return self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	
	return [textField resignFirstResponder];
		
}	 

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range  replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];

        return FALSE;
    }
    return TRUE;
}
 


// Control Actions
#pragma mark Control Actions
	
//Action For Image 

 
		
 
		
 
		
 
		
 
	 
 
	 
 
	 
 
	 
 


-(void) displayInfo:(id)sender { 



	 

	 
	 
	  
	 
	 
	 

	[self saveValues] ;
	 

	//This is a navigation action  - test
	labelsMDSLController *labelsMDSLControllerInstance = [[labelsMDSLController alloc] init];

	labelsMDSLControllerInstance.parentController = self ;
	self.navigationController.navigationBar.hidden = NO;
	
	[self.navigationController pushViewController:labelsMDSLControllerInstance animated:YES];
	[labelsMDSLControllerInstance release];
	
		

} 





- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
		 
	[myBckgndImage release]; 
	[myBckgndPath release] ;
 
	[client1Label release] ; 
 
	[emailclient1Label release] ; 
 
	[client2Label release] ; 
 
	[emailclient2Label release] ; 
 
	[clienttxt1TextField release] ;
	[clienttxt1TextFieldId release] ;
 
	[emailtxt1TextField release] ;
	[emailtxt1TextFieldId release] ;
 
	[clienttxt2TextField release] ;
	[clienttxt2TextFieldId release] ;
 
	[emailtxt2TextField release] ;
	[emailtxt2TextFieldId release] ;
 
	[infoButton release]; 

	[[NSNotificationCenter defaultCenter] removeObserver:self];


}




- (void)dealloc {
    
	
	[super dealloc];
}




@end
