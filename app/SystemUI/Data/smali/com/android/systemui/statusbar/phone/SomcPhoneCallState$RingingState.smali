.class Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;
.super Lcom/android/systemui/statusbar/phone/PhoneCallState;
.source "SomcPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RingingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;->this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneCallState;-><init>()V

    return-void
.end method


# virtual methods
.method public isCallStateInIdle()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isCallStateInOffHook()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isCallStateInRinging()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "isHidenNavbar":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;->this$0:Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;

    # getter for: Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->isMsimPhone:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;->access$000(Lcom/android/systemui/statusbar/phone/SomcPhoneCallState;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;->getCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;->getCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    .line 58
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-eq v1, v2, :cond_3

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-eq v1, v2, :cond_3

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim2CallState:I

    if-ne v1, v3, :cond_4

    .line 62
    :cond_3
    const/4 v0, 0x1

    .line 71
    :cond_4
    :goto_0
    return v0

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SomcPhoneCallState$RingingState;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    .line 67
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneCallState;->sim1CallState:I

    if-ne v1, v2, :cond_4

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method
