.class public Lcom/keephealth/android/ui/device/activity/BindCardActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "BindCardActivity.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

.field private cardOrWallet:I

.field private cardType:I

.field private isBind:Z

.field private isClear:Z

.field mDialog:Landroid/app/Dialog;

.field qrCodeString:Ljava/lang/String;

.field private resultCardOrWallet:Ljava/lang/String;

.field userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const/4 v1, 0x1

    .line 51
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardOrWallet:I

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I

    .line 54
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isBind:Z

    .line 144
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isClear:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->clearQr()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isBind:Z

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/BindCardActivity;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isBind:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardOrWallet:I

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I

    return p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isClear:Z

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/activity/BindCardActivity;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isClear:Z

    return p1
.end method

.method private clearQr()V
    .registers 4

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isClear:Z

    .line 231
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardOrWallet:I

    if-ne v1, v0, :cond_10

    const/16 v0, 0xa

    .line 233
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I

    invoke-static {v1, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->clearCardOrWallet(II)[B

    move-result-object v0

    goto :goto_18

    :cond_10
    const/16 v0, 0xb

    .line 236
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I

    invoke-static {v1, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->clearCardOrWallet(II)[B

    move-result-object v0

    .line 238
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->ivQrCode:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/BindCardActivity$6;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->ivQrCode:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->rlQrCode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->btnBindCard:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    return-object v0
.end method

.method public initActivity()V
    .registers 3

    .line 139
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected initView()V
    .registers 6

    .line 64
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cardType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I

    .line 66
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cardOrWallet"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardOrWallet:I

    .line 69
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getCurrentUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 70
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardOrWallet:I

    const/4 v1, 0x2

    if-ne v0, v3, :cond_9a

    .line 71
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I

    if-eqz v0, :cond_87

    if-eq v0, v3, :cond_74

    if-eq v0, v1, :cond_60

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    goto/16 :goto_b0

    .line 93
    :cond_38
    const-string v0, "X_CARD"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f10071c

    .line 94
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006b0

    .line 95
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ec

    .line 88
    :cond_4c
    const-string v0, "WHATSAPP_CARD"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f100717

    .line 89
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006af

    .line 90
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ec

    .line 83
    :cond_60
    const-string v0, "FACEBOOK_CARD"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f10062c

    .line 84
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006a9

    .line 85
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ec

    .line 78
    :cond_74
    const-string v0, "QQ_CARD"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f1006c6

    .line 79
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006ac

    .line 80
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ec

    .line 73
    :cond_87
    const-string v0, "WECHAT_CARD"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f100714

    .line 74
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006ad

    .line 75
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ec

    .line 101
    :cond_9a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv4:Landroid/widget/TextView;

    const v4, 0x7f100600

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I

    if-eqz v0, :cond_da

    if-eq v0, v3, :cond_c7

    if-eq v0, v1, :cond_b4

    .line 122
    :goto_b0
    const-string v0, ""

    move-object v1, v0

    goto :goto_ec

    .line 114
    :cond_b4
    const-string v0, "PAYPAL_WALLET"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f1006b7

    .line 115
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006ab

    .line 116
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ec

    .line 109
    :cond_c7
    const-string v0, "ALIPAY_WALLET"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f1005d3

    .line 110
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006a8

    .line 111
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ec

    .line 104
    :cond_da
    const-string v0, "WECHAT_WALLET"

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    const v0, 0x7f1005f2

    .line 105
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1006ae

    .line 106
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    :goto_ec
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v4, 0x7f0d0008

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    const v1, 0x7f1005fe

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    const v1, 0x7f060163

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    if-eqz v0, :cond_173

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_173

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->syncEncodeQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_173
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_5f

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5f

    if-eqz p3, :cond_5f

    .line 265
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 268
    const-string p2, "result"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\u4e8c\u7ef4\u7801\u626b\u63cf"

    invoke-static {p3, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1f4

    .line 270
    invoke-static {p1, p2}, Lcn/bingoogolapple/qrcode/zxing/QRCodeEncoder;->syncEncodeQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_5f

    .line 272
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    .line 273
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->resultCardOrWallet:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->ivQrCode:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->binding:Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->ivQrCode:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5f
    return-void
.end method
