.class public Lcom/sonymobile/systemui/statusbar/tools/NFCService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "NFCService.java"


# instance fields
.field private mCurrentState:I

.field private mIsRegistered:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    .line 28
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/NFCService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/NFCService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    .prologue
    .line 15
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/tools/NFCService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/NFCService;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    return p1
.end method

.method private getNfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method private hasNfcAdapter()Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->hasNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    if-eq p1, v0, :cond_0

    .line 88
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 3

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    .line 71
    .end local v0    # "mIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->hasNfcAdapter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    .line 74
    :cond_1
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->notifyStateChanged(I)V

    .line 75
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    .line 83
    :cond_0
    return-void
.end method
