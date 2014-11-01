.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;
.super Ljava/lang/Object;
.source "MSimNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowRoamIcon:[Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowRoamIcon:[Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v3

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    aput-boolean v3, v5, v4

    .line 121
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlternateRunnableSub0 flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowRoamIcon:[Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v6

    aget-boolean v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    .line 124
    .local v1, "dataSub":I
    if-eqz v1, :cond_1

    .line 125
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v5, "mAlternateRunnableSub0 not dataSub. Exit Alternating"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsAlternating:[Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)[Z

    move-result-object v3

    aput-boolean v4, v3, v4

    .line 131
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;

    .line 132
    .local v0, "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    goto :goto_2

    .end local v0    # "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;
    .end local v1    # "dataSub":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    move v3, v4

    .line 120
    goto :goto_0

    .line 128
    .restart local v1    # "dataSub":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa0

    invoke-virtual {v3, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 134
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
