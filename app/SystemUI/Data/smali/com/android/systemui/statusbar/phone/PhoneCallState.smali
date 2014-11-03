.class public abstract Lcom/android/systemui/statusbar/phone/PhoneCallState;
.super Ljava/lang/Object;
.source "PhoneCallState.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field final mSim1Subscription:I

.field final mSim2Subscription:I

.field sim1CallState:I

.field sim2CallState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "PhoneCallState"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->TAG:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->mSim1Subscription:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->mSim2Subscription:I

    .line 28
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    .line 29
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    return-void
.end method


# virtual methods
.method protected getCallState()I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "callstate":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 84
    .local v1, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    .end local v1    # "mTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "rex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getCallState(I)I
    .locals 3
    .param p1, "subScription"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "callstate":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 71
    .local v1, "mTelephonyMsim":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    .end local v1    # "mTelephonyMsim":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "rex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 3

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "mTelephonyMsim":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract isCallStateInIdle()Z
.end method

.method public abstract isCallStateInOffHook()Z
.end method

.method public abstract isCallStateInRinging()Z
.end method
