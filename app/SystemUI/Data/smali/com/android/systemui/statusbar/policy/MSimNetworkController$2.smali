.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 534
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged received on subscription :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneState:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aput p1, v1, v2

    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimShowCallBusying:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$900(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNumPhones:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 540
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    if-ne v0, v1, :cond_0

    .line 539
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCallBusyingIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 542
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto :goto_1

    .line 547
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 549
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 551
    :cond_2
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 581
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aput p1, v0, v1

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 587
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 556
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aput p1, v0, v1

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aput p2, v0, v1

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimShowVoiceRATIcon:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    aput v2, v0, v1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 576
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 494
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aput-object p1, v0, v1

    .line 498
    const-string v0, "ro.config.combined_signal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    aput v2, v0, v1

    .line 506
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Combining data service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for signal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimShowRATIconAlways:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimShowVoiceRATIcon:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    aput v2, v0, v1

    .line 521
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-boolean v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-boolean v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 529
    return-void

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataNetType:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 482
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on subscription :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    aput-object p1, v0, v1

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 489
    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
