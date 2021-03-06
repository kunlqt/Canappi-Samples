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
#import <QuartzCore/QuartzCore.h>
#import "JSON.h"
#import "ASIHTTPRequest.h"
#import "ASINetworkQueue.h"
#import "ASIFormDataRequest.h"




 
 

#import <SystemConfiguration/SystemConfiguration.h>


@interface labelViewController : UIViewController  
<
NSXMLParserDelegate
,UITextFieldDelegate>

{

	UIViewController *parentController ;
	NSMutableDictionary *labelViewIds ;
	NSMutableDictionary *labelViewValues ;
	 
	 
	// Layout : labelLayout	 
	UIImageView *myBckgndImage ; 
	NSString *myBckgndPath ;
	
 
	UILabel *client1Label ; 
	NSString * const client1Text ; 
 
	UILabel *emailclient1Label ; 
	NSString * const emailclient1Text ; 
 
	UILabel *client2Label ; 
	NSString * const client2Text ; 
 
	UILabel *emailclient2Label ; 
	NSString * const emailclient2Text ; 
 
	UITextField *clienttxt1TextField ; 
	NSString *clienttxt1TextFieldId ;
 
	UITextField *emailtxt1TextField ; 
	NSString *emailtxt1TextFieldId ;
 
	UITextField *clienttxt2TextField ; 
	NSString *clienttxt2TextFieldId ;
 
	UITextField *emailtxt2TextField ; 
	NSString *emailtxt2TextFieldId ;
		NSString * const emailtxt2PlaceHolderText ; 
 
	UIButton *infoButton ; 
	
	
}


	@property (nonatomic,assign) UIViewController *parentController ;
	@property (nonatomic,assign) NSMutableDictionary *labelViewIds ;
	@property (nonatomic,assign) NSMutableDictionary *labelViewValues ;
	
	 
	// Layout labelLayout properties
	 
	 
	@property (nonatomic,retain,readonly)  UIImageView *myBckgndImage ;
	@property (nonatomic,retain,readonly)  NSString *myBckgndPath ;
	
 
	@property (nonatomic,retain,readonly)  UILabel *client1Label ; 
 
	@property (nonatomic,retain,readonly)  UILabel *emailclient1Label ; 
 
	@property (nonatomic,retain,readonly)  UILabel *client2Label ; 
 
	@property (nonatomic,retain,readonly)  UILabel *emailclient2Label ; 
 
	@property (nonatomic,retain,readonly)  UITextField *clienttxt1TextField ;
	@property (nonatomic,retain)  NSString *clienttxt1TextFieldId ;
 
	@property (nonatomic,retain,readonly)  UITextField *emailtxt1TextField ;
	@property (nonatomic,retain)  NSString *emailtxt1TextFieldId ;
 
	@property (nonatomic,retain,readonly)  UITextField *clienttxt2TextField ;
	@property (nonatomic,retain)  NSString *clienttxt2TextFieldId ;
 
	@property (nonatomic,retain,readonly)  UITextField *emailtxt2TextField ;
	@property (nonatomic,retain)  NSString *emailtxt2TextFieldId ;
 
	@property (nonatomic,retain,readonly)  UIButton *infoButton ;





-(id) initWithTabBar ;
-(void) didSelectViewController;
-(NSString*)retrieveFromUserDefaultsFor:(NSString*)key ;
-(NSString *) textValueForControl:(NSString *)name ;
-(NSString *) idForControl:(NSString *)name ;
-(NSMutableDictionary *) identities ;
-(NSMutableDictionary *) values ;
-(NSString *) getDocumentDirectory;


@end
