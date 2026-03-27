.class public Lcom/keephealth/android/ui/device/activity/CameraActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_IMAGE_PATH:Ljava/lang/String; = "imagePath"


# instance fields
.field final REQUEST_CODE_CAMER_PERMISSION:I

.field private autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private changeBack:Landroid/widget/ImageView;

.field deviceCallback:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

.field private imageData:[B

.field private isFlashing:Z

.field private isFoucing:Z

.field private isPause:Z

.field private isTakePhoto:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCancleButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private mFlashButton:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;

.field private mPhotoButton:Landroid/widget/ImageView;

.field private mPhotoLayout:Landroid/widget/RelativeLayout;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private permissionsCamer:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 66
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    const/4 v1, 0x1

    .line 323
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->REQUEST_CODE_CAMER_PERMISSION:I

    const/4 v2, 0x3

    .line 324
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v3, v0

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v3, v1

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v6, 0x2

    aput-object v5, v3, v6

    iput-object v3, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->permissionsCamer:[Ljava/lang/String;

    .line 326
    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v0

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    aput-object v0, v2, v1

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    aput-object v0, v2, v6

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->permissionsLocation:[Ljava/lang/String;

    .line 501
    new-instance v0, Lcom/keephealth/android/ui/device/activity/CameraActivity$3;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/activity/CameraActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;I)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->deviceCallback:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Lcom/keephealth/android/views/camera/OverCameraView;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/CameraActivity;Z)Z
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFoucing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Landroid/os/Handler;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->takePhoto()V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->savePhoto()V

    return-void
.end method

.method private cancleSavePhoto()V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPhotoLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    .line 258
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_d
    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->imageData:[B

    .line 261
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isTakePhoto:Z

    return-void
.end method

.method private fitComprehensiveScreen()V
    .registers 3

    .line 124
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 125
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 126
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 128
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private openCamera(I)Landroid/hardware/Camera;
    .registers 10

    .line 421
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 422
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_d
    const/4 v6, 0x1

    if-ge v3, v0, :cond_21

    .line 424
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 425
    iget v7, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v6, :cond_19

    move v4, v3

    goto :goto_1e

    .line 427
    :cond_19
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_1e

    move v5, v3

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_21
    if-ne p1, v6, :cond_2a

    if-eq v4, v2, :cond_2a

    .line 433
    :try_start_25
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    return-object p1

    :cond_2a
    if-nez p1, :cond_33

    if-eq v5, v2, :cond_33

    .line 435
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_32} :catch_33

    return-object p1

    :catch_33
    :cond_33
    const/4 p1, 0x0

    return-object p1
.end method

.method private openCamera()V
    .registers 7

    .line 366
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_c

    .line 367
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    .line 369
    :cond_c
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 370
    new-instance v0, Lcom/keephealth/android/views/camera/CameraPreview;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/keephealth/android/views/camera/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;I)V

    .line 371
    invoke-virtual {v0}, Lcom/keephealth/android/views/camera/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 372
    invoke-virtual {v0}, Lcom/keephealth/android/views/camera/CameraPreview;->findBestPreviewResolution()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 373
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v4, v5

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 374
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/camera/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 377
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    if-nez v0, :cond_68

    .line 378
    new-instance v0, Lcom/keephealth/android/views/camera/OverCameraView;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/camera/OverCameraView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;

    .line 379
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 380
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/views/camera/OverCameraView;->setTouchFoucusRect(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusCallback;FF)V

    .line 382
    :cond_68
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->deviceCallback:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->addDeviceCallback(ILcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    return-void
.end method

.method public static parseResult(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 271
    const-string v0, "imagePath"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private savePhoto()V
    .registers 11

    .line 448
    const-string v0, "file://"

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    const-string v2, "image/jpeg"

    const-string v3, "mime_type"

    const-string v4, "_data"

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Camera"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_47

    .line 452
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 455
    :cond_47
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IMG_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".jpg"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 459
    :try_start_84
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_c4
    .catchall {:try_start_84 .. :try_end_89} :catchall_c2

    .line 460
    :try_start_89
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->imageData:[B

    invoke-virtual {v9, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_bf
    .catchall {:try_start_89 .. :try_end_8e} :catchall_bc

    .line 466
    :try_start_8e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception v7

    .line 468
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 477
    :goto_96
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 478
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_f7

    :catchall_bc
    move-exception v7

    move-object v8, v9

    goto :goto_fe

    :catch_bf
    move-exception v7

    move-object v8, v9

    goto :goto_c5

    :catchall_c2
    move-exception v7

    goto :goto_fe

    :catch_c4
    move-exception v7

    .line 462
    :goto_c5
    :try_start_c5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c2

    if-eqz v8, :cond_d2

    .line 466
    :try_start_ca
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    goto :goto_d2

    :catch_ce
    move-exception v7

    .line 468
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 477
    :cond_d2
    :goto_d2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 478
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v7, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    :goto_f7
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->cancleSavePhoto()V

    return-void

    :goto_fe
    if-eqz v8, :cond_108

    .line 466
    :try_start_100
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_104

    goto :goto_108

    :catch_104
    move-exception v8

    .line 468
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 477
    :cond_108
    :goto_108
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 478
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->cancleSavePhoto()V

    .line 485
    throw v7
.end method

.method private setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .registers 7

    .line 386
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 387
    invoke-static {p2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 388
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    if-eq p1, p2, :cond_27

    const/4 v2, 0x2

    if-eq p1, v2, :cond_24

    const/4 v2, 0x3

    if-eq p1, v2, :cond_21

    goto :goto_29

    :cond_21
    const/16 v1, 0x10e

    goto :goto_29

    :cond_24
    const/16 v1, 0xb4

    goto :goto_29

    :cond_27
    const/16 v1, 0x5a

    .line 405
    :cond_29
    :goto_29
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, p2, :cond_37

    .line 406
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 407
    rem-int/lit16 p1, p1, 0x168

    goto :goto_3e

    .line 410
    :cond_37
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    .line 413
    :goto_3e
    :try_start_3e
    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_41} :catch_41

    :catch_41
    return-void
.end method

.method private setOnclickListener()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCancleButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->changeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private switchFlash()V
    .registers 4

    .line 238
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFlashing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFlashing:Z

    .line 239
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mFlashButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    const v0, 0x7f0d005d

    goto :goto_11

    :cond_e
    const v0, 0x7f0d005c

    :goto_11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mFlashButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/newland/springdialog/AnimSpring;->getInstance(Landroid/view/View;)Lcom/newland/springdialog/AnimSpring;

    move-result-object v0

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {v0, v1, v2}, Lcom/newland/springdialog/AnimSpring;->startRotateAnim(FF)Lcom/newland/springdialog/AnimSpring;

    .line 242
    :try_start_21
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 243
    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFlashing:Z

    if-eqz v1, :cond_2e

    const-string v1, "torch"

    goto :goto_30

    :cond_2e
    const-string v1, "off"

    :goto_30
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_38} :catch_39

    goto :goto_3f

    .line 246
    :catch_39
    const-string v0, "\u8be5\u8bbe\u5907\u4e0d\u652f\u6301\u95ea\u5149\u706f"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_3f
    return-void
.end method

.method private takePhoto()V
    .registers 4

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isTakePhoto:Z

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    .line 202
    new-instance v1, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :cond_10
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0027

    return v0
.end method

.method protected initView()V
    .registers 9

    .line 332
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDeviceCamare(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 333
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0900d6

    .line 334
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCancleButton:Landroid/widget/Button;

    const v0, 0x7f0900d1

    .line 335
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0903c4

    .line 336
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPhotoLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905c1

    .line 337
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPhotoButton:Landroid/widget/ImageView;

    const v0, 0x7f090197

    .line 338
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mFlashButton:Landroid/widget/ImageView;

    const v0, 0x7f0900e1

    .line 339
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->changeBack:Landroid/widget/ImageView;

    .line 340
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->setOnclickListener()V

    .line 341
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 342
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->openCamera()V

    goto :goto_94

    .line 344
    :cond_62
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    move-object v2, p0

    .line 344
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mDialog:Landroid/app/Dialog;

    :goto_94
    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-CameraActivity(Landroid/view/View;)V
    .registers 4

    .line 351
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-le p1, v0, :cond_d

    .line 352
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_12

    .line 354
    :cond_d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->permissionsCamer:[Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 356
    :goto_12
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-device-activity-CameraActivity(Landroid/view/View;)V
    .registers 2

    .line 358
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onTouchEvent$0$com-keephealth-android-ui-device-activity-CameraActivity()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFoucing:Z

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;

    if-eqz v1, :cond_f

    .line 166
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/camera/OverCameraView;->setFoucuing(Z)V

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/camera/OverCameraView;->disDrawTouchFocusRect()V

    :cond_f
    return-void
.end method

.method synthetic lambda$requestPermissionsFail$4$com-keephealth-android-ui-device-activity-CameraActivity(Landroid/view/View;)V
    .registers 5

    .line 553
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 555
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 556
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$5$com-keephealth-android-ui-device-activity-CameraActivity(Landroid/view/View;)V
    .registers 2

    .line 558
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 559
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->finish()V

    return-void
.end method

.method synthetic lambda$takePhoto$1$com-keephealth-android-ui-device-activity-CameraActivity([BLandroid/hardware/Camera;)V
    .registers 5

    .line 204
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->imageData:[B

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_9

    .line 207
    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 210
    :cond_9
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const p2, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xa

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 212
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mPreviewLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_27

    .line 213
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    new-instance p2, Lcom/keephealth/android/ui/device/activity/CameraActivity$2;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_27
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 569
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_13

    .line 571
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 572
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->openCamera()V

    goto :goto_13

    .line 574
    :cond_10
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->finish()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d6

    if-ne p1, v0, :cond_d

    .line 278
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->finish()V

    goto :goto_2b

    :cond_d
    const v0, 0x7f0905c1

    if-ne p1, v0, :cond_1a

    .line 280
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isTakePhoto:Z

    if-nez p1, :cond_2b

    .line 281
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->takePhoto()V

    goto :goto_2b

    :cond_1a
    const v0, 0x7f090197

    if-ne p1, v0, :cond_23

    .line 284
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->switchFlash()V

    goto :goto_2b

    :cond_23
    const v0, 0x7f0900e1

    if-ne p1, v0, :cond_2b

    .line 286
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->switchCamera()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 528
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCamer:Z

    .line 529
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDeviceCamare(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 530
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->deviceCallback:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    .line 531
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_31

    const/4 v1, 0x0

    .line 533
    :try_start_1d
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 534
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 535
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 536
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    :cond_31
    :goto_31
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 490
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isPause:Z

    .line 492
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_18

    .line 493
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 494
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    .line 498
    :cond_18
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 517
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isPause:Z

    if-eqz v0, :cond_10

    .line 518
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 519
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->openCamera()V

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isPause:Z

    .line 523
    :cond_10
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    .line 154
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFoucing:Z

    if-nez v0, :cond_34

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x1

    .line 157
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFoucing:Z

    .line 158
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_26

    iget-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->isTakePhoto:Z

    if-nez v3, :cond_26

    .line 159
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;

    if-eqz v3, :cond_26

    .line 160
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/keephealth/android/views/camera/OverCameraView;->setTouchFoucusRect(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusCallback;FF)V

    .line 163
    :cond_26
    new-instance v0, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mRunnable:Ljava/lang/Runnable;

    .line 171
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_34
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestPermissionsFail(I)V
    .registers 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_41

    .line 550
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 551
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    new-instance v6, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    move-object v1, p0

    .line 551
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_41

    .line 562
    :cond_3e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->finish()V

    :cond_41
    :goto_41
    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 2

    .line 545
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->openCamera()V

    return-void
.end method

.method public switchCamera()V
    .registers 3

    .line 292
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 293
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    goto :goto_b

    :cond_8
    const/4 v0, 0x0

    .line 295
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    .line 297
    :goto_b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1f

    .line 299
    :try_start_f
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    :cond_1f
    :goto_1f
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3f

    .line 309
    :try_start_29
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    :goto_33
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_3f
    return-void
.end method
