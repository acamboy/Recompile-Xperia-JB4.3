.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
.super Ljava/lang/Object;
.source "ToolsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolsIcon"
.end annotation


# instance fields
.field public final colorize:Z

.field public final id:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "colorize"    # Z

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    .line 38
    iput-boolean p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    .line 39
    return-void
.end method
