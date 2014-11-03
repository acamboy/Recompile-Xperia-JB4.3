.class public Lcom/android/systemui/recent/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static sLastOrientation:I

.field private static sPluginView:Lcom/android/systemui/recent/RemotePluginView;


# instance fields
.field private mClosedFromTaskKiller:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mForeground:Z

.field private final mHideSmallAppCallerString:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientationChanged:Z

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/recent/RecentsActivity;->sLastOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mHideSmallAppCallerString:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/systemui/recent/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsActivity$1;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mOrientationChanged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/recent/RecentsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsActivity;->mOrientationChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mHideSmallAppCallerString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/recent/RecentsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsActivity;->mClosedFromTaskKiller:Z

    return p1
.end method

.method private attachPluginView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    sget-object v3, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    if-eqz v3, :cond_0

    .line 338
    invoke-static {}, Lcom/android/systemui/recent/RecentsActivity;->detachPluginView()V

    .line 339
    const v3, 0x7f0700b1

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 340
    .local v0, "container":Landroid/view/ViewGroup;
    sget-object v3, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 341
    sget-object v3, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RemotePluginView;->getInitialHeight()I

    move-result v1

    .line 342
    .local v1, "initialHeight":I
    const v3, 0x7f0700ac

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 343
    .local v2, "recentsLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v4, v4, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 345
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v1    # "initialHeight":I
    .end local v2    # "recentsLayout":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public static createPluginView(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 358
    sget-object v0, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/android/systemui/recent/RecentsActivity;->detachPluginView()V

    .line 360
    sput-object v1, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    .line 362
    :cond_0
    const v0, 0x7f04000c

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RemotePluginView;

    sput-object v0, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    .line 363
    return-void
.end method

.method private static detachPluginView()V
    .locals 3

    .prologue
    .line 348
    sget-object v2, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    if-eqz v2, :cond_0

    .line 349
    sget-object v2, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RemotePluginView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 350
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 351
    check-cast v1, Landroid/view/ViewGroup;

    .line 352
    .local v1, "parentViewGroup":Landroid/view/ViewGroup;
    sget-object v2, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 355
    .end local v1    # "parentViewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static forceOpaqueBackground(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPluginViewInitialHeight()I
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "initialHeight":I
    sget-object v1, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    if-eqz v1, :cond_0

    .line 368
    sget-object v1, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RemotePluginView;->getInitialHeight()I

    move-result v0

    .line 370
    :cond_0
    return v0
.end method

.method private handleIntent(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "checkWaitingForAnimationParam"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 305
    const-string v3, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v3, :cond_0

    .line 307
    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 311
    .local v0, "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    if-eqz p2, :cond_2

    const-string v3, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 313
    .local v1, "waitingForWindowAnimation":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 317
    .end local v0    # "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    .end local v1    # "waitingForWindowAnimation":Z
    :cond_3
    const-string v3, "com.android.systemui.recent.action.OPEN_RECENTS_INTENT_FROM_SMALL_APP_LAUNCHER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v3, :cond_0

    .line 319
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 320
    .restart local v0    # "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    if-eqz p2, :cond_4

    const-string v3, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 322
    .restart local v1    # "waitingForWindowAnimation":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    goto :goto_0
.end method

.method private updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x100000

    .line 147
    if-eqz p1, :cond_1

    move v1, v2

    .line 148
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 150
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 153
    :cond_0
    return-void

    .line 147
    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 217
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/RecentsPanelView;->simulateClick(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    return-void

    .line 226
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 228
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mClosedFromTaskKiller:Z

    if-eqz v2, :cond_3

    .line 229
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 230
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mHideSmallAppCallerString:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sony/smallapp/internal/util/WindowUtils;->showSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->finish()V

    goto :goto_0
.end method

.method public dismissAndGoHome()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v1, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 211
    .end local v0    # "homeIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    sget-object v0, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/RemotePluginView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method isActivityShowing()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 200
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->setContentView(I)V

    .line 244
    const v1, 0x7f0700aa

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 245
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v4, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsActivity;Lcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v4, 0x400

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/RecentsPanelView;->setSystemUiVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v4, 0x200

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/RecentsPanelView;->setSystemUiVisibility(I)V

    .line 253
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 254
    .local v0, "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    .line 258
    sget v1, Lcom/android/systemui/recent/RecentsActivity;->sLastOrientation:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    sget v1, Lcom/android/systemui/recent/RecentsActivity;->sLastOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v4, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mOrientationChanged:Z

    .line 260
    if-eqz p1, :cond_1

    const-string v1, "was_showing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez p1, :cond_5

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 264
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 265
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.CLOSE_RECENTS_INTENT_FROM_SMALL_APP_LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.CLOSE_RECENTS_INTENT_FROM_TASK_KILLER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recent/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    const v1, 0x7f0700b1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mContainer:Landroid/view/ViewGroup;

    .line 273
    sget-object v1, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    if-nez v1, :cond_3

    .line 274
    invoke-static {p0}, Lcom/android/systemui/recent/RecentsActivity;->createPluginView(Landroid/content/Context;)V

    .line 277
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsActivity;->attachPluginView()V

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    return-void

    :cond_4
    move v1, v3

    .line 258
    goto :goto_0

    :cond_5
    move v2, v3

    .line 262
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mClosedFromTaskKiller:Z

    if-nez v0, :cond_0

    .line 290
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/systemui/recent/RecentsActivity;->sPluginView:Lcom/android/systemui/recent/RemotePluginView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 295
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 300
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f05000e

    const v1, 0x7f05000f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsActivity;->overridePendingTransition(II)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 128
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissContextMenuIfAny()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/android/systemui/recent/RecentsActivity;->sLastOrientation:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    const-string v0, "was_showing"

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 162
    invoke-static {p0}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    .line 167
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 168
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList()V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onWindowAnimationStart()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mHideSmallAppCallerString:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sony/smallapp/internal/util/WindowUtils;->hideSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 180
    return-void

    .line 165
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mClosedFromTaskKiller:Z

    if-nez v0, :cond_1

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mHideSmallAppCallerString:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sony/smallapp/internal/util/WindowUtils;->showSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 144
    return-void
.end method
