.class public Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;
.super Ljava/lang/Object;
.source "SomcPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;,
        Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;,
        Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field idleState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

.field private final isMsimPhone:Z

.field offHookState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

.field ringingState:Lcom/android/systemui/statusbar/phone/PhoneCallState;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "SomcPhoneCallState"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->ringingState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    .line 26
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->idleState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    .line 27
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->offHookState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    .line 28
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->isMsimPhone:Z

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;-><init>(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->ringingState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;-><init>(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->idleState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;-><init>(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->offHookState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    .line 34
    const-string v0, "SomcPhoneCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMsimPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->isMsimPhone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->isMsimPhone:Z

    return v0
.end method


# virtual methods
.method public isIdle()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->idleState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;->isCallStateInIdle()Z

    move-result v0

    return v0
.end method

.method public isOffHook()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->offHookState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;->isCallStateInOffHook()Z

    move-result v0

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->ringingState:Lcom/android/systemui/statusbar/phone/PhoneCallState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;->isCallStateInRinging()Z

    move-result v0

    return v0
.end method
