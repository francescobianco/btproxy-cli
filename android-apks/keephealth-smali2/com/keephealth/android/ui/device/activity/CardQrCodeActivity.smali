.class public Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "CardQrCodeActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x64


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

.field private mDialog:Landroid/app/Dialog;

.field mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907f0
    .end annotation
.end field

.field private final permissionsCamer:[Ljava/lang/String;

.field private final permissionsLocation:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 40
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 50
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->permissionsCamer:[Ljava/lang/String;

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v5

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->permissionsLocation:[Ljava/lang/String;

    return-void
.end method

.method private vibrate()V
    .registers 4

    .line 111
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c007d

    return v0
.end method

.method protected initView()V
    .registers 9

    .line 60
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->titleBg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->bar_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 66
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V

    move-object v2, p0

    .line 67
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mDialog:Landroid/app/Dialog;

    .line 81
    :cond_59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-CardQrCodeActivity(Landroid/view/View;)V
    .registers 4

    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    const/16 v1, 0x64

    if-le p1, v0, :cond_e

    .line 71
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_13

    .line 73
    :cond_e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->permissionsCamer:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 75
    :goto_13
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-CardQrCodeActivity(Landroid/view/View;)V
    .registers 2

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-CardQrCodeActivity(Landroid/view/View;)V
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$selectPhoto$3$com-keephealth-android-ui-device-activity-CardQrCodeActivity([Ljava/lang/String;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    .line 130
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

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

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    .line 161
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 88
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .registers 1

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .registers 5

    .line 93
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->vibrate()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e8c\u7ef4\u7801\u626b\u63cf"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onScanQRCodeSuccessCard:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    if-eqz p1, :cond_4d

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_4d

    .line 102
    :cond_33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->finish()V

    return-void

    .line 97
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->showToast(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 147
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStart()V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    .line 155
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

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "open"

    if-eqz v0, :cond_17

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->openFlashlight()V

    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_29

    .line 121
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->closeFlashlight()V

    .line 123
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

    .line 129
    new-instance v0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v0

    .line 129
    invoke-static {p0, v0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    return-void
.end method
