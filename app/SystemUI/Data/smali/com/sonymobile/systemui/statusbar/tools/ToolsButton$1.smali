.class Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;
.super Ljava/lang/Object;
.source "ToolsButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFocused"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    # getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    if-eqz p2, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    # getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    # getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
