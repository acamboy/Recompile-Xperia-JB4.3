.class Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;
.super Lcom/android/systemui/statusbar/phone/PhoneCallState;
.source "SomcPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffHookState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;->this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;-><init>()V

    return-void
.end method


# virtual methods
.method public isCallStateInIdle()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isCallStateInOffHook()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "isDisplayNavbar":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;->this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;

    # getter for: Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->isMsimPhone:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->access$000(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;->getCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;->getCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-eq v1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-nez v1, :cond_3

    .line 89
    :cond_2
    const/4 v0, 0x1

    .line 98
    :cond_3
    :goto_0
    return v0

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$OffHookState;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    .line 94
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-ne v1, v2, :cond_3

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCallStateInRinging()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
