.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f0a0049
        0x7f0a004a
        0x7f0a004b
        0x7f0a004c
        0x7f0a004d
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0a004e
        0x7f0a004f
        0x7f0a0050
        0x7f0a0051
        0x7f0a0052
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0a0054
        0x7f0a0055
        0x7f0a0056
        0x7f0a0057
        0x7f0a0058
    .end array-data

    .line 36
    :array_3
    .array-data 4
        0x7f0a0059
        0x7f0a005a
        0x7f0a005b
        0x7f0a005c
        0x7f0a005d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
