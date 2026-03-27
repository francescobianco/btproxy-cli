.class public Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "ScanQrCodeActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field ivBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029f
    .end annotation
.end field

.field ivPhoto:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c3
    .end annotation
.end field

.field mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907f0
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method private vibrate()V
    .registers 4

    .line 102
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c007e

    return v0
.end method

.method protected initView()V
    .registers 3

    .line 55
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->titleBg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->bar_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->type:I

    .line 64
    :cond_2c
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-ScanQrCodeActivity(Landroid/view/View;)V
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$selectPhoto$1$com-keephealth-android-ui-main-activity-ScanQrCodeActivity([Ljava/lang/String;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    .line 121
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->decodeQRCode(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraAmbientBrightnessChanged(Z)V
    .registers 2

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    .line 152
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .registers 1

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .registers 6

    .line 73
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->vibrate()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrd3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1002d6

    if-nez p1, :cond_3d

    .line 77
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->showToast(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void

    .line 81
    :cond_3d
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_58
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_73

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->showToast(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    goto :goto_af

    :cond_73
    const/4 v2, 0x0

    .line 89
    aget-object v1, v1, v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 90
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->showToast(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    goto :goto_af

    .line 93
    :cond_99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string p1, "type"

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->type:I

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-class p1, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_af
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 138
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStart()V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    .line 146
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStop()V

    return-void
.end method

.method openLight(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902b5
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "open"

    if-eqz v0, :cond_17

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->openFlashlight()V

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_29

    .line 112
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->closeFlashlight()V

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method selectPhoto()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c3
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v0

    .line 120
    invoke-static {p0, v0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    return-void
.end method
