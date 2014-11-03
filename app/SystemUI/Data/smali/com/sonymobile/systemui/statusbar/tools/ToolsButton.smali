.class public abstract Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.super Landroid/widget/FrameLayout;
.source "ToolsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;,
        Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccentColor:I

.field private mAnimationFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationKiller:Ljava/lang/Runnable;

.field private final mAnimationRunner:Ljava/lang/Runnable;

.field private mAnimationView:Landroid/widget/ImageView;

.field private final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonClicked:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimationImage:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field protected mState:I

.field private mStateContentDescription:Landroid/util/SparseIntArray;

.field private mStateIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mStopAnimation:Z

.field private mTextId:I

.field private mVerticalLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 111
    iput v5, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 113
    iput-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    .line 119
    new-instance v2, Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    .line 130
    const-string v2, "#2AABE4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    .line 132
    iput-boolean v5, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    .line 138
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    .line 140
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    .line 141
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateContentDescription:Landroid/util/SparseIntArray;

    .line 143
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040022

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    .line 151
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    .line 153
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0700a1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    .line 158
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addView(Landroid/view/View;)V

    .line 161
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    .line 162
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setFocusable(Z)V

    .line 172
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 205
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    .line 206
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    .line 241
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$4;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return p1
.end method

.method static synthetic access$208(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private colorize(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 413
    const v1, -0x55555556

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 415
    .local v0, "colorize":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private colorize(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 428
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    if-eqz v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 431
    :cond_0
    const v1, -0x55555556

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 433
    .local v0, "colorize":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 438
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "colorize"    # Z

    .prologue
    .line 397
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 398
    const v0, -0x55555556

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 400
    return-void
.end method

.method private setLabelText(Landroid/widget/TextView;IZ)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "colorize"    # Z

    .prologue
    .line 403
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 404
    const v0, -0x55555556

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/TextView;)V

    .line 406
    return-void
.end method

.method private updateContentDescription()V
    .locals 8

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 473
    .local v1, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "tool":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateContentDescription:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 475
    .local v2, "stateId":I
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "desc":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0029

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 478
    return-void

    .line 475
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private updateIcon()V
    .locals 6

    .prologue
    .line 291
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    .line 292
    .local v2, "icon":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    if-eqz v2, :cond_1

    .line 293
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 295
    .local v0, "bitmapIcon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :goto_0
    if-eqz v0, :cond_0

    .line 302
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    iget-boolean v4, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {p0, v3, v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 307
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    iget-boolean v5, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLabelText(Landroid/widget/TextView;IZ)V

    .line 309
    .end local v0    # "bitmapIcon":Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 298
    .restart local v0    # "bitmapIcon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load resource : OutOfMemoryError"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V
    .locals 2
    .param p1, "stateId"    # I
    .param p2, "stringId"    # Ljava/lang/Integer;
    .param p3, "stateIcon"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    .param p4, "animationIcons"    # [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateContentDescription:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    if-eqz p4, :cond_1

    .line 277
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    :cond_1
    return-void
.end method

.method public colorize(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    .line 450
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 451
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/TextView;)V

    .line 452
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 453
    return-void
.end method

.method abstract onAction()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onAction()V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    .line 382
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public refreshText()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 460
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateContentDescription()V

    .line 461
    return-void
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    .line 464
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 469
    return-void
.end method

.method protected setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 251
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    if-eq p1, v0, :cond_0

    .line 252
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateIcon()V

    .line 254
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateContentDescription()V

    .line 255
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    .line 260
    return-void
.end method

.method protected setTextId(I)V
    .locals 0
    .param p1, "textId"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    .line 288
    return-void
.end method

.method public startAnimate(I)V
    .locals 10
    .param p1, "toState"    # I

    .prologue
    const/4 v9, 0x0

    .line 337
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const/4 v0, 0x0

    .line 343
    .local v0, "animationIcons":[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    .line 344
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animationIcons":[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    check-cast v0, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    .line 346
    .restart local v0    # "animationIcons":[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    :cond_2
    if-eqz v0, :cond_0

    .line 347
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 348
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    .line 349
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 350
    aget-object v6, v0, v3

    iget v5, v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    .line 351
    .local v5, "resId":I
    const/4 v1, 0x0

    .line 353
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 357
    :goto_2
    if-eqz v1, :cond_3

    .line 358
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    aget-object v8, v0, v3

    iget-boolean v8, v8, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {v7, v1, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    sget-object v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v7, "Failed to load anim resource : OutOfMemoryError"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 361
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v5    # "resId":I
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 362
    iput-boolean v9, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    .line 363
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    const/4 v6, -0x1

    iput v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 366
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stopAnimate(Z)V
    .locals 5
    .param p1, "kill"    # Z

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    :goto_0
    return-void

    .line 321
    :cond_0
    if-eqz p1, :cond_2

    .line 322
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 325
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    .line 328
    .local v0, "frame":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;
    iget-object v2, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 330
    .end local v0    # "frame":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 332
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    goto :goto_0
.end method
