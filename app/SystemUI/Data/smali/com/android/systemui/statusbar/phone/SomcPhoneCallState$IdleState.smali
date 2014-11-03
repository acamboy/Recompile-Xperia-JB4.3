.class Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;
.super Lcom/android/systemui/statusbar/phone/PhoneCallState;
.source "SomcPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;->this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;-><init>()V

    return-void
.end method


# virtual methods
.method public isCallStateInIdle()Z
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "isCallIdle":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;->this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;

    # getter for: Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->isMsimPhone:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->access$000(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;->getCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;->getCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    .line 113
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$IdleState;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    .line 120
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-nez v1, :cond_0

    .line 121
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCallStateInOffHook()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isCallStateInRinging()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
