.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30$2;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;)V
    .locals 0

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideCling()V

    .line 2289
    return-void
.end method
