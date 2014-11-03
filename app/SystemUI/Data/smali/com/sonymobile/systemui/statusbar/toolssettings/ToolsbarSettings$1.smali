.class Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;
.super Ljava/lang/Object;
.source "ToolsbarSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;->this$0:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 63
    .local v0, "element":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;->this$0:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->countSelectedItems()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;->this$0:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->setSelected(Z)V

    .line 72
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;->this$0:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->updateDataBase()V

    goto :goto_0
.end method
