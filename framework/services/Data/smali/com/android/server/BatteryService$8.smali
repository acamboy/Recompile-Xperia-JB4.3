.class Lcom/android/server/BatteryService$8;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 705
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start UEvent update, event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->updateLocked()V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)V

    .line 708
    monitor-exit v1

    .line 710
    return-void

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
