.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_LIMITED_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 26
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 39
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 52
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LIMITED_SIGNAL_STRENGTH:[[I

    .line 65
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 26
    :array_0
    .array-data 4
        0x7f02017b
        0x7f02017c
        0x7f02017e
        0x7f020180
        0x7f020182
    .end array-data

    :array_1
    .array-data 4
        0x7f02017b
        0x7f02017d
        0x7f02017f
        0x7f020181
        0x7f020183
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x7f02007c
        0x7f02007d
        0x7f02007e
        0x7f02007f
        0x7f020080
    .end array-data

    :array_3
    .array-data 4
        0x7f02007c
        0x7f020081
        0x7f020082
        0x7f020083
        0x7f020084
    .end array-data

    .line 52
    :array_4
    .array-data 4
        0x7f020175
        0x7f020176
        0x7f020177
        0x7f020178
        0x7f020179
    .end array-data

    :array_5
    .array-data 4
        0x7f020175
        0x7f020176
        0x7f020177
        0x7f020178
        0x7f020179
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
