.class public Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "FirmwareUpdateOtaNewActivity.java"


# static fields
.field private static final DOWN_FAILD:I = 0x0

.field private static final DOWN_UPDATE:I = 0x1

.field private static final MSG_INFO:I = 0xc

.field private static final MSG_PROGRESS:I = 0xb

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0xc8


# instance fields
.field bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private final connectTimeOut:Ljava/lang/Runnable;

.field private deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

.field private deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field private deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

.field private downUrl:Ljava/lang/String;

.field private e1:Ljava/lang/Exception;

.field private fileName:Ljava/lang/String;

.field private isConnectSuccess:Z

.field isGo1333:Z

.field private isReconnect:Z

.field private mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private mDevice:Lcom/keephealth/android/util/ota/Device;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mInfoHandler:Landroid/os/Handler;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090461
    .end annotation
.end field

.field outActivity:Z

.field private pers:[Ljava/lang/String;

.field progressRate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090473
    .end annotation
.end field

.field private final progressTimeOut:Ljava/lang/Runnable;

.field private saveFileName:Ljava/lang/String;

.field private final scanTimeOut:Ljava/lang/Runnable;

.field private sendNumber:I

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

.field private type:Ljava/lang/String;

.field update_comple:Z

.field private update_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 63
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->saveFileName:Ljava/lang/String;

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->pers:[Ljava/lang/String;

    .line 248
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    .line 508
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;

    .line 531
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scanTimeOut:Ljava/lang/Runnable;

    .line 554
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressTimeOut:Ljava/lang/Runnable;

    .line 576
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    .line 700
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->outActivity:Z

    .line 775
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mInfoHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;JJ)V
    .registers 5

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downLoadRate(JJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;I)I
    .registers 2

    .line 63
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->sendNumber:I

    return p1
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->saveFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)[B
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->readFirmware(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    return-object p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isConnectSuccess:Z

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scanTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 173
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->fileName:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 176
    :cond_4c
    new-instance v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 186
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$1;->start()V

    return-void
.end method

.method private downLoadRate(JJ)V
    .registers 14

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "totalSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  updateTotalSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, p1, p3

    .line 275
    const-string v1, "KB"

    const-wide/16 v2, 0x400

    const-string v4, "\uff1a"

    const v5, 0x7f100208

    const-string v6, "%"

    const-wide/16 v7, 0x64

    if-ltz v0, :cond_90

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v7

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 277
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressRate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long v2, p3, v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10020c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    new-instance p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3, p4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;J)V

    const/16 p2, 0x1f4

    invoke-static {p1, p2}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    goto :goto_e5

    .line 285
    :cond_90
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v7

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 286
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressRate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long/2addr p3, v2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100209

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e5
    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-string v0, "DOWN_FAILD:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 200
    :try_start_18
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_ac
    .catchall {:try_start_18 .. :try_end_23} :catchall_a8

    const/16 v4, 0x2710

    .line 202
    :try_start_25
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x4e20

    .line 203
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 204
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 205
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_8d

    .line 210
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_a2
    .catchall {:try_start_25 .. :try_end_3d} :catchall_9d

    .line 211
    :try_start_3d
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_8a
    .catchall {:try_start_3d .. :try_end_42} :catchall_87

    const/16 p2, 0x800

    .line 212
    :try_start_44
    new-array p2, p2, [B
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_46} :catch_85
    .catchall {:try_start_44 .. :try_end_46} :catchall_83

    move v3, v1

    move v7, v3

    .line 214
    :cond_48
    :goto_48
    :try_start_48
    invoke-virtual {v5, p2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_6f

    .line 215
    invoke-virtual {v6, p2, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v3, v8

    const/4 v8, 0x1

    if-eqz v7, :cond_5b

    mul-int/lit8 v9, v3, 0x64

    .line 217
    div-int/2addr v9, v4

    sub-int/2addr v9, v8

    if-le v9, v7, :cond_48

    :cond_5b
    add-int/lit8 v7, v7, 0x1

    .line 219
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 220
    iput v8, v9, Landroid/os/Message;->what:I

    .line 221
    iput v3, v9, Landroid/os/Message;->arg1:I

    .line 222
    iput v4, v9, Landroid/os/Message;->arg2:I

    .line 223
    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6e} :catch_7e
    .catchall {:try_start_48 .. :try_end_6e} :catchall_83

    goto :goto_48

    :cond_6f
    if-eqz p1, :cond_74

    .line 233
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_74
    if-eqz v5, :cond_79

    .line 236
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 239
    :cond_79
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_de

    :catch_7e
    move-exception p2

    move v10, v3

    move-object v3, p1

    move p1, v10

    goto :goto_b0

    :catchall_83
    move-exception p2

    goto :goto_a0

    :catch_85
    move-exception p2

    goto :goto_a5

    :catchall_87
    move-exception p2

    move-object v6, v3

    goto :goto_a0

    :catch_8a
    move-exception p2

    move-object v6, v3

    goto :goto_a5

    .line 206
    :cond_8d
    :try_start_8d
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 208
    new-instance p2, Ljava/lang/Exception;

    const-string v4, "fail!"

    invoke-direct {p2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9d} :catch_a2
    .catchall {:try_start_8d .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p2

    move-object v5, v3

    move-object v6, v5

    :goto_a0
    move-object v3, p1

    goto :goto_e1

    :catch_a2
    move-exception p2

    move-object v5, v3

    move-object v6, v5

    :goto_a5
    move-object v3, p1

    move p1, v1

    goto :goto_b0

    :catchall_a8
    move-exception p2

    move-object v5, v3

    move-object v6, v5

    goto :goto_e1

    :catch_ac
    move-exception p2

    move p1, v1

    move-object v5, v3

    move-object v6, v5

    .line 227
    :goto_b0
    :try_start_b0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 229
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->e1:Ljava/lang/Exception;

    .line 230
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_ce
    .catchall {:try_start_b0 .. :try_end_ce} :catchall_e0

    if-eqz v3, :cond_d3

    .line 233
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d3
    if-eqz v5, :cond_d8

    .line 236
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_d8
    if-eqz v6, :cond_dd

    .line 239
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_dd
    move v3, p1

    :goto_de
    int-to-long p1, v3

    return-wide p1

    :catchall_e0
    move-exception p2

    :goto_e1
    if-eqz v3, :cond_e6

    .line 233
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e6
    if-eqz v5, :cond_eb

    .line 236
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_eb
    if-eqz v6, :cond_f0

    .line 239
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 241
    :cond_f0
    throw p2
.end method

.method private readFirmware(Ljava/lang/String;)[B
    .registers 4

    .line 759
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 762
    new-array p1, p1, [B

    .line 763
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 764
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrtu5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private scan(I)V
    .registers 5

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scan_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scanTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    const/4 p1, 0x2

    .line 389
    new-array p1, p1, [Ljava/util/UUID;

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_PAIR:Ljava/util/UUID;

    aput-object v2, p1, v0

    .line 390
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const/16 v2, 0x2710

    .line 391
    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanPeriod(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReportDelay(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanWithServiceUUID([Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    const/4 v1, 0x3

    .line 394
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startScan(ILcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V

    return-void
.end method

.method private startDfu(I)V
    .registers 8

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDfu...a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setDfu(ZI)V

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 355
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 364
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 365
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bleDevice.getmBytes():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bleDevice.mRssi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rtrtu5"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v2, Lcom/keephealth/android/util/ota/Device;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget v5, v5, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-direct {v2, p1, v4, v5}, Lcom/keephealth/android/util/ota/Device;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    .line 368
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/util/ota/Device;->setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "bluetoothDevice:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->outActivity:Z

    .line 372
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v3, v1, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v4, v3, v0

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 374
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v3, v1, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v4, v3, v0

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 378
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {p1, p0, v1}, Lcom/keephealth/android/util/ota/Device;->connect(Landroid/content/Context;I)V

    .line 379
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateDfu(I)V
    .registers 6

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDfu_b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressRate:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 301
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update_type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v1, "c60_fail_ota"

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    if-eqz v1, :cond_90

    .line 310
    const-string v1, "!TextUtils.isEmpty(type) && type.equals(\"mainactivitynew\")"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 313
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 314
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 315
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scan(I)V

    goto :goto_a7

    .line 320
    :cond_90
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_a7
    :goto_a7
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

    .line 705
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 706
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x12e

    const v1, 0x7f100207

    const-string v2, "\u65ad\u5f00\u94fe\u63a5"

    const-string v3, "\u5173\u95ed\u84dd\u7259"

    if-eq p1, v0, :cond_7f

    const/16 v0, 0x535

    if-eq p1, v0, :cond_51

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_41

    const/16 v0, 0x270a

    if-eq p1, v0, :cond_20

    goto/16 :goto_98

    .line 747
    :cond_20
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_98

    .line 748
    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    .line 750
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 751
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    goto :goto_98

    .line 724
    :cond_41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_98

    .line 708
    :cond_51
    const-string p1, "tttre4"

    const-string v0, "1333"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string p1, "c60_fail_ota"

    invoke-static {p0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c60_fail_ota:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gf3e3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_98

    .line 712
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_98

    const/4 p1, 0x2

    .line 713
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scan(I)V

    goto :goto_98

    .line 740
    :cond_7f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_98

    .line 741
    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    :cond_98
    :goto_98
    return-void
.end method

.method protected initView()V
    .registers 6

    .line 92
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "update_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_type:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->type:Ljava/lang/String;

    const/4 v1, 0x1

    .line 96
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 97
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/SDKDemo/Device_update/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->saveFileName:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10020e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 101
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->outActivity:Z

    .line 102
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    if-nez v2, :cond_61

    return-void

    .line 106
    :cond_61
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 107
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceUpdate;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downUrl:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "downLoadFile:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downLoadFile(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-void
.end method

.method synthetic lambda$downLoadRate$0$com-keephealth-android-ui-device-activity-FirmwareUpdateOtaNewActivity(J)V
    .registers 7

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

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

    const/4 p1, 0x1

    .line 282
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->updateDfu(I)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 853
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v0, :cond_12

    .line 854
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v0, 0x0

    .line 823
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    .line 824
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 825
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 827
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 828
    const-string v1, "tttre4"

    const-string v2, "AppApplication.isOtaUpdate== false   1010"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 830
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2d

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scanTimeOut:Ljava/lang/Runnable;

    if-eqz v2, :cond_2d

    .line 831
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 833
    :cond_2d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_38

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressTimeOut:Ljava/lang/Runnable;

    if-eqz v2, :cond_38

    .line 834
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 837
    :cond_38
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z

    .line 838
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_46

    .line 839
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 840
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;

    .line 842
    :cond_46
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->sendNumber:I

    .line 843
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v1, :cond_55

    .line 844
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bleReceiveDisConnect"

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 847
    :cond_55
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 848
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 814
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStop()V

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onstop:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tttre4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_39

    const/4 v0, 0x1

    .line 817
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "update_comple"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_39
    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 3

    .line 163
    const-string p1, "tttre4"

    const-string v0, "AppApplication.isOtaUpdate== false   111"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 164
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 3

    .line 155
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsSuccess(I)V

    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->downLoadFile(Ljava/lang/String;)V

    .line 158
    const-string v0, "refuse"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
