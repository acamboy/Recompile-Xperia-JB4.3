.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;
.super Ljava/lang/Object;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;,
        Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;
    }
.end annotation


# instance fields
.field private mAccentColorId:I

.field private final mButtons:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mDivider:Landroid/view/View;

.field private mIsLandscape:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private final mRows:[Landroid/widget/LinearLayout;

.field private final mServices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 85
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    .line 87
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v0, 0x7f070088

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 88
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const v0, 0x7f070089

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 89
    const v0, 0x7f07008a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mDivider:Landroid/view/View;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    .line 93
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "somc_accent_color_neutral"

    const-string v2, "color"

    const-string v3, "com.sonyericsson.uxp"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mAccentColorId:I

    .line 96
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->reCreateButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->startServices()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCallback:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addViewWithDivider(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 695
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 697
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 699
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 701
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 702
    .local v0, "divider":Landroid/widget/ImageView;
    const v2, 0x7f020229

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 703
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    .end local v0    # "divider":Landroid/widget/ImageView;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    return-void
.end method

.method private colorize()V
    .locals 4

    .prologue
    .line 712
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mAccentColorId:I

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 714
    .local v1, "toolButton":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mAccentColorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(I)V

    goto :goto_0

    .line 717
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "toolButton":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    :cond_0
    return-void
.end method

.method private create(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceString"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createWifi()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v0, "bluetooth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createBluetooth()V

    goto :goto_0

    .line 168
    :cond_2
    const-string v0, "datatraffic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createDataTraffic()V

    goto :goto_0

    .line 170
    :cond_3
    const-string v0, "brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createBrightness()V

    goto :goto_0

    .line 172
    :cond_4
    const-string v0, "sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSound()V

    goto :goto_0

    .line 174
    :cond_5
    const-string v0, "tethering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createTethering()V

    goto :goto_0

    .line 176
    :cond_6
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createGps()V

    goto :goto_0

    .line 178
    :cond_7
    const-string v0, "airplanemode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createAirplaneMode()V

    goto :goto_0

    .line 180
    :cond_8
    const-string v0, "autorotate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createAutoRotate()V

    goto :goto_0

    .line 182
    :cond_9
    const-string v0, "settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSettingsShortcut()V

    goto :goto_0

    .line 184
    :cond_a
    const-string v0, "roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createRoamingShortcut()V

    goto :goto_0

    .line 186
    :cond_b
    const-string v0, "autosync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 187
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createAutoSync()V

    goto/16 :goto_0

    .line 188
    :cond_c
    const-string v0, "nfc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createNFC()V

    goto/16 :goto_0

    .line 190
    :cond_d
    const-string v0, "throw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 191
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createThrow()V

    goto/16 :goto_0

    .line 192
    :cond_e
    const-string v0, "stamina"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 193
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createStamina()V

    goto/16 :goto_0

    .line 194
    :cond_f
    const-string v0, "lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createLte()V

    goto/16 :goto_0
.end method

.method private createAirplaneMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 598
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;-><init>(Landroid/content/Context;)V

    .line 599
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)V

    .line 612
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v2, 0x7f0a001a

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 613
    const v2, 0x7f0a0098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201f5

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 615
    const v2, 0x7f0a0097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201f6

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 617
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 621
    return-void
.end method

.method private createAutoRotate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 624
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;-><init>(Landroid/content/Context;)V

    .line 625
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;)V

    .line 638
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v2, 0x7f0a001b

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 639
    const v2, 0x7f0a0098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201f9

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 641
    const v2, 0x7f0a0097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201fa

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 643
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 647
    return-void
.end method

.method private createAutoSync()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 292
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;-><init>(Landroid/content/Context;)V

    .line 293
    .local v3, "service":Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;)V

    .line 308
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201f7

    invoke-direct {v1, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 309
    .local v1, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201f8

    invoke-direct {v2, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 310
    .local v2, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0026

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 311
    const v4, 0x7f0a0098

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 312
    const/4 v4, 0x2

    const v5, 0x7f0a0097

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 313
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 316
    return-void
.end method

.method private createBluetooth()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 455
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;-><init>(Landroid/content/Context;)V

    .line 456
    .local v5, "service":Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$11;

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v6, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$11;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V

    .line 469
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v6, 0x7f0a001f

    invoke-virtual {v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 470
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201fd

    invoke-direct {v3, v6, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 471
    .local v3, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201fb

    invoke-direct {v1, v6, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 472
    .local v1, "iconAnim1":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201fc

    invoke-direct {v2, v6, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 473
    .local v2, "iconAnim2":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201fe

    invoke-direct {v4, v6, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 474
    .local v4, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v6, 0x7f0a0098

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v12, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v2, v7, v9

    aput-object v1, v7, v8

    aput-object v4, v7, v10

    aput-object v3, v7, v11

    invoke-virtual {v0, v8, v6, v3, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 476
    const v6, 0x7f0a0097

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v12, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v3, v7, v9

    aput-object v4, v7, v8

    aput-object v1, v7, v10

    aput-object v2, v7, v11

    invoke-virtual {v0, v10, v6, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 478
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v6, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 482
    return-void
.end method

.method private createBrightness()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 517
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$13;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$13;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V

    .line 527
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 528
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f0201ff

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v3, v4, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 530
    invoke-virtual {v0, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 531
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private createDataTraffic()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;-><init>(Landroid/content/Context;)V

    .line 428
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V

    .line 443
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v2, 0x7f0a0020

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 444
    const v2, 0x7f0a0098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020201

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 446
    const/4 v2, 0x2

    const v3, 0x7f0a0097

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f020202

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 449
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 451
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method private createGps()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 570
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;-><init>(Landroid/content/Context;)V

    .line 571
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/GpsService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$15;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$15;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/GpsService;)V

    .line 586
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v2, 0x7f0a001c

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 587
    const v2, 0x7f0a0098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020205

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 589
    const v2, 0x7f0a0097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020206

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 591
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 595
    return-void
.end method

.method private createLte()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/LteService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/LteService;-><init>(Landroid/content/Context;)V

    .line 264
    .local v3, "service":Lcom/sonymobile/systemui/statusbar/tools/LteService;
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->isLteNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/LteService;)V

    .line 281
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020207

    invoke-direct {v1, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 282
    .local v1, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020208

    invoke-direct {v2, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 283
    .local v2, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0032

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 284
    const v4, 0x7f0a0098

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 285
    const v4, 0x7f0a0097

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v2, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 286
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 288
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createNFC()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;-><init>(Landroid/content/Context;)V

    .line 349
    .local v3, "service":Lcom/sonymobile/systemui/statusbar/tools/NFCService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$7;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$7;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/NFCService;)V

    .line 363
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020209

    invoke-direct {v1, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 364
    .local v1, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f02020a

    invoke-direct {v2, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 365
    .local v2, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0024

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 366
    const v4, 0x7f0a0098

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 367
    const/4 v4, 0x3

    const v5, 0x7f0a0097

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 368
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 370
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method private createRoamingShortcut()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 319
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;-><init>(Landroid/content/Context;)V

    .line 320
    .local v3, "service":Lcom/sonymobile/systemui/statusbar/tools/RoamingService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$6;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$6;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/RoamingService;)V

    .line 336
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020203

    invoke-direct {v1, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 337
    .local v1, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020204

    invoke-direct {v2, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 338
    .local v2, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0025

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 339
    const v4, 0x7f0a0098

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 340
    const v4, 0x7f0a0097

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v2, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 341
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 343
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method private createSettingsShortcut()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$8;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$8;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V

    .line 386
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 387
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f02020c

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v3, v4, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 389
    invoke-virtual {v0, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 390
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method private createSound()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 395
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;-><init>(Landroid/content/Context;)V

    .line 397
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/SoundService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/SoundService;)V

    .line 412
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v2, 0x7f0a0022

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 413
    const v2, 0x7f0a0098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f02020d

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 415
    const/4 v2, 0x2

    const v3, 0x7f0a0097

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f02020e

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 417
    const/4 v2, 0x3

    const v3, 0x7f0a002a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f02021c

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 420
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 422
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method private createStamina()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/StaminaService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/StaminaService;)V

    .line 224
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v2, 0x7f0a0098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f02020f

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 226
    const/4 v2, 0x2

    const v3, 0x7f0a0097

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f020210

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 228
    const v2, 0x7f0a0028

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 229
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 231
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method private createTethering()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 535
    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;-><init>(Landroid/content/Context;)V

    .line 536
    .local v7, "service":Lcom/sonymobile/systemui/statusbar/tools/TetheringService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$14;

    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v8, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$14;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/TetheringService;)V

    .line 552
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v8, 0x7f0a0023

    invoke-virtual {v0, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 553
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v8, 0x7f020215

    invoke-direct {v5, v8, v11}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 554
    .local v5, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v8, 0x7f020211

    invoke-direct {v1, v8, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 555
    .local v1, "iconAnim0":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v8, 0x7f020212

    invoke-direct {v2, v8, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 556
    .local v2, "iconAnim1":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v8, 0x7f020213

    invoke-direct {v3, v8, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 557
    .local v3, "iconAnim2":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v8, 0x7f020214

    invoke-direct {v4, v8, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 558
    .local v4, "iconAnim3":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v8, 0x7f020216

    invoke-direct {v6, v8, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 559
    .local v6, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v8, 0x7f0a0098

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v14, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v4, v9, v11

    aput-object v3, v9, v10

    aput-object v2, v9, v12

    aput-object v1, v9, v13

    invoke-virtual {v0, v11, v8, v5, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 561
    const v8, 0x7f0a0097

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v14, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v1, v9, v11

    aput-object v2, v9, v10

    aput-object v3, v9, v12

    aput-object v4, v9, v13

    invoke-virtual {v0, v10, v8, v6, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 563
    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v8, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v8, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 567
    return-void
.end method

.method private createThrow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 235
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;-><init>(Landroid/content/Context;)V

    .line 236
    .local v3, "service":Lcom/sonymobile/systemui/statusbar/tools/ThrowService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/ThrowService;)V

    .line 251
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020218

    invoke-direct {v1, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 252
    .local v1, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f020219

    invoke-direct {v2, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 253
    .local v2, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0027

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 254
    const v4, 0x7f0a0098

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 255
    const v4, 0x7f0a0097

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v2, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 256
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 258
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private createWifi()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 485
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;-><init>(Landroid/content/Context;)V

    .line 486
    .local v6, "service":Lcom/sonymobile/systemui/statusbar/tools/WifiService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$12;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v7, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$12;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/WifiService;)V

    .line 499
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v7, 0x7f0a001e

    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 500
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f020220

    invoke-direct {v4, v7, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 501
    .local v4, "iconOff":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f02021d

    invoke-direct {v1, v7, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 502
    .local v1, "iconAnim1":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f02021e

    invoke-direct {v2, v7, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 503
    .local v2, "iconAnim2":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f02021f

    invoke-direct {v3, v7, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 504
    .local v3, "iconAnim3":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f020221

    invoke-direct {v5, v7, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 505
    .local v5, "iconOn":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v7, 0x7f0a0098

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v5, v8, v10

    aput-object v3, v8, v9

    aput-object v2, v8, v11

    aput-object v1, v8, v12

    aput-object v4, v8, v13

    invoke-virtual {v0, v9, v7, v4, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 507
    const v7, 0x7f0a0097

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v13, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v1, v8, v10

    aput-object v2, v8, v9

    aput-object v3, v8, v11

    aput-object v5, v8, v12

    invoke-virtual {v0, v11, v7, v5, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 509
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v7, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 513
    return-void
.end method

.method private reCreateButtons()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "configToolButtons":[Ljava/lang/String;
    iget-object v12, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "toolsbar_settings"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, "settingsFromDB":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 140
    const-string v4, ";"

    .line 141
    .local v4, "divider1":Ljava/lang/String;
    const-string v5, ","

    .line 142
    .local v5, "divider2":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "settings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v12, v9

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v2, "buttonsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v8, v0, v6

    .line 146
    .local v8, "setting":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "settingsItem":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 148
    const/4 v12, 0x1

    aget-object v12, v11, v12

    const-string v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 149
    aget-object v12, v11, v14

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 153
    .end local v8    # "setting":Ljava/lang/String;
    .end local v11    # "settingsItem":[Ljava/lang/String;
    :cond_1
    new-array v12, v14, [Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "configToolButtons":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 158
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "buttonsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "divider1":Ljava/lang/String;
    .end local v5    # "divider2":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "settings":[Ljava/lang/String;
    .restart local v3    # "configToolButtons":[Ljava/lang/String;
    :goto_1
    move-object v0, v3

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v1, v0, v6

    .line 159
    .local v1, "button":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->create(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 155
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "button":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    iget-object v12, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 161
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    return-void
.end method

.method private refreshLabel()V
    .locals 3

    .prologue
    .line 794
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 795
    .local v1, "toolButton":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->refreshText()V

    goto :goto_0

    .line 797
    .end local v1    # "toolButton":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    :cond_0
    return-void
.end method

.method private refreshLayout()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 753
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 754
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 756
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->getNumberOfRows()I

    move-result v4

    .line 757
    .local v4, "nbrOfRows":I
    packed-switch v4, :pswitch_data_0

    .line 778
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000

    invoke-direct {v2, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 780
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 782
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v3, v7

    .line 783
    .local v3, "nbrOfChildrenPerRow":I
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 784
    mul-int v0, v6, v3

    .line 785
    .local v0, "firstIndex":I
    add-int v7, v0, v3

    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 787
    .local v5, "pastLastIndex":I
    move v1, v0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_1

    .line 788
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v8, v7, v6

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {p0, v8, v7, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->addViewWithDivider(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 759
    .end local v0    # "firstIndex":I
    .end local v1    # "i":I
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "nbrOfChildrenPerRow":I
    .end local v5    # "pastLastIndex":I
    .end local v6    # "row":I
    :pswitch_0
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v9

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 760
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v8

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 761
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mDivider:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 791
    :cond_0
    return-void

    .line 764
    :pswitch_1
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 765
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v8

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 766
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mDivider:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 769
    :pswitch_2
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 770
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRows:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v8

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mDivider:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 783
    .restart local v0    # "firstIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "nbrOfChildrenPerRow":I
    .restart local v5    # "pastLastIndex":I
    .restart local v6    # "row":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final showNextActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 679
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 680
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 686
    .local v0, "manager":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 689
    :cond_0
    return-void

    .line 681
    .end local v0    # "manager":Landroid/app/StatusBarManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startServices()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;

    .line 201
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->start()V

    goto :goto_0

    .line 203
    .end local v1    # "service":Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    :cond_0
    return-void
.end method


# virtual methods
.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 723
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 724
    .local v0, "configChanges":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize()V

    .line 728
    :cond_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 729
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshLabel()V

    .line 732
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 733
    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mIsLandscape:Z

    if-eq v1, v2, :cond_2

    .line 734
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mIsLandscape:Z

    .line 735
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshLayout()V

    .line 737
    :cond_2
    return-void

    .line 732
    .end local v1    # "isLandscape":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumberOfRows()I
    .locals 3

    .prologue
    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, "numberOfRows":I
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 742
    .local v0, "numberOfItems":I
    if-lez v0, :cond_0

    .line 743
    iget-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mIsLandscape:Z

    if-nez v2, :cond_1

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    .line 744
    const/4 v1, 0x2

    .line 749
    :cond_0
    :goto_0
    return v1

    .line 746
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setChangeContentObserverListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCallback:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

    .line 80
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toolsbar_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->reCreateButtons()V

    .line 129
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshLayout()V

    .line 130
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->startServices()V

    .line 131
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize()V

    .line 132
    return-void
.end method
