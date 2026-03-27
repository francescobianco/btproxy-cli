.class public Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "FirmwareUpdateActivity.java"


# static fields
.field private static final DOWN_FAILD:I = 0x0

.field private static final DOWN_UPDATE:I = 0x1

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0xc8


# instance fields
.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

.field private final dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

.field private downUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private mDfuDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHandler:Landroid/os/Handler;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090461
    .end annotation
.end field

.field outActivity:Z

.field private permissionsCamer:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

.field private pers:[Ljava/lang/String;

.field progressRate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090473
    .end annotation
.end field

.field private saveFileName:Ljava/lang/String;

.field tvTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f6
    .end annotation
.end field

.field tvTips2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f8
    .end annotation
.end field

.field private updaterTimeOut:Ljava/lang/Runnable;

.field private writeTimeOut:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SDKDemo/Device_update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->saveFileName:Ljava/lang/String;

    const/4 v0, 0x2

    .line 68
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->pers:[Ljava/lang/String;

    .line 86
    new-array v1, v0, [Ljava/lang/String;

    aput-object v5, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->permissionsCamer:[Ljava/lang/String;

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->permissionsLocation:[Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    .line 295
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->updaterTimeOut:Ljava/lang/Runnable;

    .line 312
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->writeTimeOut:Ljava/lang/Runnable;

    .line 325
    iput-boolean v4, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->outActivity:Z

    .line 433
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;JJ)V
    .registers 5

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downLoadRate(JJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mDfuDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mDfuDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->setConnectListener()V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->saveFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/os/Handler;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->startDfu()V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->updaterTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    .line 146
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->fileName:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 149
    :cond_4c
    new-instance v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 158
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$1;->start()V

    return-void
.end method

.method private downLoadRate(JJ)V
    .registers 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    cmp-long v3, p1, v1

    const v4, 0x7f100209

    .line 233
    const-string v5, "KB"

    const-wide/16 v6, 0x400

    const-string v8, "\uff1a"

    const v9, 0x7f100208

    const-string v10, "%"

    const-wide/16 v11, 0x64

    if-ltz v3, :cond_80

    .line 234
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->updaterTimeOut:Ljava/lang/Runnable;

    const-wide/16 v14, 0x2710

    invoke-virtual {v3, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long v11, v11, p1

    div-long/2addr v11, v1

    long-to-int v11, v11

    invoke-virtual {v3, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 236
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->progressRate:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v6, v1, v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;J)V

    const/16 v1, 0x1f4

    invoke-static {v3, v1}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    goto :goto_d3

    .line 247
    :cond_80
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long v11, v11, p1

    div-long/2addr v11, v1

    long-to-int v11, v11

    invoke-virtual {v3, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 248
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->progressRate:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long/2addr v1, v6

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d3
    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_85
    .catchall {:try_start_2 .. :try_end_d} :catchall_81

    const/16 v2, 0x2710

    .line 173
    :try_start_f
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x4e20

    .line 174
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 175
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 176
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x194

    if-ne v3, v4, :cond_28

    .line 177
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_28
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_7c
    .catchall {:try_start_f .. :try_end_2c} :catchall_77

    .line 180
    :try_start_2c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_75
    .catchall {:try_start_2c .. :try_end_31} :catchall_72

    const/16 p2, 0x800

    .line 181
    :try_start_33
    new-array p2, p2, [B
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_35} :catch_7e
    .catchall {:try_start_33 .. :try_end_35} :catchall_70

    move v1, v0

    move v5, v1

    .line 183
    :cond_37
    :goto_37
    :try_start_37
    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_5e

    .line 184
    invoke-virtual {v4, p2, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v6

    const/4 v6, 0x1

    if-eqz v5, :cond_4a

    mul-int/lit8 v7, v1, 0x64

    .line 186
    div-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-le v7, v5, :cond_37

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    .line 188
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 189
    iput v6, v7, Landroid/os/Message;->what:I

    .line 190
    iput v1, v7, Landroid/os/Message;->arg1:I

    .line 191
    iput v2, v7, Landroid/os/Message;->arg2:I

    .line 192
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5d} :catch_6c
    .catchall {:try_start_37 .. :try_end_5d} :catchall_70

    goto :goto_37

    :cond_5e
    if-eqz p1, :cond_63

    .line 199
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_63
    if-eqz v3, :cond_68

    .line 202
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 205
    :cond_68
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9d

    :catch_6c
    move v8, v1

    move-object v1, p1

    move p1, v8

    goto :goto_88

    :catchall_70
    move-exception p2

    goto :goto_7a

    :catchall_72
    move-exception p2

    move-object v4, v1

    goto :goto_7a

    :catch_75
    move-object v4, v1

    goto :goto_7e

    :catchall_77
    move-exception p2

    move-object v3, v1

    move-object v4, v3

    :goto_7a
    move-object v1, p1

    goto :goto_a0

    :catch_7c
    move-object v3, v1

    move-object v4, v3

    :catch_7e
    :goto_7e
    move-object v1, p1

    move p1, v0

    goto :goto_88

    :catchall_81
    move-exception p2

    move-object v3, v1

    move-object v4, v3

    goto :goto_a0

    :catch_85
    move p1, v0

    move-object v3, v1

    move-object v4, v3

    .line 196
    :goto_88
    :try_start_88
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_9f

    if-eqz v1, :cond_92

    .line 199
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_92
    if-eqz v3, :cond_97

    .line 202
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_97
    if-eqz v4, :cond_9c

    .line 205
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_9c
    move v1, p1

    :goto_9d
    int-to-long p1, v1

    return-wide p1

    :catchall_9f
    move-exception p2

    :goto_a0
    if-eqz v1, :cond_a5

    .line 199
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a5
    if-eqz v3, :cond_aa

    .line 202
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_aa
    if-eqz v4, :cond_af

    .line 205
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 207
    :cond_af
    throw p2
.end method

.method private setConnectListener()V
    .registers 4

    .line 391
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnConnectListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V

    return-void
.end method

.method private startDfu()V
    .registers 4

    .line 353
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/16 v1, 0x7530

    .line 354
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanPeriod(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    const/4 v2, 0x1

    .line 355
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startScan(ILcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V

    return-void
.end method

.method private updateDfu()V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->progressRate:Landroid/widget/TextView;

    const-string v2, "0%"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100204

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lcom/keephealth/android/model/bean/BLEDevice;->setDfu(ZI)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 262
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->outActivity:Z

    .line 263
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0094

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 6

    .line 328
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 329
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x12e

    const v1, 0x7f100207

    const-string v2, "\u65ad\u5f00\u94fe\u63a5"

    const/4 v3, 0x1

    if-eq p1, v0, :cond_42

    const/16 v0, 0x270a

    if-eq p1, v0, :cond_16

    goto :goto_5a

    .line 340
    :cond_16
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_5a

    .line 341
    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 345
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 346
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    goto :goto_5a

    .line 331
    :cond_42
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->outActivity:Z

    if-eqz p1, :cond_58

    .line 332
    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    goto :goto_5a

    .line 336
    :cond_58
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->outActivity:Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method protected initView()V
    .registers 7

    .line 92
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "/SDKDemo/Device_update/"

    if-lt v0, v1, :cond_29

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->saveFileName:Ljava/lang/String;

    goto :goto_42

    .line 96
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->saveFileName:Ljava/lang/String;

    .line 98
    :goto_42
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->outActivity:Z

    .line 100
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    if-nez v1, :cond_5e

    return-void

    .line 104
    :cond_5e
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceUpdate;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downUrl:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 106
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/16 v2, 0xc8

    if-le v0, v1, :cond_7e

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_d2

    .line 111
    :cond_7e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->permissionsCamer:[Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_d2

    .line 114
    :cond_84
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceDfuName:Ljava/lang/String;

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceDfuName:Ljava/lang/String;

    const-string v2, "DfuTarg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cd

    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->outActivity:Z

    .line 116
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 117
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 118
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v4, v0, [Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v5, v4, v1

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 120
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v4, v0, [Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v5, v4, v1

    const/16 v5, 0x13

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 124
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 127
    :cond_cd
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downLoadFile(Ljava/lang/String;)V

    .line 129
    :goto_d2
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    invoke-static {p0, v0}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->registerProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    return-void
.end method

.method synthetic lambda$downLoadRate$0$com-keephealth-android-ui-device-activity-FirmwareUpdateActivity(J)V
    .registers 7

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->tvTips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100208

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x400

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "KB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceDfuName:Ljava/lang/String;

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceDfuName:Ljava/lang/String;

    const-string p2, "DfuTarg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 242
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->startDfu()V

    goto :goto_49

    .line 244
    :cond_46
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->updateDfu()V

    :goto_49
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 504
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 494
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 496
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 497
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 498
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    invoke-static {p0, v0}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->unregisterProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    .line 499
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 2

    .line 135
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsSuccess(I)V

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->downLoadFile(Ljava/lang/String;)V

    return-void
.end method
