.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 604
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/usb/StorageNotification$1;

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 618
    const v0, 0x10404aa

    return v0
.end method

.method getMessageIdOnChecking()I
    .locals 1

    .prologue
    .line 610
    const v0, 0x10404a4

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    .prologue
    .line 658
    const v0, 0x10404ae

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 642
    const v0, 0x10404a6

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 634
    const v0, 0x10404ac

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 626
    const v0, 0x10404a8

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 614
    const v0, 0x10404a9

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 606
    const v0, 0x10404a3

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    .prologue
    .line 654
    const v0, 0x10404ad

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 638
    const v0, 0x10404a5

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 630
    const v0, 0x10404ab

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 622
    const v0, 0x10404a7

    return v0
.end method
