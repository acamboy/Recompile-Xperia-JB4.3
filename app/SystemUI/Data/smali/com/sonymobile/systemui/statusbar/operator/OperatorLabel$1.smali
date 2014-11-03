.class Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "OperatorLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # setter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z
    invoke-static {v3, v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$002(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z

    .line 129
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # setter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z
    invoke-static {v3, v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$102(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z

    .line 130
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # setter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mUpdateOperatorName:Z
    invoke-static {v3, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$202(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z

    .line 131
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMultiSimEnabled:Z
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$300(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    const-string v4, "subscription"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mSubcription:I
    invoke-static {v3, v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$402(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;I)I

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    const-string v4, "showSpn"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "showPlmn"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "plmn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$500(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$600(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$600(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    # getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$500(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :goto_0
    invoke-interface {v3, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 145
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 141
    goto :goto_0
.end method
