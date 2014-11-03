.class public Lcom/sonymobile/systemui/statusbar/tools/ThrowService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "ThrowService.java"


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ThrowService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.playanywhere.DEVICE_SELECTOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 64
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sonymobile.playanywhere.DEVICE_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    .line 70
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->notifyStateChanged(I)V

    .line 71
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    .line 79
    :cond_0
    return-void
.end method
