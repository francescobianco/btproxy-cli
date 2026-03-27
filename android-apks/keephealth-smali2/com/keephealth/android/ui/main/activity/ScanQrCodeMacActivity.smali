.class public Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "ScanQrCodeMacActivity.java"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RC_CAMERA_PERM:I = 0x3

.field private static final RC_EXTERNAL_STORAGE:I = 0x4

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

.field private permissionsCamer:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 55
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

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->permissionsCamer:[Ljava/lang/String;

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v5

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->permissionsLocation:[Ljava/lang/String;

    return-void
.end method

.method private vibrate()V
    .registers 4

    .line 188
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    .line 190
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

    .line 66
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->titleBg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->bar_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->type:I

    .line 75
    :cond_2c
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 77
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;)V

    move-object v2, p0

    .line 78
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mDialog:Landroid/app/Dialog;

    .line 98
    :cond_77
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-ScanQrCodeMacActivity(Landroid/view/View;)V
    .registers 5

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    const/16 v1, 0x64

    const-string v2, "fr33e"

    if-le p1, v0, :cond_15

    .line 82
    const-string p1, "44445555"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_1f

    .line 85
    :cond_15
    const-string p1, "666666"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->permissionsCamer:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 88
    :goto_1f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-main-activity-ScanQrCodeMacActivity(Landroid/view/View;)V
    .registers 2

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-main-activity-ScanQrCodeMacActivity(Landroid/view/View;)V
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$selectPhoto$3$com-keephealth-android-ui-main-activity-ScanQrCodeMacActivity([Ljava/lang/String;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    .line 207
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

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

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->onDestroy()V

    .line 238
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

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 123
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .registers 1

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->vibrate()V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScanQRCodeSuccess:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "result:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onScanQRCodeSuccess_result"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f1002d6

    if-nez v1, :cond_44

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->showToast(Ljava/lang/String;)V

    .line 133
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    return-void

    .line 136
    :cond_44
    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_5f
    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "address"

    const-string v7, "name"

    const-string v8, "result2:"

    const/4 v9, 0x1

    if-eqz v5, :cond_15f

    .line 140
    const-string v5, "\\?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 141
    array-length v5, v1

    if-le v5, v9, :cond_1ba

    .line 142
    aget-object v5, v1, v9

    if-eqz v5, :cond_1ba

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1ba

    .line 143
    aget-object v1, v1, v9

    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    array-length v5, v1

    if-le v5, v9, :cond_14e

    .line 145
    aget-object v2, v1, v3

    const-string v5, "name="

    const-string v10, ""

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "%20"

    const-string v12, " "

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 147
    const-string v13, "Q32"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b6

    const-string v13, "Q19 Max"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b6

    const-string v13, "Sense 6"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e8

    .line 148
    :cond_b6
    const-string v13, "-"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e8

    .line 149
    array-length v15, v14

    if-le v15, v9, :cond_e8

    .line 150
    aget-object v15, v14, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v9, 0x4

    if-lt v15, v9, :cond_e8

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v14, v3

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v13, 0x1

    aget-object v14, v14, v13

    invoke-virtual {v14, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    :cond_e8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v1, v3

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v13, 0x1

    aget-object v14, v1, v13

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v3, v1, v3

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v1, v13

    const-string v8, "mac="

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " --"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 158
    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->finish()V

    goto :goto_1ba

    .line 162
    :cond_14e
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->showToast(Ljava/lang/String;)V

    .line 163
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    goto :goto_1ba

    .line 167
    :cond_15f
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1aa

    .line 168
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 169
    array-length v5, v1

    const/4 v9, 0x1

    if-le v5, v9, :cond_199

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v9

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    aget-object v3, v1, v3

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    aget-object v1, v1, v9

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v0, v9, v2}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->finish()V

    goto :goto_1ba

    .line 177
    :cond_199
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->showToast(Ljava/lang/String;)V

    .line 178
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    goto :goto_1ba

    .line 181
    :cond_1aa
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->showToast(Ljava/lang/String;)V

    .line 182
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v1}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpot()V

    :cond_1ba
    :goto_1ba
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 224
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStart()V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startCamera()V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->startSpotAndShowRect()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->stopCamera()V

    .line 232
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

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "open"

    if-eqz v0, :cond_17

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->openFlashlight()V

    .line 197
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_29

    .line 198
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/zxing/ZXingView;->closeFlashlight()V

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public requestExternalStorage()V
    .registers 5
    .annotation runtime Lpub/devrel/easypermissions/AfterPermissionGranted;
        value = 0x4
    .end annotation

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_20

    .line 105
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_40

    .line 107
    :cond_15
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "\u6ca1\u6709\u6743\u9650, \u4f60\u9700\u8981\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u8bfb\u53d6\u624b\u673a\u5b58\u50a8\u6743\u9650"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2, v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_40

    .line 112
    :cond_20
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_40

    :cond_39
    const/16 v0, 0x36

    .line 115
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method selectPhoto()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c3
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v0

    .line 206
    invoke-static {p0, v0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    return-void
.end method
