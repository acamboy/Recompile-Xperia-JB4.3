.class public Lcom/android/systemui/statusbar/phone/IconPartitioner;
.super Landroid/view/ViewGroup;
.source "IconPartitioner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v9, 0x0

    .line 51
    sub-int v6, p4, p2

    .line 52
    .local v6, "width":I
    sub-int v0, p5, p3

    .line 54
    .local v0, "height":I
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "leftPartition":Landroid/view/View;
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 57
    .local v4, "rightPartition":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v5, v6, v7

    .line 58
    .local v5, "rightPartitionLeft":I
    const/4 v2, 0x0

    .line 59
    .local v2, "leftPartitionLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62
    .local v3, "leftPartitionWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    sub-int v2, v6, v3

    .line 64
    move v3, v6

    .line 65
    sub-int/2addr v6, v5

    .line 66
    const/4 v5, 0x0

    .line 69
    :cond_0
    invoke-virtual {v4, v5, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 70
    invoke-virtual {v1, v2, v9, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 35
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "leftPartition":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, "rightPartition":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->measureChild(Landroid/view/View;II)V

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 45
    .local v1, "newSize":I
    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 46
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->measureChild(Landroid/view/View;II)V

    .line 47
    return-void
.end method
