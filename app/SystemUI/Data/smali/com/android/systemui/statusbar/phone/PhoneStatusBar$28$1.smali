.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2795
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 2800
    const/16 v0, 0xa

    .line 2801
    .local v0, "ROW_DELAY_DECREMENT":I
    const/16 v2, 0x8c

    .line 2802
    .local v2, "currentDelay":I
    const/4 v5, 0x0

    .line 2807
    .local v5, "totalDelay":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 2809
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;)V

    iput-object v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 2824
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 2825
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2826
    .local v4, "sampleView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 2827
    .local v8, "width":I
    mul-int/lit8 v7, v8, 0x8

    .line 2828
    .local v7, "velocity":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2829
    .local v6, "v":Landroid/view/View;
    move-object v1, v6

    .line 2830
    .local v1, "_v":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$2;

    invoke-direct {v10, p0, v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;Landroid/view/View;I)V

    int-to-long v11, v5

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2836
    const/16 v9, 0x32

    add-int/lit8 v10, v2, -0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2837
    add-int/2addr v5, v2

    .line 2838
    goto :goto_0

    .line 2840
    .end local v1    # "_v":Landroid/view/View;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "sampleView":Landroid/view/View;
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "velocity":I
    .end local v8    # "width":I
    :cond_0
    const-string v9, "PhoneStatusBar"

    const-string v10, "snapshot size <= 0"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;)V

    add-int/lit16 v11, v5, 0xe1

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2855
    return-void
.end method
