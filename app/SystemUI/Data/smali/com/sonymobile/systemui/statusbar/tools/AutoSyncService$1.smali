.class Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->notifyStateChanged(I)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->notifyStateChanged(I)V

    goto :goto_0
.end method
