.class Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;
.super Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/usb/StorageNotification$1;

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 632
    const v0, 0x10405ac

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    .prologue
    .line 664
    const v0, 0x10405b0

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 656
    const v0, 0x10405a8

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 648
    const v0, 0x10405ae

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 640
    const v0, 0x10405aa

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 628
    const v0, 0x10405ab

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 624
    const v0, 0x10405a6

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    .prologue
    .line 660
    const v0, 0x10405af

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 652
    const v0, 0x10405a7

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 644
    const v0, 0x10405ad

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 636
    const v0, 0x10405a9

    return v0
.end method
