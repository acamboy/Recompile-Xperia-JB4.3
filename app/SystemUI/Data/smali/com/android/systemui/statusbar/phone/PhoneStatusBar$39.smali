.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3533
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 3536
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3537
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3538
    const/4 v1, 0x0

    .line 3539
    .local v1, "flags":I
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3540
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3541
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "recentapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3542
    or-int/lit8 v1, v1, 0x2

    .line 3545
    .end local v3    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3615
    .end local v1    # "flags":I
    :cond_1
    :goto_0
    return-void

    .line 3547
    :cond_2
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3549
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 3550
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3552
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowOperatorName:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3553
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowingOperatorInFullLength:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3554
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->restoreStatusbar()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3557
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setVisibility(I)V

    .line 3559
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSmallAppCallerString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sony/smallapp/internal/util/WindowUtils;->hideSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3561
    :cond_5
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3565
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3567
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 3568
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3569
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationPanelHeaderHeight()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3570
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v5, -0x2710

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3571
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3573
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsRoundedCornersEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3574
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 3575
    .local v2, "orientation":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 3576
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 3577
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRoundedCorners()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 3581
    .end local v2    # "orientation":I
    :cond_6
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3583
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3584
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v5, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3586
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowOperatorName:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3588
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 3589
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setVisibility(I)V

    .line 3592
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3593
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showOperatorInFullLength()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3596
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSmallAppCallerString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sony/smallapp/internal/util/WindowUtils;->showSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3598
    :cond_9
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3599
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowOperatorName:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3604
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 3605
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setVisibility(I)V

    .line 3606
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v6, 0x10a0033

    const/4 v7, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3610
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3611
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showOperatorInFullLength()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0
.end method
