.class Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachePackageDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z
    invoke-static {v0, p2}, Lcom/android/server/DeviceStorageMonitorService;->access$502(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 219
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # setter for: Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z
    invoke-static {v0, v3}, Lcom/android/server/DeviceStorageMonitorService;->access$602(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 220
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Clear succeeded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$500(Lcom/android/server/DeviceStorageMonitorService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mClearingCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$600(Lcom/android/server/DeviceStorageMonitorService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Forcing memory check"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const-wide/16 v1, 0x0

    # invokes: Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$700(Lcom/android/server/DeviceStorageMonitorService;ZJ)V

    .line 223
    return-void
.end method
