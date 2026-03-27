.class public Lcom/keephealth/android/app/AppApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "AppApplication.java"


# static fields
.field public static ExistHandler:Z = false

.field public static SERVER_URL:Ljava/lang/String; = null

.field public static activities:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static app:Lcom/keephealth/android/app/AppApplication; = null

.field public static appInbefore:Z = false

.field public static auth_url:Ljava/lang/String; = null

.field public static backFromHealth:Z = false

.field public static bleConnectSuccess:Z = false

.field public static bleReceiveDisConnect:I = 0x0

.field public static calibrationCanBack:I = 0x0

.field public static calibrationCanBefore:I = 0x0

.field public static className:Ljava/lang/String; = null

.field public static clickInstall:Z = false

.field public static clickInstall2:Z = false

.field public static comeDetail:Z = false

.field public static comeDial:Z = false

.field public static comeDial2:Z = false

.field public static connectDevice:Lcom/keephealth/android/model/bean/BLEDevice; = null

.field public static connectingOrno:Z = false

.field public static connectingOrnoTwo:Z = false

.field public static currentTab:I = 0x0

.field public static dialItemId:I = 0x0

.field public static discoverService:I = 0x0

.field public static enable_notication:Z = false

.field public static firstComming:I = 0x0

.field public static firstConnect:I = 0x0

.field public static firstHome:Z = false

.field public static foreign:I = 0x0

.field public static fromActivity:Ljava/lang/String; = null

.field public static fromWeltoHome:Z = false

.field public static gestureType:I = 0x0

.field public static golds:I = 0x0

.field public static guardianName:Ljava/lang/String; = null

.field public static homeHasLoading:Z = false

.field public static homeIsFinishing:Z = false

.field public static homeIscanVisible:Z = false

.field public static hourNow:I = 0x0

.field public static inScanDevice:I = 0x0

.field public static isAssReceivePhone:Z = false

.field public static isBackHome:Z = false

.field public static isBandingEmail:Z = false

.field public static isBluetoothOpen:I = 0x0

.field public static isBoolFromFamily:Z = false

.field public static isCamer:Z = false

.field public static isCanAddDevice:Z = true

.field public static isCanListExist:Z = false

.field public static isCanUpdate:Z = false

.field public static isChooseCountryBack:Z = false

.field public static isClearDevice:Z = false

.field public static isClickAddDevice:Z = false

.field public static isClickSkipYanZheng:Z = false

.field public static isCloseBle:Z = false

.field public static isComMe:Z = false

.field public static isComMeDetail:Z = false

.field public static isComeRecom:Z = false

.field public static isComeRecomDetail:Z = false

.field public static isConnect:Z = false

.field public static isConnectFailRe:Z = false

.field public static isConnecting:Ljava/lang/Boolean; = null

.field public static isDrinkWaterOpen:Z = false

.field public static isDuringExercise:Z = false

.field public static isFeedbackActivity:Z = false

.field public static isFinishBao:Z = false

.field public static isFirstDescrition:Z = false

.field public static isFontProssDevice:Z = false

.field public static isGPSBackground:Z = false

.field public static isGPSRequest:Z = false

.field public static isGattingConnect:Z = false

.field public static isGetUserinfo:Z = false

.field public static isGoOtaPage:Z = false

.field public static isHomeLoading:Z = false

.field public static isIntentClass:I = 0x0

.field public static isKeephalthClickAddDevice:Z = false

.field public static isLoginOut:Z = false

.field public static isLoginRegisterSuccess:Z = false

.field public static isLoginSuccess:Z = false

.field public static isLookWeatherBack:Z = false

.field public static isNaviView:Z = false

.field public static isOtaUpdate:Z = false

.field public static isPair:Z = false

.field public static isPairSuccess:Z = false

.field public static isPhoneReceivePhone:Z = false

.field public static isReadNotiOpen:Z = false

.field public static isRefresh:Z = false

.field public static isRefreshing:Z = false

.field public static isRefuPermisstion:Z = false

.field public static isRegister:Z = false

.field public static isRemote:Z = false

.field public static isRunningDialCenter:Z = false

.field public static isRunningDialCenterTwo:Z = false

.field public static isRunningEcg:Z = false

.field public static isScanAcivity:Z = false

.field public static isScanDeviceActivity:Z = false

.field public static isScanQrActivity:Z = false

.field public static isSendBiaopan:Z = false

.field public static isSendDial:Z = false

.field public static isShowHome:Z = false

.field public static isShowMain:Z = false

.field public static isShowMassage:Z = false

.field public static isTestLocation:Z = true

.field public static isUnbandAgaginDevice:Z

.field public static isUnbandDeleDevice:Z

.field public static isUnbandDevice:Z

.field public static isVisibleFirst:Z

.field public static isWaterBack:Z

.field public static isWriteSuccess:Z

.field public static itemPosition:I

.field public static itemPosition2:I

.field public static locationServiceIntent:Landroid/content/Intent;

.field public static logFileUrl:Ljava/lang/String;

.field public static mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field public static mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public static mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public static mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

.field public static mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

.field public static macAddress:Ljava/lang/String;

.field public static outTimeSuccess:I

.field public static reFrushNumber:I

.field public static recordWeight:F

.field public static registerTime:Ljava/lang/String;

.field public static removeBle:Z

.field public static requestBleSuccess:Z

.field public static scanDeviceName:Ljava/lang/String;

.field public static sendingOrno:Z

.field public static sportItem:I

.field public static sportPageItem:I

.field public static steps:I

.field public static stopSport:Z


# instance fields
.field private aMapLocation:Lcom/keephealth/android/model/bean/LocationBean;

.field private blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

.field public bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public calorieGoal:Z

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

.field public exerciseDurationGoal:Z

.field private filter:Landroid/content/IntentFilter;

.field public isSysndata:Z

.field private mDaoMaster:Lcom/keephealth/android/greendao/gen/DaoMaster;

.field private mDaoSession:Lcom/keephealth/android/greendao/gen/DaoSession;

.field private mHelper:Lcom/keephealth/android/greendao/helper/DbOpenHelper;

.field public pedometerGoal:Z

.field public standingDurationGoal:Z

.field private userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    .line 94
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isChooseCountryBack:Z

    .line 109
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 115
    sput v0, Lcom/keephealth/android/app/AppApplication;->bleReceiveDisConnect:I

    const/4 v1, 0x0

    .line 162
    sput-object v1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 163
    sput-object v1, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    const/4 v1, 0x4

    .line 166
    sput v1, Lcom/keephealth/android/app/AppApplication;->sportItem:I

    const/4 v1, 0x1

    .line 167
    sput v1, Lcom/keephealth/android/app/AppApplication;->sportPageItem:I

    .line 168
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->stopSport:Z

    .line 185
    sput v0, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    .line 205
    sput v1, Lcom/keephealth/android/app/AppApplication;->gestureType:I

    .line 223
    sput v0, Lcom/keephealth/android/app/AppApplication;->foreign:I

    .line 224
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/keephealth/android/app/AppApplication;->isSysndata:Z

    return-void
.end method

.method public static addActivity(Landroid/app/Activity;)V
    .registers 2

    .line 469
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private closeAndroidPDialog()V
    .registers 8

    .line 320
    const-string v0, "\u9519\u8bef\u65e5\u5fd7:"

    const-string v1, "APP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    const-string v4, "android.content.pm.PackageParser$Package"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 321
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 322
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_2f

    :catch_1a
    move-exception v4

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_2f
    :try_start_2f
    const-string v4, "android.app.ActivityThread"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 329
    const-string v5, "currentActivityThread"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 330
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 331
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v4, :cond_6e

    .line 334
    const-string v5, "mHiddenApiWarningShown"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 335
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 336
    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_55} :catch_56

    goto :goto_6e

    :catch_56
    move-exception v2

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 495
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 496
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 497
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p0, :cond_6

    .line 498
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 499
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public static finishAll()V
    .registers 3

    .line 516
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 517
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 518
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public static getActivities()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 453
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->app:Lcom/keephealth/android/app/AppApplication;

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/keephealth/android/app/AppApplication;
    .registers 1

    .line 460
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->app:Lcom/keephealth/android/app/AppApplication;

    return-object v0
.end method

.method private initCrash()V
    .registers 2

    .line 279
    invoke-static {}, Lcom/keephealth/android/util/crash/CrashHandler;->getInstance()Lcom/keephealth/android/util/crash/CrashHandler;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/crash/CrashHandler;->init(Landroid/content/Context;)V

    return-void
.end method

.method private initShareSDK()V
    .registers 1

    return-void
.end method

.method private intLib()V
    .registers 2

    .line 377
    invoke-static {}, Lcom/keephealth/android/app/LibContext;->getInstance()Lcom/keephealth/android/app/LibContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keephealth/android/app/LibContext;->init(Landroid/content/Context;)V

    return-void
.end method

.method private registerBleReceiver()V
    .registers 5

    .line 381
    new-instance v0, Lcom/keephealth/android/receiver/BleReceiver;

    invoke-direct {v0}, Lcom/keephealth/android/receiver/BleReceiver;-><init>()V

    .line 382
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_24

    const/4 v2, 0x2

    .line 387
    invoke-virtual {p0, v0, v1, v2}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_27

    .line 389
    :cond_24
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_27
    return-void
.end method

.method private registerNetorkReceiver()V
    .registers 4

    .line 401
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 402
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1a

    .line 404
    new-instance v1, Lcom/keephealth/android/receiver/NetworkConnectChangedReceiver;

    invoke-direct {v1}, Lcom/keephealth/android/receiver/NetworkConnectChangedReceiver;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_22

    .line 406
    :cond_1a
    new-instance v1, Lcom/keephealth/android/receiver/NetworkConnectChangedReceiver;

    invoke-direct {v1}, Lcom/keephealth/android/receiver/NetworkConnectChangedReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_22
    return-void
.end method

.method public static removeActivity(Landroid/app/Activity;)V
    .registers 2

    .line 486
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 489
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 490
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setActivities(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 477
    sput-object p0, Lcom/keephealth/android/app/AppApplication;->activities:Ljava/util/List;

    return-void
.end method

.method private startLocation()V
    .registers 5

    .line 412
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 413
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    new-instance v1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;-><init>()V

    .line 416
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_1f

    const/4 v2, 0x2

    .line 417
    invoke-virtual {p0, v1, v0, v2}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_22

    .line 419
    :cond_1f
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_22
    return-void
.end method

.method public static toLogin(Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_5

    .line 424
    invoke-static {p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 427
    :cond_5
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "USER_PASSWORD"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "USER_TOKEN"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "IS_TO_LOGIN"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_LOGIN_STATE"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    .line 431
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 432
    invoke-static {}, Lcom/keephealth/android/util/CleanUtils;->cleanUpdateTime()V

    .line 433
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 434
    const-string v0, "from"

    const-string v1, "WelcomeActivity"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 438
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 439
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getActivities()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 443
    :cond_82
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/app/AppApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 448
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 449
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->mDaoSession:Lcom/keephealth/android/greendao/gen/DaoSession;

    if-nez v0, :cond_7

    .line 364
    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 366
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->mDaoSession:Lcom/keephealth/android/greendao/gen/DaoSession;

    return-object v0
.end method

.method public getDaoSession(I)Lcom/keephealth/android/greendao/gen/DaoSession;
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->mDaoSession:Lcom/keephealth/android/greendao/gen/DaoSession;

    if-nez v0, :cond_7

    .line 371
    invoke-virtual {p0, p1}, Lcom/keephealth/android/app/AppApplication;->setDatabase(I)V

    .line 373
    :cond_7
    iget-object p1, p0, Lcom/keephealth/android/app/AppApplication;->mDaoSession:Lcom/keephealth/android/greendao/gen/DaoSession;

    return-object p1
.end method

.method public getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    return-object v0
.end method

.method public getUserBean()Lcom/keephealth/android/model/bean/UserBean;
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    return-object v0
.end method

.method public getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->aMapLocation:Lcom/keephealth/android/model/bean/LocationBean;

    return-object v0
.end method

.method public initManager()Landroid/bluetooth/BluetoothManager;
    .registers 2

    .line 313
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/app/AppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public initPairStatus()V
    .registers 4

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->filter:Landroid/content/IntentFilter;

    .line 285
    new-instance v0, Lcom/keephealth/android/receiver/BluetoothReceiver;

    invoke-direct {v0}, Lcom/keephealth/android/receiver/BluetoothReceiver;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1f

    .line 288
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

    iget-object v1, p0, Lcom/keephealth/android/app/AppApplication;->filter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_26

    .line 290
    :cond_1f
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

    iget-object v1, p0, Lcom/keephealth/android/app/AppApplication;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/app/AppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_26
    return-void
.end method

.method public isDistUnitKm()Z
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 540
    :cond_6
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public isSysndata()Z
    .registers 2

    .line 505
    iget-boolean v0, p0, Lcom/keephealth/android/app/AppApplication;->isSysndata:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 397
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 5

    .line 228
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    const/4 v0, 0x1

    .line 229
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->firstHome:Z

    .line 230
    const-string v1, "notifacation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 231
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRemote:Z

    .line 232
    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    .line 233
    invoke-direct {p0}, Lcom/keephealth/android/app/AppApplication;->initCrash()V

    .line 234
    sput-object p0, Lcom/keephealth/android/app/AppApplication;->app:Lcom/keephealth/android/app/AppApplication;

    .line 235
    iput-boolean v1, p0, Lcom/keephealth/android/app/AppApplication;->isSysndata:Z

    .line 236
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCamer:Z

    .line 237
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 238
    const-string v2, "testHttp"

    invoke-static {p0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 240
    const-string v2, "http://47.75.143.120:9090/keephealth/"

    sput-object v2, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    goto :goto_3d

    .line 242
    :cond_39
    const-string v2, "https://keephealth-zhj.com/keephealth/"

    sput-object v2, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    :goto_3d
    const v2, 0x7f0901a2

    .line 244
    invoke-static {v2}, Lcom/bumptech/glide/request/target/ViewTarget;->setTagId(I)V

    .line 245
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->init(Landroid/content/Context;)V

    .line 246
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 247
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/BLEDevice;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 248
    invoke-virtual {v2, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 249
    invoke-static {v2, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 251
    :cond_5c
    invoke-direct {p0}, Lcom/keephealth/android/app/AppApplication;->intLib()V

    .line 254
    invoke-static {}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getInstance()Lcom/keephealth/android/util/AppSharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->init(Landroid/content/Context;)V

    .line 255
    invoke-direct {p0}, Lcom/keephealth/android/app/AppApplication;->registerBleReceiver()V

    .line 256
    invoke-direct {p0}, Lcom/keephealth/android/app/AppApplication;->initShareSDK()V

    .line 257
    invoke-direct {p0}, Lcom/keephealth/android/app/AppApplication;->registerNetorkReceiver()V

    .line 258
    invoke-direct {p0}, Lcom/keephealth/android/app/AppApplication;->startLocation()V

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_7b

    .line 260
    invoke-direct {p0}, Lcom/keephealth/android/app/AppApplication;->closeAndroidPDialog()V

    .line 262
    :cond_7b
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getCurrentUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 263
    sget v0, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-nez v0, :cond_a4

    .line 265
    :try_start_85
    invoke-static {p0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_88
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_85 .. :try_end_88} :catch_8b
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_a4

    :catch_89
    move-exception v0

    goto :goto_8c

    :catch_8b
    move-exception v0

    .line 269
    :goto_8c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_a4
    :goto_a4
    invoke-static {p0}, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->init(Landroid/content/Context;)V

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 275
    invoke-static {p0}, Lcom/keephealth/android/util/notification/NotificationHelper;->initChannels(Landroid/content/Context;)V

    return-void
.end method

.method public onTerminate()V
    .registers 1

    .line 296
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onTerminate()V

    .line 297
    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->uninitPairStatus()V

    return-void
.end method

.method public setDatabase()V
    .registers 4

    .line 349
    new-instance v0, Lcom/keephealth/android/greendao/helper/DbOpenHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zhihuiju-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/app/AppApplication;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/greendao/helper/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->mHelper:Lcom/keephealth/android/greendao/helper/DbOpenHelper;

    .line 350
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/helper/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 352
    new-instance v0, Lcom/keephealth/android/greendao/gen/DaoMaster;

    iget-object v1, p0, Lcom/keephealth/android/app/AppApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/keephealth/android/greendao/gen/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->mDaoMaster:Lcom/keephealth/android/greendao/gen/DaoMaster;

    .line 353
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoMaster;->newSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->mDaoSession:Lcom/keephealth/android/greendao/gen/DaoSession;

    return-void
.end method

.method public setDatabase(I)V
    .registers 5

    .line 356
    new-instance v0, Lcom/keephealth/android/greendao/helper/DbOpenHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zhihuiju-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-db"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/greendao/helper/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/app/AppApplication;->mHelper:Lcom/keephealth/android/greendao/helper/DbOpenHelper;

    .line 357
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/helper/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/app/AppApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 359
    new-instance p1, Lcom/keephealth/android/greendao/gen/DaoMaster;

    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p1, v0}, Lcom/keephealth/android/greendao/gen/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p1, p0, Lcom/keephealth/android/app/AppApplication;->mDaoMaster:Lcom/keephealth/android/greendao/gen/DaoMaster;

    .line 360
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoMaster;->newSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/app/AppApplication;->mDaoSession:Lcom/keephealth/android/greendao/gen/DaoSession;

    return-void
.end method

.method public setDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/keephealth/android/app/AppApplication;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    return-void
.end method

.method public setSysndata(Z)V
    .registers 2

    .line 509
    iput-boolean p1, p0, Lcom/keephealth/android/app/AppApplication;->isSysndata:Z

    return-void
.end method

.method public setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/keephealth/android/app/AppApplication;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 533
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    return-void
.end method

.method public setaMapLocation(Lcom/keephealth/android/model/bean/LocationBean;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/keephealth/android/app/AppApplication;->aMapLocation:Lcom/keephealth/android/model/bean/LocationBean;

    return-void
.end method

.method public uninitPairStatus()V
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/app/AppApplication;->blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/keephealth/android/app/AppApplication;->filter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_38

    .line 303
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/keephealth/android/app/AppApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_38

    :catch_c
    move-exception v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterReceiver(blueReceiver)_e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-void
.end method
