.class public Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
.super Landroid/widget/TextView;
.source "OperatorLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mForceFullLengthOperatorName:Z

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

.field private mMSimNetworkName:[Ljava/lang/String;

.field private mMultiSimEnabled:Z

.field private mOperatorName:Ljava/lang/String;

.field private mOperatorNameMaxLength:I

.field private mShownOperatorNameInStatusBar:Z

.field private mSubcription:I

.field private mTruncate:Z

.field private mUpdateOperatorName:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v3, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;-><init>(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)V

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMultiSimEnabled:Z

    .line 81
    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMultiSimEnabled:Z

    if-eqz v3, :cond_0

    .line 82
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 83
    .local v2, "numPhones":I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMSimNetworkName:[Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mContext:Landroid/content/Context;

    const v4, 0x1040320

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "networkNameDefault":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 87
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMSimNetworkName:[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    .end local v1    # "networkNameDefault":Ljava/lang/String;
    .end local v2    # "numPhones":I
    :cond_0
    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mUpdateOperatorName:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMultiSimEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mSubcription:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    return-object v0
.end method


# virtual methods
.method public forceFullLengthOperatorName(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z

    .line 227
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    .line 229
    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    invoke-interface {v0, v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 238
    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    goto :goto_0
.end method

.method public getLabelFullLengthWidth()I
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 269
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 270
    .local v1, "width":I
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 272
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 275
    :cond_0
    return v1
.end method

.method public getLabelTruncatedWidth()I
    .locals 6

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 284
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 285
    .local v2, "width":I
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 286
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    .line 287
    .local v1, "truncatedLabel":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    if-le v3, v4, :cond_0

    .line 288
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v2, v3

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 292
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 294
    .end local v1    # "truncatedLabel":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 97
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    .line 102
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    .line 110
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 115
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    .line 121
    :cond_1
    return-void
.end method

.method public setListener(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    .line 303
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public truncate(Z)V
    .locals 5
    .param p1, "truncate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    .line 246
    if-eqz p1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    .line 256
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 261
    :cond_1
    return-void

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    .line 254
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    goto :goto_0
.end method

.method updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 9
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 162
    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    if-nez v7, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v6

    .line 165
    :cond_1
    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMultiSimEnabled:Z

    if-nez v7, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    const-string v6, ""

    iput-object v6, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    move v6, v5

    .line 168
    goto :goto_0

    .line 172
    :cond_2
    if-eqz p3, :cond_8

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    move v2, v5

    .line 173
    .local v2, "plmnValid":Z
    :goto_1
    if-eqz p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    move v3, v5

    .line 174
    .local v3, "spnValid":Z
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104033a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "emergencyCallsOnly":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040320

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "noNetworkService":Ljava/lang/String;
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 181
    :cond_3
    const-string p4, ""

    .line 184
    :cond_4
    if-eqz v2, :cond_a

    .line 185
    move-object v4, p4

    .line 192
    .local v4, "str":Ljava/lang/String;
    :goto_3
    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMultiSimEnabled:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mUpdateOperatorName:Z

    if-eqz v7, :cond_5

    .line 193
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMSimNetworkName:[Ljava/lang/String;

    iget v8, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mSubcription:I

    aput-object v4, v7, v8

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    iput-boolean v6, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mUpdateOperatorName:Z

    .line 200
    :cond_5
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    .line 202
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z

    if-nez v7, :cond_6

    .line 204
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    if-le v7, v8, :cond_6

    .line 205
    iget v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 209
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_7
    move v6, v5

    goto/16 :goto_0

    .end local v0    # "emergencyCallsOnly":Ljava/lang/String;
    .end local v1    # "noNetworkService":Ljava/lang/String;
    .end local v2    # "plmnValid":Z
    .end local v3    # "spnValid":Z
    .end local v4    # "str":Ljava/lang/String;
    :cond_8
    move v2, v6

    .line 172
    goto/16 :goto_1

    .restart local v2    # "plmnValid":Z
    :cond_9
    move v3, v6

    .line 173
    goto/16 :goto_2

    .line 186
    .restart local v0    # "emergencyCallsOnly":Ljava/lang/String;
    .restart local v1    # "noNetworkService":Ljava/lang/String;
    .restart local v3    # "spnValid":Z
    :cond_a
    if-eqz v3, :cond_b

    .line 187
    move-object v4, p2

    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_3

    .line 189
    .end local v4    # "str":Ljava/lang/String;
    :cond_b
    const-string v4, ""

    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_3
.end method
