.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 428
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 429
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 433
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 436
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 437
    .local v11, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    if-nez v12, :cond_0

    .line 442
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 443
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v12}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZZ)V

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 450
    .end local v11    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 451
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 452
    .local v7, "size":I
    new-array v8, v7, [I

    .line 453
    .local v8, "sizeArr":[I
    const/4 v9, 0x0

    .line 455
    .local v9, "sizeArrN":I
    const-string v12, "activity"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 457
    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v4, 0x0

    .local v4, "i":I
    move v10, v9

    .end local v9    # "sizeArrN":I
    .local v10, "sizeArrN":I
    :goto_2
    if-ge v4, v7, :cond_9

    .line 458
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 459
    .restart local v11    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v5, v11, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 460
    .local v5, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 461
    .local v2, "done":Z
    iget-boolean v12, v11, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v12, :cond_3

    .line 462
    const/4 v2, 0x1

    .line 477
    :cond_2
    :goto_3
    if-nez v2, :cond_7

    iget v12, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v13, 0x4

    if-ge v12, v13, :cond_7

    .line 479
    const-string v12, "MountService"

    const-string v13, "Retrying to kill storage users again"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    iget v15, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x1e

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v9, v10

    .line 457
    .end local v10    # "sizeArrN":I
    .restart local v9    # "sizeArrN":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "sizeArrN":I
    .restart local v10    # "sizeArrN":I
    goto :goto_2

    .line 464
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v12, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 465
    .local v6, "pids":[I
    if-eqz v6, :cond_4

    array-length v12, v6

    if-nez v12, :cond_5

    .line 466
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    .line 469
    :cond_5
    const-string v12, "unmount media"

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v12, v13}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v12, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 472
    if-eqz v6, :cond_6

    array-length v12, v6

    if-nez v12, :cond_2

    .line 473
    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    .line 485
    .end local v6    # "pids":[I
    :cond_7
    iget v12, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v13, 0x4

    if-lt v12, v13, :cond_8

    .line 486
    const-string v12, "MountService"

    const-string v13, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_8
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "sizeArrN":I
    .restart local v9    # "sizeArrN":I
    aput v4, v8, v10

    .line 490
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 495
    .end local v2    # "done":Z
    .end local v5    # "path":Ljava/lang/String;
    .end local v9    # "sizeArrN":I
    .end local v11    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v10    # "sizeArrN":I
    :cond_9
    add-int/lit8 v4, v10, -0x1

    :goto_5
    if-ltz v4, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    aget v13, v8, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 502
    .end local v1    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v4    # "i":I
    .end local v7    # "size":I
    .end local v8    # "sizeArr":[I
    .end local v10    # "sizeArrN":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 503
    .restart local v11    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual {v11}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 508
    .end local v11    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 509
    :catch_0
    move-exception v3

    .line 510
    .local v3, "ex":Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Boot-time mount exception"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
