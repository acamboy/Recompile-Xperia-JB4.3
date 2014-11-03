.class Lcom/android/systemui/statusbar/policy/NetworkController$1;
.super Ljava/util/ArrayList;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    const-string v0, "50213"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v0, "50219"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v0, "50212"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method
