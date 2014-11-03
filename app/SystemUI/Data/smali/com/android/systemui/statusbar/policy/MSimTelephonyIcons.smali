.class Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;
.super Ljava/lang/Object;
.source "MSimTelephonyIcons.java"


# static fields
.field static final CALL_BUSYING:[I

.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_DC:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_HP:[[I

.field static final DATA_IN:[I

.field static final DATA_INOUT:[I

.field static final DATA_LTE:[[I

.field static final DATA_NO_TRAFFIC:[I

.field static final DATA_OUT:[I

.field static final DATA_ROAM_DC_ANIM:[I

.field static final DATA_ROAM_HP_ANIM:[I

.field static final DATA_ROAM_LTE_ANIM:[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final MSIM_DATA_ROAM_1X_ANIM:[I

.field static final MSIM_DATA_ROAM_3G_ANIM:[I

.field static final MSIM_DATA_ROAM_4G_ANIM:[I

.field static final MSIM_DATA_ROAM_E_ANIM:[I

.field static final MSIM_DATA_ROAM_G_ANIM:[I

.field static final MSIM_DATA_ROAM_H_ANIM:[I

.field static final MSIM_ROAMING:[I

.field static final NOTIFICATION_SIM_INDEX:[I

.field static final NO_SIM:[I

.field static final SIGNAL_LOCKED:[I

.field static final SIGNAL_NULL:[I

.field static final SIGNAL_STRENGTH:[[I

.field static final SIM_INDEX_ACTIVED:[I

.field static final SIM_INDEX_DEACTIVED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 14
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->MSIM_DATA_ROAM_1X_ANIM:[I

    .line 20
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->MSIM_DATA_ROAM_3G_ANIM:[I

    .line 26
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->MSIM_DATA_ROAM_4G_ANIM:[I

    .line 32
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->MSIM_DATA_ROAM_E_ANIM:[I

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->MSIM_DATA_ROAM_G_ANIM:[I

    .line 44
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->MSIM_DATA_ROAM_H_ANIM:[I

    .line 49
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->MSIM_ROAMING:[I

    .line 54
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_ROAM_HP_ANIM:[I

    .line 57
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_ROAM_LTE_ANIM:[I

    .line 60
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_ROAM_DC_ANIM:[I

    .line 63
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->SIGNAL_NULL:[I

    .line 66
    new-array v0, v2, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->SIGNAL_LOCKED:[I

    .line 69
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->SIGNAL_STRENGTH:[[I

    .line 81
    sget-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 83
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_G:[[I

    .line 89
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_E:[[I

    .line 95
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_3G:[[I

    .line 101
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_H:[[I

    .line 107
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_HP:[[I

    .line 113
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_DC:[[I

    .line 119
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_1X:[[I

    .line 125
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_4G:[[I

    .line 131
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_LTE:[[I

    .line 137
    new-array v0, v2, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_IN:[I

    .line 140
    new-array v0, v2, [I

    fill-array-data v0, :array_21

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_OUT:[I

    .line 143
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_INOUT:[I

    .line 146
    new-array v0, v2, [I

    fill-array-data v0, :array_23

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->DATA_NO_TRAFFIC:[I

    .line 149
    new-array v0, v2, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->SIM_INDEX_ACTIVED:[I

    .line 152
    new-array v0, v2, [I

    fill-array-data v0, :array_25

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->SIM_INDEX_DEACTIVED:[I

    .line 155
    new-array v0, v2, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->NO_SIM:[I

    .line 158
    new-array v0, v2, [I

    fill-array-data v0, :array_27

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->NOTIFICATION_SIM_INDEX:[I

    .line 161
    new-array v0, v2, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimTelephonyIcons;->CALL_BUSYING:[I

    return-void

    .line 14
    :array_0
    .array-data 4
        0x7f0201e1
        0x7f0201ea
    .end array-data

    .line 20
    :array_1
    .array-data 4
        0x7f0201e2
        0x7f0201eb
    .end array-data

    .line 26
    :array_2
    .array-data 4
        0x7f0201e3
        0x7f0201ec
    .end array-data

    .line 32
    :array_3
    .array-data 4
        0x7f0201e5
        0x7f0201ee
    .end array-data

    .line 38
    :array_4
    .array-data 4
        0x7f0201e6
        0x7f0201ef
    .end array-data

    .line 44
    :array_5
    .array-data 4
        0x7f0201e7
        0x7f0201f0
    .end array-data

    .line 49
    :array_6
    .array-data 4
        0x7f020197
        0x7f0201b9
    .end array-data

    .line 54
    :array_7
    .array-data 4
        0x7f0201e8
        0x7f0201f1
    .end array-data

    .line 57
    :array_8
    .array-data 4
        0x7f0201e9
        0x7f0201f2
    .end array-data

    .line 60
    :array_9
    .array-data 4
        0x7f0201e4
        0x7f0201ed
    .end array-data

    .line 63
    :array_a
    .array-data 4
        0x7f02019d
        0x7f0201bf
    .end array-data

    .line 66
    :array_b
    .array-data 4
        0x7f020196
        0x7f0201b8
    .end array-data

    .line 69
    :array_c
    .array-data 4
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
    .end array-data

    :array_d
    .array-data 4
        0x7f0201ba
        0x7f0201bb
        0x7f0201bc
        0x7f0201bd
        0x7f0201be
    .end array-data

    .line 83
    :array_e
    .array-data 4
        0x7f020181
        0x7f02018e
    .end array-data

    :array_f
    .array-data 4
        0x7f0201a3
        0x7f0201b0
    .end array-data

    .line 89
    :array_10
    .array-data 4
        0x7f020180
        0x7f02018d
    .end array-data

    :array_11
    .array-data 4
        0x7f0201a2
        0x7f0201af
    .end array-data

    .line 95
    :array_12
    .array-data 4
        0x7f02017d
        0x7f02018a
    .end array-data

    :array_13
    .array-data 4
        0x7f02019f
        0x7f0201ac
    .end array-data

    .line 101
    :array_14
    .array-data 4
        0x7f020182
        0x7f02018f
    .end array-data

    :array_15
    .array-data 4
        0x7f0201a4
        0x7f0201b1
    .end array-data

    .line 107
    :array_16
    .array-data 4
        0x7f020183
        0x7f020190
    .end array-data

    :array_17
    .array-data 4
        0x7f0201a5
        0x7f0201b2
    .end array-data

    .line 113
    :array_18
    .array-data 4
        0x7f02017f
        0x7f02018c
    .end array-data

    :array_19
    .array-data 4
        0x7f0201a1
        0x7f0201ae
    .end array-data

    .line 119
    :array_1a
    .array-data 4
        0x7f02017c
        0x7f020189
    .end array-data

    :array_1b
    .array-data 4
        0x7f02019e
        0x7f0201ab
    .end array-data

    .line 125
    :array_1c
    .array-data 4
        0x7f02017e
        0x7f02018b
    .end array-data

    :array_1d
    .array-data 4
        0x7f0201a0
        0x7f0201ad
    .end array-data

    .line 131
    :array_1e
    .array-data 4
        0x7f020184
        0x7f020191
    .end array-data

    :array_1f
    .array-data 4
        0x7f0201a6
        0x7f0201b3
    .end array-data

    .line 137
    :array_20
    .array-data 4
        0x7f020185
        0x7f0201a7
    .end array-data

    .line 140
    :array_21
    .array-data 4
        0x7f020188
        0x7f0201aa
    .end array-data

    .line 143
    :array_22
    .array-data 4
        0x7f020186
        0x7f0201a8
    .end array-data

    .line 146
    :array_23
    .array-data 4
        0x7f020187
        0x7f0201a9
    .end array-data

    .line 149
    :array_24
    .array-data 4
        0x7f020194
        0x7f0201b6
    .end array-data

    .line 152
    :array_25
    .array-data 4
        0x7f020192
        0x7f0201b4
    .end array-data

    .line 155
    :array_26
    .array-data 4
        0x7f020195
        0x7f0201b7
    .end array-data

    .line 158
    :array_27
    .array-data 4
        0x7f020100
        0x7f020101
    .end array-data

    .line 161
    :array_28
    .array-data 4
        0x7f020193
        0x7f0201b5
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
