.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationTriggerTouchListener"
.end annotation


# instance fields
.field private mHiliteOnR:Ljava/lang/Runnable;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mTouchSlop:I

.field mVT:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 1

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mHiliteOnR:Ljava/lang/Runnable;

    .line 1297
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mTouchSlop:I

    .line 1298
    return-void
.end method


# virtual methods
.method public hilite(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mHiliteOnR:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1311
    :goto_0
    return-void

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mHiliteOnR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1320
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v1

    .line 1324
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1325
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_2
    move v1, v2

    .line 1369
    goto :goto_0

    .line 1327
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    .line 1328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchX:F

    .line 1329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchY:F

    .line 1330
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->hilite(Z)V

    .line 1335
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1336
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1337
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1339
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1340
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateExpandNotificationsPanel()V

    .line 1341
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # invokes: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 1342
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->hilite(Z)V

    .line 1343
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 1344
    iput-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1350
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->hilite(Z)V

    .line 1351
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    .line 1352
    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mTouchSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mTouchSlop:I

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1358
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateExpandNotificationsPanel()V

    .line 1359
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    # invokes: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 1360
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1361
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 1364
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 1365
    iput-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->mVT:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
