.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createAutoRotate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$service:Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;->val$service:Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onAction()V
    .locals 2

    .prologue
    .line 630
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    if-nez v1, :cond_0

    .line 631
    const/4 v0, 0x1

    .line 635
    .local v0, "nextState":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;->val$service:Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->changeTo(I)V

    .line 636
    return-void

    .line 633
    .end local v0    # "nextState":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "nextState":I
    goto :goto_0
.end method
