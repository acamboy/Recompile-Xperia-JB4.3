.class Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x7d0L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 100
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_0

    .line 185
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    add-int v3, p2, v1

    invoke-interface {v2, p0, p1, v3, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 186
    .local v0, "n":I
    if-gtz v0, :cond_1

    .line 190
    const/4 v1, -0x1

    .line 195
    .end local v0    # "n":I
    .end local v1    # "totalRead":I
    :cond_0
    return v1

    .line 192
    .restart local v0    # "n":I
    .restart local v1    # "totalRead":I
    :cond_1
    sub-int/2addr p3, v0

    .line 193
    add-int/2addr v1, v0

    .line 194
    goto :goto_0
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 174
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 175
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 176
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 177
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 178
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/16 v10, 0x1000

    const/16 v13, 0x8

    .line 201
    new-array v0, v10, [B

    .line 202
    .local v0, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 205
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v10, 0x7d0

    :try_start_0
    invoke-static {v10, v11}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v9

    .line 206
    .local v9, "timeout":Llibcore/io/StructTimeval;
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v10, p1, v11, v12, v9}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 207
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v10, p1, v11, v12, v9}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 210
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 211
    .local v3, "headerBytes":I
    if-eq v3, v13, :cond_1

    .line 213
    const-string v10, "NativeCrashListener"

    const-string v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v3    # "headerBytes":I
    .end local v9    # "timeout":Llibcore/io/StructTimeval;
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v3    # "headerBytes":I
    .restart local v9    # "timeout":Llibcore/io/StructTimeval;
    :cond_1
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    .line 218
    .local v5, "pid":I
    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    .line 224
    .local v8, "signal":I
    if-lez v5, :cond_6

    .line 229
    :cond_2
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    array-length v12, v0

    invoke-interface {v10, p1, v0, v11, v12}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 230
    .local v1, "bytes":I
    if-lez v1, :cond_4

    .line 236
    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_3

    .line 237
    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v4, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 246
    :goto_1
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 248
    .local v6, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v6, :cond_5

    .line 251
    :try_start_2
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v10, :cond_0

    .line 265
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    const/4 v10, 0x1

    :try_start_3
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 267
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 268
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    :try_start_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 274
    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 281
    .end local v1    # "bytes":I
    .end local v3    # "headerBytes":I
    .end local v5    # "pid":I
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "reportString":Ljava/lang/String;
    .end local v8    # "signal":I
    .end local v9    # "timeout":Llibcore/io/StructTimeval;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "NativeCrashListener"

    const-string v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 241
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bytes":I
    .restart local v3    # "headerBytes":I
    .restart local v5    # "pid":I
    .restart local v8    # "signal":I
    .restart local v9    # "timeout":Llibcore/io/StructTimeval;
    :cond_3
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 243
    :cond_4
    if-gtz v1, :cond_2

    goto :goto_1

    .line 248
    :catchall_0
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 268
    .restart local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v10

    .line 276
    :cond_5
    const-string v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v1    # "bytes":I
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const-string v10, "NativeCrashListener"

    const-string v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    .line 104
    new-array v0, v8, [B

    .line 112
    .local v0, "ackSignal":[B
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "socketFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 114
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 119
    :cond_0
    :try_start_0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v10, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 120
    .local v5, "serverFd":Ljava/io/FileDescriptor;
    new-instance v6, Ljava/net/InetUnixAddress;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v6, v8}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    .line 121
    .local v6, "sockAddr":Ljava/net/InetUnixAddress;
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    invoke-interface {v8, v5, v6, v9}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 122
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x1

    invoke-interface {v8, v5, v9}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 125
    :cond_1
    :goto_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .local v3, "peer":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .line 129
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v5, v3}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 131
    if-eqz v4, :cond_2

    .line 133
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_PEERCRED:I

    invoke-interface {v8, v4, v9, v10}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Llibcore/io/StructUcred;

    move-result-object v1

    .line 135
    .local v1, "credentials":Llibcore/io/StructUcred;
    iget v8, v1, Llibcore/io/StructUcred;->uid:I

    if-nez v8, :cond_2

    .line 138
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 146
    .end local v1    # "credentials":Llibcore/io/StructUcred;
    :cond_2
    if-eqz v4, :cond_1

    .line 148
    :try_start_2
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    const-string v8, "NativeCrashListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing socket connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Llibcore/io/ErrnoException;
    :try_start_4
    const-string v8, "NativeCrashListener"

    const-string v9, "Error closing socket connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 166
    .end local v2    # "e":Llibcore/io/ErrnoException;
    .end local v3    # "peer":Ljava/net/InetSocketAddress;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    .end local v5    # "serverFd":Ljava/io/FileDescriptor;
    .end local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_1
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "NativeCrashListener"

    const-string v9, "Unable to init native debug socket!"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    return-void

    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "peer":Ljava/net/InetSocketAddress;
    .restart local v4    # "peerFd":Ljava/io/FileDescriptor;
    .restart local v5    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_2
    move-exception v8

    .line 157
    :try_start_5
    const-string v8, "NativeCrashListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing socket connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Llibcore/io/ErrnoException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 159
    :catch_3
    move-exception v2

    .line 160
    .local v2, "e":Llibcore/io/ErrnoException;
    :try_start_6
    const-string v8, "NativeCrashListener"

    const-string v9, "Error closing socket connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 156
    .end local v2    # "e":Llibcore/io/ErrnoException;
    :catchall_0
    move-exception v8

    .line 157
    :try_start_7
    const-string v9, "NativeCrashListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing socket connection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Llibcore/io/ErrnoException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 161
    :goto_1
    :try_start_8
    throw v8

    .line 159
    :catch_4
    move-exception v2

    .line 160
    .restart local v2    # "e":Llibcore/io/ErrnoException;
    const-string v9, "NativeCrashListener"

    const-string v10, "Error closing socket connection"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 141
    .end local v2    # "e":Llibcore/io/ErrnoException;
    :catch_5
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v8, "NativeCrashListener"

    const-string v9, "Error handling connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 146
    if-eqz v4, :cond_1

    .line 148
    :try_start_a
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 157
    :try_start_b
    const-string v8, "NativeCrashListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing socket connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Llibcore/io/ErrnoException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 159
    :catch_6
    move-exception v2

    .line 160
    .local v2, "e":Llibcore/io/ErrnoException;
    :try_start_c
    const-string v8, "NativeCrashListener"

    const-string v9, "Error closing socket connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v8

    .line 157
    :try_start_d
    const-string v8, "NativeCrashListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing socket connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 159
    :catch_8
    move-exception v2

    .line 160
    .local v2, "e":Llibcore/io/ErrnoException;
    :try_start_e
    const-string v8, "NativeCrashListener"

    const-string v9, "Error closing socket connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 157
    :try_start_f
    const-string v9, "NativeCrashListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing socket connection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_f
    .catch Llibcore/io/ErrnoException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 161
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_10
    throw v8

    .line 159
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 160
    .local v2, "e":Llibcore/io/ErrnoException;
    const-string v9, "NativeCrashListener"

    const-string v10, "Error closing socket connection"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_2

    .line 146
    .end local v2    # "e":Llibcore/io/ErrnoException;
    :catchall_2
    move-exception v8

    if-eqz v4, :cond_3

    .line 148
    :try_start_11
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v9, v4, v0, v10, v11}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 157
    :try_start_12
    const-string v9, "NativeCrashListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing socket connection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_12
    .catch Llibcore/io/ErrnoException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 161
    :cond_3
    :goto_3
    :try_start_13
    throw v8

    .line 159
    :catch_a
    move-exception v2

    .line 160
    .restart local v2    # "e":Llibcore/io/ErrnoException;
    const-string v9, "NativeCrashListener"

    const-string v10, "Error closing socket connection"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_3

    .line 149
    .end local v2    # "e":Llibcore/io/ErrnoException;
    :catch_b
    move-exception v9

    .line 157
    :try_start_14
    const-string v9, "NativeCrashListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing socket connection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Llibcore/io/ErrnoException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_3

    .line 159
    :catch_c
    move-exception v2

    .line 160
    .restart local v2    # "e":Llibcore/io/ErrnoException;
    :try_start_15
    const-string v9, "NativeCrashListener"

    const-string v10, "Error closing socket connection"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    goto :goto_3

    .line 156
    .end local v2    # "e":Llibcore/io/ErrnoException;
    :catchall_3
    move-exception v8

    .line 157
    :try_start_16
    const-string v9, "NativeCrashListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing socket connection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_16
    .catch Llibcore/io/ErrnoException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    .line 161
    :goto_4
    :try_start_17
    throw v8

    .line 159
    :catch_d
    move-exception v2

    .line 160
    .restart local v2    # "e":Llibcore/io/ErrnoException;
    const-string v9, "NativeCrashListener"

    const-string v10, "Error closing socket connection"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_4
.end method
