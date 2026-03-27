.class public Lcom/keephealth/android/ui/main/activity/MainActivityNew;
.super Lcom/keephealth/android/base/BaseActivity;
.source "MainActivityNew.java"

# interfaces
.implements Lcom/keephealth/android/app/Constants;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final REQUEST_DEVICE:I = 0x1

.field private static final REQUEST_PERMISSION_BODY_SENSORS:I = 0xc8

.field private static final REQUEST_PERMISSION_BODY_SENSORS_GROUND:I = 0x12c

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x64


# instance fields
.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private bleTimeoutNumber:I

.field private final blue_code:I

.field commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private connUmber:I

.field private currentIndex:I

.field private deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

.field enableBtIntent:Landroid/content/Intent;

.field private enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final fragments:[Landroidx/fragment/app/Fragment;

.field private isUpdateDialog:Z

.field private lastOnBackTime:J

.field mActivityFrame:Landroid/widget/FrameLayout;

.field private mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogGps:Landroid/app/Dialog;

.field private mRequestAssit:Landroidx/work/OneTimeWorkRequest;

.field private mUpdateDialog:Landroid/app/Dialog;

.field private mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

.field notificationServiceManager:Lcom/keephealth/android/notification/NotificationServiceManager;

.field private permissionsLocation:[Ljava/lang/String;

.field private permissionsLocationBack:[Ljava/lang/String;

.field rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

.field rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

.field rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

.field rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

.field rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

.field private sportFragment:Lcom/keephealth/android/ui/sport/fragment/SportFragment;

.field tabHost:Landroidx/fragment/app/FragmentTabHost;

.field private updateDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 185
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x5

    .line 207
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->fragments:[Landroidx/fragment/app/Fragment;

    const-wide/16 v0, 0x0

    .line 656
    iput-wide v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->lastOnBackTime:J

    const/4 v0, 0x2

    .line 1016
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocation:[Ljava/lang/String;

    .line 1172
    new-instance v0, Lcom/keephealth/android/notification/NotificationServiceManager;

    invoke-direct {v0}, Lcom/keephealth/android/notification/NotificationServiceManager;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->notificationServiceManager:Lcom/keephealth/android/notification/NotificationServiceManager;

    const/16 v0, 0x44c

    .line 1551
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->blue_code:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I
    .registers 1

    .line 185
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/MainActivityNew;I)I
    .registers 2

    .line 185
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I

    return p1
.end method

.method static synthetic access$008(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I
    .registers 3

    .line 185
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I

    return v0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I
    .registers 1

    .line 185
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V
    .registers 1

    .line 185
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestFit()V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Landroid/app/Dialog;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/activity/MainActivityNew;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private bondBle()V
    .registers 4

    .line 990
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 991
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 992
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v2, "TA1J01N5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v2, "TA2J01N5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 993
    :cond_1e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 994
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 995
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_4e

    .line 996
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v0, 0x1

    .line 997
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x3ec

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 1003
    :cond_4e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_65

    :cond_52
    if-eqz v0, :cond_65

    .line 1007
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v1, :cond_60

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_60
    const/16 v0, 0x408

    .line 1008
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_65
    :goto_65
    return-void
.end method

.method private changeBottomUI(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7c

    if-eq p1, v0, :cond_62

    const/4 v2, 0x2

    if-eq p1, v2, :cond_48

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_11

    goto/16 :goto_9c

    .line 1371
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1372
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1373
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1374
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1375
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    goto :goto_9c

    .line 1363
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1364
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1365
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1366
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1367
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1368
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateUi()V

    goto :goto_9c

    .line 1356
    :cond_48
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1357
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1358
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1359
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1360
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    goto :goto_9c

    .line 1349
    :cond_62
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1350
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1351
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1352
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1353
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    goto :goto_9c

    .line 1340
    :cond_7c
    const-string p1, "ddeew6s"

    const-string v2, "changeBottomUI_main_0..."

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1342
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1343
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1344
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    .line 1345
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setChecked(Z)V

    :goto_9c
    return-void
.end method

.method private checkPermissions()V
    .registers 5

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "VERSION_UPDATE"

    invoke-static {p0, v3, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 435
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showUpdateDialog()V

    goto :goto_2c

    :cond_1c
    const/4 v0, 0x1

    .line 437
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "GOOGLE_REQUEST"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 438
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestFit()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private getGps()V
    .registers 11

    .line 1019
    invoke-static {p0}, Lcom/keephealth/android/util/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1004a2

    const v2, 0x7f1004a3

    const v3, 0x7f1004a1

    const/4 v4, 0x3

    if-eqz v0, :cond_134

    .line 1020
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getGps\u539f\u59cb: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->isNotificationEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1022
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    const v0, 0x7f1004a6

    .line 1023
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f1004a4

    .line 1024
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    move-object v4, p0

    .line 1023
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_165

    .line 1035
    :cond_5e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_6f

    const/4 v0, 0x1

    .line 1036
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v6, v0, v5

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocationBack:[Ljava/lang/String;

    goto :goto_72

    :cond_6f
    const/4 v0, 0x0

    .line 1038
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocationBack:[Ljava/lang/String;

    .line 1041
    :goto_72
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 1042
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 1043
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1044
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    move-object v4, p0

    .line 1043
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialogGps:Landroid/app/Dialog;

    goto/16 :goto_165

    .line 1055
    :cond_b0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocationBack:[Ljava/lang/String;

    const-string v1, "com.keephealth.android.ui.device.activity.devicepolyline.LocationBackgroundService"

    if-eqz v0, :cond_117

    .line 1056
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fa

    .line 1057
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 1058
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10037c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1059
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100378

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v7, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda13;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    move-object v2, p0

    .line 1058
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialogGps:Landroid/app/Dialog;

    goto :goto_165

    .line 1075
    :cond_fa
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    if-eqz v0, :cond_165

    invoke-static {p0, v1}, Lcom/keephealth/android/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_165

    .line 1076
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_111

    .line 1077
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    .line 1079
    :cond_111
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_165

    .line 1083
    :cond_117
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    if-eqz v0, :cond_165

    invoke-static {p0, v1}, Lcom/keephealth/android/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_165

    .line 1084
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_12e

    .line 1085
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    .line 1087
    :cond_12e
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_165

    .line 1093
    :cond_134
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 1094
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1095
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda14;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda15;

    invoke-direct {v9}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda15;-><init>()V

    move-object v4, p0

    .line 1094
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    :cond_165
    :goto_165
    return-void
.end method

.method private initListener()V
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$2;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$3;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$4;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$5;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$6;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMedal(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 8

    .line 444
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMedalDataDao()Lcom/keephealth/android/greendao/gen/MedalDataDao;

    move-result-object v0

    .line 445
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->setDefalutMedal()Ljava/util/List;

    move-result-object v1

    .line 446
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_56

    .line 449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/MedalResult;

    .line 450
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getMedalNum()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 451
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getMedalNum()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v4}, Lcom/keephealth/android/util/DateUtil;->parseServerTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    goto :goto_20

    .line 454
    :cond_56
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->deleteAll()V

    .line 455
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method private isNotificationEnabled()Z
    .registers 3

    .line 1105
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1106
    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1108
    const-class v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getGps$14(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$handleMessage$5(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$initView$0(Landroidx/activity/result/ActivityResult;)V
    .registers 1

    .line 254
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    return-void
.end method

.method static synthetic lambda$requestPermissionsFail$27(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$requestPermissionsSuccess$21(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$requestPermissionsSuccess$23(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$updateUi$17(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1402
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private requestFit()V
    .registers 7

    const/4 v0, 0x0

    .line 700
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "GOOGLE_REQUEST"

    invoke-static {p0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 701
    const-string v1, "googlefit"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_63

    .line 703
    invoke-static {p0}, Lcom/keephealth/android/util/NetworkUtil;->checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 704
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "android.permission.BODY_SENSORS"

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v2

    const/16 v5, 0xc8

    if-eqz v2, :cond_5c

    .line 705
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-le v2, v4, :cond_50

    .line 706
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "android.permission.BODY_SENSORS_BACKGROUND"

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 707
    invoke-static {p0, v1, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 709
    :try_start_40
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->connectGoogle(I)V
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_47} :catch_63

    goto :goto_63

    .line 712
    :cond_48
    new-array v1, v3, [Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-virtual {p0, v5, v1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_63

    .line 715
    :cond_50
    invoke-static {p0, v1, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 717
    :try_start_53
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->connectGoogle(I)V
    :try_end_5b
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_5b} :catch_63

    goto :goto_63

    .line 722
    :cond_5c
    :try_start_5c
    new-array v1, v3, [Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-virtual {p0, v5, v1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestPermissions(I[Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    :goto_63
    return-void
.end method

.method private setDefalutMedal()Ljava/util/List;
    .registers 71
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/MedalData;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v11, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const-wide/16 v1, 0x0

    const v3, 0x7f1003eb

    const v4, 0x7f1003ec

    const v5, 0x7f0d0168

    const v6, 0x7f0d0169

    const/4 v7, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 461
    new-instance v0, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x1

    const-wide/16 v13, 0x1

    const v15, 0x7f1003ed

    const v16, 0x7f1003ee

    const v17, 0x7f0d016a

    const v18, 0x7f0d016b

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 463
    new-instance v1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const/16 v33, 0x1

    const-wide/16 v24, 0x2

    const v26, 0x7f1003ef

    const v27, 0x7f1003f0

    const v28, 0x7f0d016c

    const v29, 0x7f0d016d

    const/16 v30, 0x0

    move-object/from16 v23, v1

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 465
    new-instance v2, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x3

    const v15, 0x7f1003f1

    const v16, 0x7f1003f2

    const v17, 0x7f0d016e

    const v18, 0x7f0d016f

    move-object v12, v2

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 467
    new-instance v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x4

    const v26, 0x7f1003f3

    const v27, 0x7f1003f4

    const v28, 0x7f0d0170

    const v29, 0x7f0d0171

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 469
    new-instance v4, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x5

    const v15, 0x7f1003ac

    const v16, 0x7f1003ad

    const v17, 0x7f0d012c

    const v18, 0x7f0d012d

    move-object v12, v4

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 471
    new-instance v5, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x6

    const v26, 0x7f1003aa

    const v27, 0x7f1003ab

    const v28, 0x7f0d012a

    const v29, 0x7f0d012b

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 473
    new-instance v6, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x7

    const v15, 0x7f1003ce

    const v16, 0x7f1003d5

    const v17, 0x7f0d0153

    const v18, 0x7f0d0154

    move-object v12, v6

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 475
    new-instance v7, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x8

    const v26, 0x7f1003cf

    const v27, 0x7f1003d4

    const v28, 0x7f0d0151

    const v29, 0x7f0d0152

    move-object/from16 v23, v7

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 477
    new-instance v8, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x9

    const v15, 0x7f1003d8

    const v16, 0x7f1003db

    const v17, 0x7f0d0159

    const v18, 0x7f0d015a

    move-object v12, v8

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 479
    new-instance v9, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0xa

    const v26, 0x7f1003d0

    const v27, 0x7f1003d3

    const v28, 0x7f0d0150

    const v29, 0x7f0d014f

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 481
    new-instance v10, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0xb

    const v15, 0x7f1003d9

    const v16, 0x7f1003da

    const v17, 0x7f0d0157

    const v18, 0x7f0d0158

    move-object v12, v10

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 483
    new-instance v12, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0xc

    const v26, 0x7f1003dc

    const v27, 0x7f1003dd

    const v28, 0x7f0d015b

    const v29, 0x7f0d015c

    move-object/from16 v23, v12

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 485
    new-instance v14, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/16 v23, 0x1

    const-wide/16 v15, 0xd

    const v17, 0x7f1003d1

    const v18, 0x7f1003d2

    const v19, 0x7f0d014e

    const v20, 0x7f0d014f

    const/16 v24, 0x0

    move-object v13, v14

    move-object/from16 v34, v14

    move-wide v14, v15

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v24

    invoke-direct/range {v13 .. v23}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 487
    new-instance v13, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x1

    const-wide/16 v36, 0xe

    const v38, 0x7f1003d6

    const v39, 0x7f1003d7

    const v40, 0x7f0d0155

    const v41, 0x7f0d0156

    const/16 v42, 0x0

    move-object/from16 v35, v13

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 490
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v24, 0x2

    const-wide/16 v16, 0xf

    const v18, 0x7f1003b2

    const v19, 0x7f1003b5

    const v20, 0x7f0d0134

    const v21, 0x7f0d0135

    const/16 v25, 0x0

    move-object v14, v15

    move-object/from16 v46, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v25

    invoke-direct/range {v14 .. v24}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 492
    new-instance v14, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x2

    const-wide/16 v36, 0x10

    const v38, 0x7f1003b6

    const v39, 0x7f1003b9

    const v40, 0x7f0d0138

    const v41, 0x7f0d0139

    move-object/from16 v35, v14

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 494
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/16 v25, 0x2

    const-wide/16 v16, 0x11

    const v18, 0x7f1003ae

    const v19, 0x7f1003b1

    const v20, 0x7f0d0130

    const v21, 0x7f0d0131

    const/16 v22, 0x0

    move-object/from16 v26, v15

    invoke-direct/range {v15 .. v25}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 496
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x12

    const v38, 0x7f1003b3

    const v39, 0x7f1003b4

    const v40, 0x7f0d0132

    const v41, 0x7f0d0133

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v16, v15

    .line 498
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const/16 v57, 0x2

    const-wide/16 v48, 0x13

    const v50, 0x7f1003b7

    const v51, 0x7f1003b8

    const v52, 0x7f0d0136

    const v53, 0x7f0d0137

    const/16 v54, 0x0

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v17, v15

    .line 500
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x14

    const v38, 0x7f1003af

    const v39, 0x7f1003b0

    const v40, 0x7f0d012e

    const v41, 0x7f0d012f

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v18, v15

    .line 502
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x15

    const v50, 0x7f100404

    const v51, 0x7f100407

    const v52, 0x7f0d0181

    const v53, 0x7f0d0182

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v19, v15

    .line 504
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x16

    const v38, 0x7f10040a

    const v39, 0x7f10040b

    const v40, 0x7f0d0185

    const v41, 0x7f0d0186

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v20, v15

    .line 506
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x17

    const v50, 0x7f10040c

    const v51, 0x7f10040d

    const v52, 0x7f0d0187

    const v53, 0x7f0d0188

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v21, v15

    .line 508
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x18

    const v38, 0x7f100405

    const v39, 0x7f100406

    const v40, 0x7f0d017f

    const v41, 0x7f0d0180

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v22, v15

    .line 510
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x19

    const v50, 0x7f100408

    const v51, 0x7f100409

    const v52, 0x7f0d0183

    const v53, 0x7f0d0184

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v23, v15

    .line 513
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x3

    const-wide/16 v36, 0x1a

    const v38, 0x7f1003be

    const v39, 0x7f1003c1

    const v40, 0x7f0d0140

    const v41, 0x7f0d0141

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v24, v15

    .line 515
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const/16 v57, 0x3

    const-wide/16 v48, 0x1b

    const v50, 0x7f1003c8

    const v51, 0x7f1003cd

    const v52, 0x7f0d014c

    const v53, 0x7f0d014d

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v25, v15

    .line 517
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x1c

    const v38, 0x7f1003ba

    const v39, 0x7f1003bd

    const v40, 0x7f0d013c

    const v41, 0x7f0d013d

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v27, v15

    .line 519
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x1d

    const v50, 0x7f1003c2

    const v51, 0x7f1003c5

    const v52, 0x7f0d0144

    const v53, 0x7f0d0145

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v28, v15

    .line 521
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x1e

    const v38, 0x7f1003c9

    const v39, 0x7f1003cc

    const v40, 0x7f0d014a

    const v41, 0x7f0d014b

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v29, v15

    .line 523
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x1f

    const v50, 0x7f1003bb

    const v51, 0x7f1003bc

    const v52, 0x7f0d013a

    const v53, 0x7f0d013b

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v30, v15

    .line 525
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x20

    const v38, 0x7f1003bf

    const v39, 0x7f1003c0

    const v40, 0x7f0d013e

    const v41, 0x7f0d013f

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v31, v15

    .line 527
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x21

    const v50, 0x7f1003c3

    const v51, 0x7f1003c4

    const v52, 0x7f0d0142

    const v53, 0x7f0d0143

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v32, v15

    .line 529
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x22

    const v38, 0x7f1003c6

    const v39, 0x7f1003c7

    const v40, 0x7f0d0146

    const v41, 0x7f0d0147

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v33, v15

    .line 531
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x23

    const v50, 0x7f1003ca

    const v51, 0x7f1003cb

    const v52, 0x7f0d0148

    const v53, 0x7f0d0149

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 533
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x24

    const v38, 0x7f1003f7

    const v39, 0x7f1003f8

    const v40, 0x7f0d0174

    const v41, 0x7f0d0175

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 535
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const/16 v58, 0x3

    const-wide/16 v49, 0x25

    const v51, 0x7f1003f9

    const v52, 0x7f1003fa

    const v53, 0x7f0d0176

    const v54, 0x7f0d0177

    const/16 v55, 0x0

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v36, v15

    .line 537
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const/16 v69, 0x3

    const-wide/16 v60, 0x26

    const v62, 0x7f1003f5

    const v63, 0x7f1003f6

    const v64, 0x7f0d0172

    const v65, 0x7f0d0173

    const/16 v66, 0x0

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v37, v15

    .line 539
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x27

    const v51, 0x7f1003fc

    const v52, 0x7f1003fd

    const v53, 0x7f0d0179

    const v54, 0x7f0d017a

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v38, v15

    .line 541
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x28

    const v62, 0x7f1003fb

    const v63, 0x7f100400

    const v64, 0x7f0d0178

    const v65, 0x7f0d017d

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v39, v15

    .line 543
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x29

    const v51, 0x7f1003fe

    const v52, 0x7f1003ff

    const v53, 0x7f0d017b

    const v54, 0x7f0d017c

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v40, v15

    .line 546
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const/16 v69, 0x4

    const-wide/16 v60, 0x2a

    const v62, 0x7f1003e2

    const v63, 0x7f1003e5

    const v64, 0x7f0d0163

    const v65, 0x7f0d0164

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v41, v15

    .line 548
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const/16 v58, 0x4

    const-wide/16 v49, 0x2b

    const v51, 0x7f1003de

    const v52, 0x7f1003e1

    const v53, 0x7f0d015f

    const v54, 0x7f0d0160

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v42, v15

    .line 550
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x2c

    const v62, 0x7f1003e3

    const v63, 0x7f1003e4

    const v64, 0x7f0d0161

    const v65, 0x7f0d0162

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v43, v15

    .line 552
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x2d

    const v51, 0x7f1003e6

    const v52, 0x7f1003e7

    const v53, 0x7f0d0165

    const v54, 0x7f0d0166

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v44, v15

    .line 554
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x2e

    const v62, 0x7f1003df

    const v63, 0x7f1003e0

    const v64, 0x7f0d015d

    const v65, 0x7f0d015e

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v45, v15

    .line 557
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 558
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v34

    .line 571
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v46

    .line 573
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    .line 575
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    .line 576
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    .line 577
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    .line 578
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    .line 579
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    .line 580
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    .line 581
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    .line 582
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    .line 583
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    .line 584
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    .line 585
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    .line 586
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    .line 587
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    .line 588
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    .line 589
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v31

    .line 590
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    .line 591
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v33

    .line 592
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v47

    .line 593
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v35

    .line 594
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v36

    .line 595
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v37

    .line 596
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v38

    .line 597
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v39

    .line 598
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v40

    .line 599
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v41

    .line 600
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v42

    .line 601
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v43

    .line 602
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    .line 603
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v45

    .line 604
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v15
.end method

.method private showUpdateDialog()V
    .registers 2

    .line 611
    new-instance v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/UserHttp;->updateVersion(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private updateTab()V
    .registers 7

    .line 1622
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    .line 1623
    :goto_7
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 1624
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09023c

    .line 1625
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1626
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTab()I

    move-result v4

    const v5, 0x7f0905e0

    if-ne v1, v4, :cond_43

    .line 1627
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1628
    invoke-static {}, Lcom/keephealth/android/util/TabDb;->getTabsImgLight()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_60

    .line 1630
    :cond_43
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060152

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1631
    invoke-static {}, Lcom/keephealth/android/util/TabDb;->getTabsImg()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_63
    return-void
.end method

.method private updateUi()V
    .registers 3

    .line 1381
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 1382
    const-string v0, "update_comple"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1383
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_26

    if-eqz v0, :cond_1f

    .line 1386
    new-instance v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda26;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-static {p0, v0}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateDeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mUpdateDialog:Landroid/app/Dialog;

    goto :goto_26

    .line 1452
    :cond_1f
    const-string v0, "rtft9"

    const-string v1, "DialogHelperNew.showUpdateDevice_home"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0065

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 10

    .line 736
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message.getType():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gtrfr43\u539f\u59cb"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x130

    const/4 v2, 0x0

    if-eq v0, v1, :cond_304

    const/16 v1, 0x131

    if-eq v0, v1, :cond_2fc

    const/16 v1, 0x2707

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2d3

    const/16 v1, 0x2708

    const-string v6, "gf3e3"

    if-eq v0, v1, :cond_2cd

    const v1, 0x7f100257

    sparse-switch v0, :sswitch_data_30c

    const-string p1, "com.keephealth.android.ui.device.activity.devicepolyline.LocationBackgroundService"

    packed-switch v0, :pswitch_data_36a

    goto/16 :goto_30b

    .line 938
    :pswitch_42
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 939
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda23;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda24;

    invoke-direct {v6}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda24;-><init>()V

    move-object v1, p0

    .line 939
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_30b

    .line 929
    :pswitch_7e
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_88

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30b

    .line 930
    :cond_88
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isGPSBackground:Z

    .line 932
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isDuringExercise:Z

    if-nez p1, :cond_30b

    .line 933
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getGps()V

    goto/16 :goto_30b

    .line 926
    :pswitch_93
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    goto/16 :goto_30b

    .line 765
    :pswitch_97
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100747

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 766
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10017c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v7, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    move-object v2, p0

    .line 765
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_30b

    .line 920
    :pswitch_c8
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-nez p1, :cond_30b

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isDuringExercise:Z

    if-nez p1, :cond_30b

    .line 921
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isGPSBackground:Z

    goto/16 :goto_30b

    .line 909
    :pswitch_d4
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    .line 910
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_e0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30b

    .line 911
    :cond_e0
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isGPSBackground:Z

    .line 913
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isDuringExercise:Z

    if-nez p1, :cond_30b

    .line 914
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getGps()V

    goto/16 :goto_30b

    .line 822
    :sswitch_eb
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    iput-boolean v2, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->isPausePage:Z

    .line 823
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateConnect()V

    goto/16 :goto_30b

    .line 758
    :sswitch_f6
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    if-eqz p1, :cond_30b

    .line 759
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 760
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1, v5}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    goto/16 :goto_30b

    .line 750
    :sswitch_103
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    goto/16 :goto_30b

    .line 746
    :sswitch_10b
    iput-boolean v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->isUpdateDialog:Z

    goto/16 :goto_30b

    .line 754
    :sswitch_10f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->clearSocket()V

    goto/16 :goto_30b

    .line 741
    :sswitch_116
    iget p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    if-ne p1, v4, :cond_30b

    .line 742
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateUi(I)V

    goto/16 :goto_30b

    .line 959
    :sswitch_122
    invoke-static {}, Lcom/keephealth/android/app/ActivityCollector;->finishAll()V

    .line 960
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    const-string v0, "SOS"

    if-nez p1, :cond_154

    .line 961
    const-string p1, "\u6536\u5230\u6d88\u606f:1035"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100668

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda25;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    .line 963
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 976
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 977
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_30b

    .line 979
    :cond_154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230\u6d88\u606f:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/CommonDialog;->isShowing()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_30b

    .line 981
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_30b

    .line 949
    :sswitch_17c
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bondBle()V

    .line 950
    invoke-static {}, Lcom/keephealth/android/util/ServiceConfigurationUtils;->isHaveScreen()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_194

    const p1, 0x7f080144

    .line 951
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 952
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v1, v0, p1, v0, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_30b

    :cond_194
    const p1, 0x7f080143

    .line 954
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 955
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v1, v0, p1, v0, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_30b

    .line 882
    :sswitch_1a2
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateTempUnit()V

    goto/16 :goto_30b

    .line 879
    :sswitch_1a9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateWeightData()V

    goto/16 :goto_30b

    .line 876
    :sswitch_1b0
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateWaterData()V

    goto/16 :goto_30b

    .line 873
    :sswitch_1b7
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->cleanHistoryData()V

    goto/16 :goto_30b

    .line 853
    :sswitch_1be
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "VERSION_UPDATE"

    invoke-static {p0, v2, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long p1, v0, v2

    if-lez p1, :cond_30b

    .line 854
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showUpdateDialog()V

    goto/16 :goto_30b

    .line 842
    :sswitch_1db
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 843
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateSportData(Lcom/keephealth/android/greendao/bean/HealthActivity;)V

    .line 844
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->sportFragment:Lcom/keephealth/android/ui/sport/fragment/SportFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/sport/fragment/SportFragment;->sportChange()V

    goto/16 :goto_30b

    .line 827
    :sswitch_1ed
    const-string p1, "\u65ad\u5f00\u8fde\u63a5"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->unConnect(I)V

    .line 829
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateConnect()V

    .line 830
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    goto/16 :goto_30b

    .line 778
    :sswitch_201
    iput v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleTimeoutNumber:I

    .line 779
    sget p1, Lcom/keephealth/android/app/AppApplication;->inScanDevice:I

    if-nez p1, :cond_30b

    .line 780
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u662f\u5426\u89e3\u9664\u7ed1\u5b9a:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "   currentIndex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  BluetoothLe.getDefault().getConnected():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  AppApplication.isShowHome:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEE33fD"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    if-nez p1, :cond_30b

    .line 783
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_26c

    .line 784
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReconnect(Z)V

    .line 785
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz p1, :cond_30b

    .line 786
    const-string p1, "a20"

    invoke-virtual {p0, v2, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    .line 787
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getAddDeviceStatus2(I)V

    goto/16 :goto_30b

    .line 790
    :cond_26c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1, v5}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connect(I)V

    .line 791
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    goto/16 :goto_30b

    .line 813
    :sswitch_275
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showEcg()V

    goto/16 :goto_30b

    .line 797
    :sswitch_27a
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda22;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_30b

    .line 865
    :sswitch_28f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->unConnect(I)V

    .line 866
    iget p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    if-ne p1, v4, :cond_30b

    .line 867
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateConnect()V

    goto/16 :goto_30b

    :sswitch_29f
    const/16 p1, 0x133

    .line 833
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 834
    sput v5, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 835
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->unConnect(I)V

    .line 836
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateConnect()V

    goto :goto_30b

    .line 850
    :sswitch_2b3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    goto :goto_30b

    .line 847
    :sswitch_2bb
    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance(Landroid/app/Activity;)Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->connectGoogle(I)V

    goto :goto_30b

    .line 885
    :sswitch_2c3
    iget p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    if-ne p1, v4, :cond_30b

    .line 886
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateConnect()V

    goto :goto_30b

    .line 817
    :cond_2cd
    const-string p1, "\u8fde\u63a5\u6210\u529f"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30b

    .line 890
    :cond_2d3
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_2f9

    .line 892
    iget p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleTimeoutNumber:I

    if-ge p1, v4, :cond_2ed

    add-int/2addr p1, v5

    .line 893
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleTimeoutNumber:I

    .line 894
    const-string p1, "courseviewmodel"

    const-string v0, "\u8d85\u65f6..."

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->bleTimeout(I)V

    goto :goto_30b

    .line 897
    :cond_2ed
    iput v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleTimeoutNumber:I

    .line 898
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/16 v0, 0x141

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    goto :goto_30b

    .line 901
    :cond_2f9
    iput v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleTimeoutNumber:I

    goto :goto_30b

    .line 862
    :cond_2fc
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    goto :goto_30b

    .line 839
    :cond_304
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    :cond_30b
    :goto_30b
    return-void

    :sswitch_data_30c
    .sparse-switch
        0x65 -> :sswitch_2c3
        0x68 -> :sswitch_2bb
        0x6e -> :sswitch_2b3
        0x12d -> :sswitch_29f
        0x133 -> :sswitch_28f
        0x29a -> :sswitch_27a
        0x309 -> :sswitch_275
        0x315 -> :sswitch_201
        0x3e7 -> :sswitch_1ed
        0x3eb -> :sswitch_1db
        0x3ed -> :sswitch_1be
        0x3ef -> :sswitch_1b7
        0x3f1 -> :sswitch_1b0
        0x3f3 -> :sswitch_1a9
        0x3f7 -> :sswitch_1a2
        0x406 -> :sswitch_17c
        0x40b -> :sswitch_122
        0x592 -> :sswitch_116
        0x856 -> :sswitch_10f
        0x169d -> :sswitch_10b
        0x1a15 -> :sswitch_103
        0x2317 -> :sswitch_f6
        0x255a -> :sswitch_eb
    .end sparse-switch

    :pswitch_data_36a
    .packed-switch 0x3ff
        :pswitch_d4
        :pswitch_c8
        :pswitch_97
        :pswitch_93
        :pswitch_7e
        :pswitch_42
    .end packed-switch
.end method

.method protected initView()V
    .registers 10

    .line 228
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const v0, 0x7f09048b

    .line 229
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/NotifyRadioButton;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    const v0, 0x7f09048c

    .line 230
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/NotifyRadioButton;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    const v0, 0x7f09048a

    .line 231
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/NotifyRadioButton;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    const v0, 0x7f090489

    .line 232
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/NotifyRadioButton;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    const v0, 0x7f09048d

    .line 233
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/NotifyRadioButton;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    const v0, 0x7f090049

    .line 234
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mActivityFrame:Landroid/widget/FrameLayout;

    const v1, 0x7f0905af

    .line 235
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTabHost;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    .line 236
    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 237
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    const/4 v1, 0x1

    .line 238
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFontProssDevice:Z

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    .line 240
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    .line 241
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_91

    .line 242
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bluetooth_connect"

    if-eqz v5, :cond_8a

    .line 243
    new-array v5, v1, [Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-static {p0, v5, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 245
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v6, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_91

    .line 247
    :cond_8a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v6, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    :cond_91
    :goto_91
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 251
    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda27;

    invoke-direct {v5}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {p0, v2, v5}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 262
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    .line 263
    const-string v2, "googlefit"

    invoke-static {p0, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_cc

    .line 265
    invoke-static {p0}, Lcom/keephealth/android/util/NetworkUtil;->checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 266
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v2

    if-nez v2, :cond_c5

    .line 267
    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance(Landroid/app/Activity;)Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    goto :goto_cc

    .line 269
    :cond_c5
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->setActivity(Landroid/app/Activity;)V

    .line 276
    :cond_cc
    :goto_cc
    const-string v2, "V103"

    const-string v5, "MAINMENUUPDATE"

    invoke-static {p0, v5, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    const-string v6, "V120"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 278
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->initMedal(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 279
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 281
    invoke-static {p0, v5, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f9
    const/4 v2, -0x1

    .line 283
    iput v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    .line 284
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->layoutTitle:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 285
    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    .line 286
    new-instance v2, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    .line 287
    new-instance v2, Lcom/keephealth/android/ui/sport/fragment/SportFragment;

    invoke-direct {v2}, Lcom/keephealth/android/ui/sport/fragment/SportFragment;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->sportFragment:Lcom/keephealth/android/ui/sport/fragment/SportFragment;

    .line 288
    new-instance v2, Lcom/keephealth/android/ui/mine/fragment/MineFragmentNew;

    invoke-direct {v2}, Lcom/keephealth/android/ui/mine/fragment/MineFragmentNew;-><init>()V

    .line 289
    new-instance v6, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;

    invoke-direct {v6}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;-><init>()V

    .line 290
    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->fragments:[Landroidx/fragment/app/Fragment;

    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    aput-object v8, v7, v3

    .line 291
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->sportFragment:Lcom/keephealth/android/ui/sport/fragment/SportFragment;

    aput-object v8, v7, v1

    const/4 v8, 0x2

    .line 292
    aput-object v6, v7, v8

    const/4 v6, 0x3

    .line 293
    iget-object v8, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    aput-object v8, v7, v6

    const/4 v6, 0x4

    .line 294
    aput-object v2, v7, v6

    .line 295
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentTabHost;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v2, p0, v6, v0}, Landroidx/fragment/app/FragmentTabHost;->setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 302
    const-string v0, "a1"

    invoke-virtual {p0, v3, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 304
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-direct {v0, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mRequestAssit:Landroidx/work/OneTimeWorkRequest;

    .line 305
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mRequestAssit:Landroidx/work/OneTimeWorkRequest;

    invoke-virtual {v0, v2}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 307
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_18f

    .line 309
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEcg()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    goto :goto_1ae

    .line 312
    :cond_189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    goto :goto_1ae

    .line 315
    :cond_18f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_1a9

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v0, :cond_1a9

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v2, "A01W10N5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    goto :goto_1ae

    .line 318
    :cond_1a9
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    .line 322
    :goto_1ae
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1bf

    goto :goto_1c2

    .line 372
    :cond_1bf
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->checkPermissions()V

    .line 375
    :goto_1c2
    sput v1, Lcom/keephealth/android/app/AppApplication;->isIntentClass:I

    .line 376
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isVisibleFirst:Z

    .line 377
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->initListener()V

    return-void
.end method

.method synthetic lambda$getGps$10$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 1050
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialogGps:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1051
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$getGps$11$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 6

    .line 1060
    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x3ea

    if-nez p1, :cond_23

    .line 1062
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1064
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1065
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_28

    .line 1067
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocationBack:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestPermissions(I[Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method synthetic lambda$getGps$12$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 1070
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialogGps:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1071
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$getGps$13$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 3

    .line 1096
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1097
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7d0

    .line 1098
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$getGps$7$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 3

    .line 1025
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3eb

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1026
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_13

    .line 1027
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_13
    return-void
.end method

.method synthetic lambda$getGps$8$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 1030
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1031
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$getGps$9$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 5

    .line 1045
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1047
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 1048
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$handleMessage$1$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 767
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 768
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$handleMessage$2$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 771
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 772
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$handleMessage$3$com-keephealth-android-ui-main-activity-MainActivityNew()V
    .registers 4

    .line 798
    sget v0, Lcom/keephealth/android/app/AppApplication;->inScanDevice:I

    if-nez v0, :cond_28

    .line 799
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 800
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 801
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReconnect(Z)V

    const/4 v0, 0x1

    .line 802
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 803
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connect(I)V

    .line 804
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->requestBleSuccess:Z

    goto :goto_28

    .line 807
    :cond_26
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    :cond_28
    :goto_28
    return-void
.end method

.method synthetic lambda$handleMessage$4$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 3

    .line 941
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 942
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7d0

    .line 943
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$handleMessage$6$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 964
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->sendStopSos()[B

    move-result-object p2

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD_WRITE:Ljava/util/UUID;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew$8;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$8;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$15$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 5

    .line 1134
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x44c

    .line 1137
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onActivityResult$16$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 1139
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1140
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$requestPermissionsFail$26$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 3

    .line 1563
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1564
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 1565
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$28$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 5

    .line 1573
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1575
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x44c

    .line 1576
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$29$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 1578
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestPermissionsSuccess$20$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 3

    .line 1481
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1482
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 1483
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsSuccess$22$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 3

    .line 1505
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1506
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 1507
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsSuccess$24$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 6

    .line 1517
    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x3ea

    if-nez p1, :cond_23

    .line 1519
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1521
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1522
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_28

    .line 1524
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocationBack:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestPermissions(I[Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method synthetic lambda$requestPermissionsSuccess$25$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 2

    .line 1527
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1528
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$updateUi$18$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1405
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->enableBtIntent:Landroid/content/Intent;

    .line 1407
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1408
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$updateUi$19$com-keephealth-android-ui-main-activity-MainActivityNew(Landroid/view/View;)V
    .registers 5

    .line 1388
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_f5

    .line 1390
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_18

    const p1, 0x7f10020a

    .line 1391
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 1394
    :cond_18
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_e7

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_e7

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    if-eqz v0, :cond_2c

    goto/16 :goto_e7

    .line 1397
    :cond_2c
    const-string v0, "c60_fail_ota"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1398
    const-string v1, "S"

    const-string v2, "T"

    if-eqz v0, :cond_a6

    .line 1399
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_78

    .line 1400
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1401
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda28;-><init>()V

    const v1, 0x7f100193

    .line 1402
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 1403
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda29;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    const v1, 0x7f100257

    .line 1404
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 1411
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    .line 1412
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    return-void

    .line 1415
    :cond_78
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1416
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1417
    const-string v0, "type"

    const-string v1, "mainactivitynew"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1418
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_f5

    .line 1419
    :cond_92
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 1420
    const-class p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_f5

    .line 1422
    :cond_a0
    const-class p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_f5

    .line 1426
    :cond_a6
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1427
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1428
    const-class p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_f5

    .line 1429
    :cond_ba
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 1430
    const-class p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_f5

    .line 1432
    :cond_c8
    const-class p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_f5

    .line 1435
    :cond_ce
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    if-nez p1, :cond_f5

    .line 1436
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_f5

    .line 1438
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showToast(Ljava/lang/String;)V

    goto :goto_f5

    .line 1395
    :cond_e7
    :goto_e7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10053c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showToast(Ljava/lang/String;)V

    .line 1449
    :cond_f5
    :goto_f5
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .line 1116
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    const/4 v1, -0x1

    .line 1123
    const-string v2, "googlefit"

    if-eq p2, v1, :cond_15

    const/4 p1, 0x0

    .line 1124
    invoke-static {p0, v2, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_c7

    .line 1126
    :cond_15
    invoke-static {p0, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1127
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->handleSignInResult(ILandroid/content/Intent;)V

    goto/16 :goto_c7

    :cond_21
    const/16 p2, 0x44c

    .line 1129
    const-string p3, "android.permission.BLUETOOTH_CONNECT"

    if-ne p2, p1, :cond_65

    .line 1130
    invoke-static {p0, p3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3b

    const-string p1, "android.permission.BLUETOOTH_SCAN"

    .line 1131
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_3b

    .line 1144
    :cond_36
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->checkPermissions()V

    goto/16 :goto_c7

    .line 1133
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100449

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100257

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    .line 1132
    const-string v1, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    goto :goto_c7

    :cond_65
    const/16 p2, 0x7d0

    if-ne p1, p2, :cond_7f

    .line 1147
    invoke-static {p0}, Lcom/keephealth/android/util/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 1148
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getGps()V

    goto :goto_c7

    .line 1150
    :cond_73
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    goto :goto_c7

    :cond_7f
    const/16 p2, 0x3ea

    if-ne p2, p1, :cond_a2

    .line 1153
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    if-eqz p1, :cond_c7

    const-string p1, "com.keephealth.android.ui.device.activity.devicepolyline.LocationBackgroundService"

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c7

    .line 1154
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-nez p1, :cond_9c

    .line 1155
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    .line 1157
    :cond_9c
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_c7

    :cond_a2
    const/16 p2, 0x3eb

    if-ne p2, p1, :cond_b0

    .line 1160
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->isNotificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 1161
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getGps()V

    goto :goto_c7

    :cond_b0
    const/16 p2, 0x3ec

    if-ne p2, p1, :cond_c7

    .line 1164
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_c7

    .line 1165
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c7

    .line 1166
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bondBle()V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->lastOnBackTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->moveTaskToBack(Z)Z

    goto :goto_26

    .line 663
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->lastOnBackTime:J

    .line 664
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showToast(Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1272
    const-string v0, "\u6d4b\u8bd5\uff1aMainActivityNew:onCreate()"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1273
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v0, 0x0

    .line 670
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFontProssDevice:Z

    .line 671
    const-string v1, "finish"

    invoke-static {p0, v1, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 674
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mRequestAssit:Landroidx/work/OneTimeWorkRequest;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroidx/work/OneTimeWorkRequest;->getId()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 675
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mRequestAssit:Landroidx/work/OneTimeWorkRequest;

    invoke-virtual {v2}, Landroidx/work/OneTimeWorkRequest;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/WorkManager;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    .line 678
    :cond_26
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 679
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearDeviceCache()Z

    .line 680
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    .line 681
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 682
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    const/4 v0, 0x1

    .line 683
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRemote:Z

    .line 684
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 689
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 690
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    if-eqz p1, :cond_a

    .line 691
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->scrollTop()V

    :cond_a
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .line 1278
    const-string v0, "\u6d4b\u8bd5\uff1aMainActivityNew:onRestart()"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1279
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .registers 7

    .line 1201
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    .line 1202
    const-string v0, "sundayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    const/4 v0, 0x1

    .line 1262
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1203
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    const/4 v0, 0x0

    .line 1204
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    .line 1205
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->notificationServiceManager:Lcom/keephealth/android/notification/NotificationServiceManager;

    invoke-virtual {v2, p0}, Lcom/keephealth/android/notification/NotificationServiceManager;->bindIntelligentNotificationService(Landroid/content/Context;)V

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MainActivityNew:  AppApplication.isBackHome:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DiscoverServiceUtils.discoverService():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  AppApplication.requestBleSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/keephealth/android/app/AppApplication;->requestBleSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  AppApplication.isPairSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/keephealth/android/app/AppApplication;->isPairSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1208
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    const-string v3, "a5"

    if-eqz v2, :cond_bc

    .line 1209
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 1210
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 1211
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->requestBleSuccess:Z

    if-eqz v2, :cond_b6

    .line 1212
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->requestBleSuccess:Z

    .line 1213
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isPairSuccess:Z

    const/16 v4, 0x29a

    const-string v5, "firstUnband"

    if-eqz v2, :cond_97

    .line 1215
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 1218
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_89

    .line 1220
    :cond_7f
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1221
    const-string v2, "tty5rt"

    const-string v3, "post_5"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :goto_89
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->requestBleSuccess:Z

    .line 1224
    const-string v2, "a15"

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    .line 1225
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connect(I)V

    goto :goto_e3

    .line 1229
    :cond_97
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 1232
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_ac

    .line 1234
    :cond_a9
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1236
    :goto_ac
    invoke-virtual {p0, v0, v3}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    .line 1237
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connect(I)V

    goto :goto_e3

    .line 1241
    :cond_b6
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->deviceFragment:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateConnect()V

    goto :goto_e3

    .line 1245
    :cond_bc
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 1246
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "isRefresh"

    invoke-static {v2, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 1249
    const-string v2, "a6"

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    goto :goto_e3

    .line 1251
    :cond_d4
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    if-eqz v2, :cond_e3

    .line 1252
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    .line 1253
    invoke-virtual {p0, v0, v3}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showFragment(ILjava/lang/String;)V

    .line 1254
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connect(I)V

    .line 1259
    :cond_e3
    :goto_e3
    const-string v2, "\u6d4b\u8bd5\uff1aMainActivityNew:onResume()"

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1260
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "bluetooth_connect"

    if-eqz v2, :cond_f6

    .line 1262
    invoke-static {p0, v3, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_fd

    .line 1264
    :cond_f6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_fd
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 1284
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStart()V

    .line 1286
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/NotifyRadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 1287
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    goto :goto_3e

    .line 1288
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/NotifyRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1289
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    goto :goto_3e

    .line 1290
    :cond_1b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/NotifyRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x2

    .line 1291
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    goto :goto_3e

    .line 1292
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/NotifyRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x3

    .line 1293
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    goto :goto_3e

    .line 1294
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/NotifyRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x4

    .line 1295
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    .line 1298
    :cond_3e
    :goto_3e
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    .line 1299
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    .line 1300
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->homeIsFinishing:Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 1305
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStop()V

    const/4 v0, 0x0

    .line 1306
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    .line 1307
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->homeIsFinishing:Z

    .line 1308
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 2

    .line 1616
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateTab()V

    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 9

    .line 1555
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsFail(I)V

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_4e

    .line 1557
    const-string p1, "googlefit"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1558
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_7b

    .line 1560
    :cond_18
    invoke-static {p0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 1561
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1562
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda4;-><init>()V

    move-object v1, p0

    .line 1561
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto :goto_7b

    :cond_4e
    const/16 v0, 0x44c

    if-ne v0, p1, :cond_7b

    .line 1572
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100449

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    .line 1571
    const-string v2, ""

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    :cond_7b
    :goto_7b
    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 12

    .line 1461
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsSuccess(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_c

    .line 1463
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showUpdateDialog()V

    goto/16 :goto_16d

    :cond_c
    const/16 v0, 0xc8

    const v1, 0x7f1004a1

    const v2, 0x7f1004a2

    const v3, 0x7f1004a3

    const/16 v4, 0x68

    const/16 v5, 0x12c

    const/4 v6, 0x0

    .line 1464
    const-string v7, "googlefit"

    const/4 v8, 0x1

    if-ne v0, p1, :cond_8a

    .line 1465
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-le p1, v0, :cond_32

    .line 1466
    new-array p1, v8, [Ljava/lang/String;

    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    aput-object v0, p1, v6

    invoke-virtual {p0, v5, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestPermissions(I[Ljava/lang/String;)V

    goto/16 :goto_16d

    .line 1468
    :cond_32
    invoke-static {p0, v7, v8}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1470
    invoke-static {p0, v7, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_50

    .line 1471
    invoke-static {p0}, Lcom/keephealth/android/util/NetworkUtil;->checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1472
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->connectGoogle(I)V

    .line 1473
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1476
    :cond_50
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-nez p1, :cond_5c

    goto/16 :goto_16d

    .line 1478
    :cond_5c
    invoke-static {p0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16d

    .line 1479
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1480
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda16;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda17;

    invoke-direct {v9}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda17;-><init>()V

    move-object v4, p0

    .line 1479
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_16d

    :cond_8a
    const/16 v0, 0x44c

    if-ne v0, p1, :cond_93

    .line 1490
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->checkPermissions()V

    goto/16 :goto_16d

    :cond_93
    if-ne v5, p1, :cond_ed

    .line 1492
    invoke-static {p0, v7, v8}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1494
    invoke-static {p0, v7, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_b3

    .line 1495
    invoke-static {p0}, Lcom/keephealth/android/util/NetworkUtil;->checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 1496
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->connectGoogle(I)V

    .line 1497
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1500
    :cond_b3
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-nez p1, :cond_bf

    goto/16 :goto_16d

    .line 1502
    :cond_bf
    invoke-static {p0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16d

    .line 1503
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1504
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda18;

    invoke-direct {v8, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda18;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda19;

    invoke-direct {v9}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda19;-><init>()V

    move-object v4, p0

    .line 1503
    invoke-static/range {v4 .. v9}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_16d

    :cond_ed
    const/16 v0, 0x3e9

    .line 1512
    const-string v1, "com.keephealth.android.ui.device.activity.devicepolyline.LocationBackgroundService"

    if-ne v0, p1, :cond_14d

    .line 1513
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->permissionsLocationBack:[Ljava/lang/String;

    if-eqz p1, :cond_16d

    .line 1514
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_130

    .line 1515
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10037c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1516
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100378

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda20;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    new-instance v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew$$ExternalSyntheticLambda21;-><init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    move-object v1, p0

    .line 1515
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mDialog:Landroid/app/Dialog;

    goto :goto_16d

    .line 1533
    :cond_130
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    if-eqz p1, :cond_16d

    invoke-static {p0, v1}, Lcom/keephealth/android/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16d

    .line 1534
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-nez p1, :cond_147

    .line 1535
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    .line 1537
    :cond_147
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_16d

    :cond_14d
    const/16 v0, 0x3ea

    if-ne v0, p1, :cond_16d

    .line 1542
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    if-eqz p1, :cond_16d

    invoke-static {p0, v1}, Lcom/keephealth/android/util/ServiceUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16d

    .line 1543
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-nez p1, :cond_168

    .line 1544
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    .line 1546
    :cond_168
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_16d
    :goto_16d
    return-void
.end method

.method public showEcg()V
    .registers 4

    .line 1176
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1f

    .line 1178
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEcg()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1179
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v0, :cond_46

    const/4 v1, 0x0

    .line 1180
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    goto :goto_46

    .line 1182
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v0, :cond_46

    .line 1183
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    goto :goto_46

    .line 1186
    :cond_1f
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_3f

    .line 1187
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v2, "A01W10N5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v0, :cond_46

    .line 1189
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    goto :goto_46

    .line 1191
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v0, :cond_46

    .line 1192
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NotifyRadioButton;->setVisibility(I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public showFragment(ILjava/lang/String;)V
    .registers 5

    .line 1318
    iget p2, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    if-ne p2, p1, :cond_5

    return-void

    .line 1321
    :cond_5
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 1322
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 1324
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1326
    :cond_19
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->currentIndex:I

    .line 1328
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1329
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    const v1, 0x7f090049

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_37

    .line 1331
    :cond_30
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1333
    :goto_37
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1334
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->changeBottomUI(I)V

    return-void
.end method
