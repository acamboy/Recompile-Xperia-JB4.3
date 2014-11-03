.class public Lcom/sonymobile/systemui/statusbar/tools/GpsService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "GpsService.java"


# instance fields
.field private mCurrentState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    .line 31
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    .prologue
    .line 16
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/tools/GpsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/GpsService;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    return p1
.end method

.method private getState()I
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 66
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    if-eq p1, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 72
    :cond_0
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 46
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    .line 52
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->getState()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    .line 53
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->notifyStateChanged(I)V

    .line 54
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    .line 62
    :cond_0
    return-void
.end method
