.class public Lcom/keephealth/android/ui/main/activity/WelcomeActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "WelcomeActivity.java"


# instance fields
.field private final DELAY:I

.field af:I

.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field handler:Landroid/os/Handler;

.field private keep:Z

.field private mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private splashScreen:Landroidx/core/splashscreen/SplashScreen;


# direct methods
.method public static synthetic $r8$lambda$-NDk7WJEEP8q6wEizqeFUNsoagA(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->showWebViewDialog()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->keep:Z

    const/16 v1, 0x3e8

    .line 122
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->DELAY:I

    .line 125
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->af:I

    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->onAnimEnd(Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    return-void
.end method

.method static synthetic lambda$initView$2()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private onAnimEnd(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .registers 4

    .line 348
    invoke-virtual {p1}, Landroidx/core/splashscreen/SplashScreenViewProvider;->remove()V

    .line 350
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 351
    const-string v0, "from"

    const-string v1, "WelcomeActivity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-class v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f01002e

    .line 354
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private showWebViewDialog()V
    .registers 4

    .line 77
    const-string v0, "PRIVACY_VERSION"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1d

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v1, "from"

    const-string v2, "WelcomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-class v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_3d

    :cond_1d
    const/4 v0, 0x0

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_LOGIN_STATE"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    const/16 v1, 0x1f4

    if-eqz v0, :cond_35

    .line 85
    new-instance v0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    goto :goto_3d

    .line 94
    :cond_35
    new-instance v0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    :goto_3d
    return-void
.end method

.method private startSplashScreenExit(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .registers 12

    .line 306
    invoke-virtual {p1}, Landroidx/core/splashscreen/SplashScreenViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    .line 308
    invoke-virtual {p1}, Landroidx/core/splashscreen/SplashScreenViewProvider;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 312
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_5e

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    .line 313
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    new-instance v6, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v6}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 322
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    new-array v8, v3, [F

    const/4 v9, 0x0

    aput v7, v8, v9

    const/4 v7, 0x1

    aput v0, v8, v7

    .line 319
    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 325
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    new-instance v1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 330
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v9

    aput-object v2, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 332
    new-instance v0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_5e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c009d

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 266
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e
    const/4 v0, 0x1

    .line 271
    sput v0, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    .line 273
    :try_start_11
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->splashScreen:Landroidx/core/splashscreen/SplashScreen;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/core/splashscreen/SplashScreen;->setKeepOnScreenCondition(Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1b

    .line 288
    :catch_1b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_77

    .line 290
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "classStr"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "ggg333"

    if-nez v0, :cond_71

    .line 291
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppApplication.className:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 297
    :cond_71
    const-string v0, "AppApplication.className:null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    :goto_76
    return-void

    .line 301
    :cond_77
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$showWebViewDialog$0$com-keephealth-android-ui-main-activity-WelcomeActivity()V
    .registers 3

    .line 86
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getCurrentUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 88
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    const/4 v0, 0x1

    .line 89
    sput v0, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    .line 90
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method synthetic lambda$showWebViewDialog$1$com-keephealth-android-ui-main-activity-WelcomeActivity()V
    .registers 4

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "from"

    const-string v2, "WelcomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-class v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 129
    invoke-static {}, Lcom/keephealth/android/util/AppStatusManager;->getInstance()Lcom/keephealth/android/util/AppStatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/AppStatusManager;->setAppStatus(I)V

    .line 130
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-nez v0, :cond_15

    .line 131
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    :cond_15
    const/4 v0, 0x1

    .line 133
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->fromWeltoHome:Z

    .line 135
    :try_start_18
    invoke-static {p0}, Landroidx/core/splashscreen/SplashScreen;->installSplashScreen(Landroid/app/Activity;)Landroidx/core/splashscreen/SplashScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->splashScreen:Landroidx/core/splashscreen/SplashScreen;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_1e

    :catch_1e
    const/4 v1, 0x0

    .line 139
    sput v1, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 140
    sput v0, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 141
    const-string v2, "finish"

    const-string v3, "welcomeActivity"

    invoke-static {p0, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFirstDescrition:Z

    .line 143
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "current"

    invoke-static {v2, v3, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 191
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_12a

    .line 194
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_12a

    .line 196
    iget-object v2, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12a

    .line 198
    :try_start_54
    iget-object v2, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5c} :catch_5c

    .line 201
    :catch_5c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_74

    .line 203
    :try_start_60
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_74} :catch_74

    .line 206
    :catch_74
    :cond_74
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_12a

    .line 207
    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_81

    return-void

    .line 217
    :cond_81
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12a

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12a

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Q32"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Q19 MAX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 219
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QX01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CH-W501"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 220
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MK WATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SENSE 6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 221
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AMAYA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CR075"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12a

    .line 222
    :cond_125
    const-string p1, "bleReceiveDisConnect"

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 230
    :cond_12a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "afeng.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/keephealth/android/util/crash/CrashHandler;->getCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "crash_app.log"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 239
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 240
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 243
    const-string v1, "currentDate"

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1af

    .line 244
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1af

    .line 245
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b2

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 254
    :cond_1ab
    invoke-static {p0, v1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b2

    .line 259
    :cond_1af
    invoke-static {p0, v1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b2
    :goto_1b2
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 359
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->handler:Landroid/os/Handler;

    :cond_a
    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 105
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStart()V

    .line 106
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 108
    const-string v1, "myapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/keephealth/android/ui/mine/activity/StravaActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_24
    return-void
.end method
