.class Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;
.super Ljava/lang/Object;
.source "ToolsButton.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 186
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "eventConsumed":Z
    sparse-switch p2, :sswitch_data_0

    .line 200
    :goto_0
    return v0

    .line 194
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v1, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onClick(Landroid/view/View;)V

    .line 197
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
