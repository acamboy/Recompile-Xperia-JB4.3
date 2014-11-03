.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createLte()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$service:Lcom/sonymobile/systemui/statusbar/tools/LteService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/LteService;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;->val$service:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 2

    .prologue
    .line 272
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    if-nez v1, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 277
    .local v0, "nextState":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;->val$service:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->changeTo(I)V

    .line 278
    return-void

    .line 275
    .end local v0    # "nextState":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "nextState":I
    goto :goto_0
.end method
