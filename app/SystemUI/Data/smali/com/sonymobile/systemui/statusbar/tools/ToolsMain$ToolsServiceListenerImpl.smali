.class final Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;
.super Ljava/lang/Object;
.source "ToolsMain.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToolsServiceListenerImpl"
.end annotation


# instance fields
.field final mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 653
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 655
    return-void
.end method


# virtual methods
.method public onChangingTo(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->startAnimate(I)V

    .line 671
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 666
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 660
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 661
    return-void
.end method
