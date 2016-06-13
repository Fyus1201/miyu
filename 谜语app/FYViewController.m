//
//  FYViewController.m
//  谜语app
//
//  Created by 寿煜宇 on 15/12/7.
//  Copyright © 2015年 Fyus. All rights reserved.
//

#import "FYViewController.h"


@interface FYViewController()

@property (nonatomic) int currentQuestionIndex;

//@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *questionss;
@property (strong,nonatomic) NSMutableArray *questions;
@property (nonatomic,copy) NSArray *answers;


@property (nonatomic,weak) IBOutlet UILabel *questionLabel;
@property (nonatomic,weak) IBOutlet UILabel *answerLabel;


@end

@implementation FYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     //Do any additional setup after loading the view, typically from a nib.
     self.answers = [NSArray arrayWithObjects:@"明",@"目",@"肼", nil];
    
    self.questions = [NSMutableArray arrayWithObjects:@"日月相依，成双成对。",@"睡眠之前",@"猴子捞月成幻影，月亮随即落井边", nil];
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil//故事板中不使用这个，xib中使用
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        
        //self.questions = @[@"日月相依，成双成对。（打一字）",@"睡眠之前(打一字)",@"猴子捞月成幻影，月亮随即落井边（打一字）"];
        //self.questions = [NSMutableArray arrayWithObjects:@"日月相依，成双成对。（打一字）",@"睡眠之前(打一字)",@"猴子捞月成幻影，月亮随即落井边（打一字）", nil];
        //self.questions = [NSMutableArray arrayWithObjects:@"日月相依，成双成对。（打一字）",@"睡眠之前(打一字)",@"猴子捞月成幻影，月亮随即落井边（打一字）", nil];
        //self.answers = @[@"明",@"目",@"肼"];
        //self.answers = [NSArray arrayWithObjects:@"明",@"目",@"肼", nil];
        //NSLog(@"%@",self.questionss[1]);

    }
    return  self;
}

-(IBAction)showQuestion:(id)sender
{
    
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count])
    {
        self.currentQuestionIndex = 0;
    }
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
    
    NSLog(@"%d***%ld",self.currentQuestionIndex,[self.questions count]);
}

-(IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}
- (IBAction)nest:(id)sender
{
    NSLog(@"啊啊啊啊");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
