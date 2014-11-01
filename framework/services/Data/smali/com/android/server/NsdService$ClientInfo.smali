.class Lcom/android/server/NsdService$ClientInfo;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0xa


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private mClientIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field private mResolvedService:Landroid/net/nsd/NsdServiceInfo;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method private constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 3
    .param p2, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "m"    # Landroid/os/Messenger;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    .line 819
    iput-object p2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 820
    iput-object p3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 821
    const-string v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New client, channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messenger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NsdService;
    .param p2, "x1"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "x2"    # Landroid/os/Messenger;
    .param p4, "x3"    # Lcom/android/server/NsdService$1;

    .prologue
    .line 807
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;
    .param p1, "x1"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 826
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 827
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "mChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    const-string v2, "mMessenger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    const-string v2, "mResolvedService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 831
    const-string v2, "clientId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 832
    const-string v2, " mDnsId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method