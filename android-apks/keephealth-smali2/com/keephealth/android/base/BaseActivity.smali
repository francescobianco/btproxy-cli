.class public abstract Lcom/keephealth/android/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/keephealth/android/util/PermissionUtil$RequsetResult;


# static fields
.field public static isChangeKg:Z = false

.field public static isChangeLb:Z = false


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected bar_bg:Landroid/widget/RelativeLayout;

.field protected base_rela:Landroid/widget/RelativeLayout;

.field protected bgView:Landroid/view/View;

.field private bundle:Landroid/os/Bundle;

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private dialog:Landroid/app/Dialog;

.field protected imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

.field protected layoutTitle:Landroid/widget/RelativeLayout;

.field protected mFlContent:Landroid/widget/FrameLayout;

.field protected mRoodView:Landroid/view/View;

.field private permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

.field permissionsBluetooth_connect:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

.field private permissionsLocationBack:[Ljava/lang/String;

.field res:Landroid/content/res/Resources;

.field protected rightImg:Landroid/widget/ImageView;

.field protected rightText:Landroid/widget/Button;

.field protected rl_title_map:Landroid/widget/RelativeLayout;

.field protected titleBack:Landroid/widget/ImageView;

.field protected titleBg:Landroid/widget/RelativeLayout;

.field protected titleName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 90
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 319
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/keephealth/android/base/BaseActivity;->permissionsLocation:[Ljava/lang/String;

    .line 326
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    aput-object v1, v0, v3

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->permissionsBluetooth_connect:[Ljava/lang/String;

    return-void
.end method

.method private fixOrientation()Z
    .registers 6

    const/4 v0, 0x0

    .line 227
    :try_start_1
    const-class v1, Landroid/app/Activity;

    const-string v2, "mActivityInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 229
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    const/4 v4, -0x1

    .line 230
    iput v4, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return v2

    :catch_1a
    move-exception v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .registers 7

    .line 146
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 147
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_16

    goto :goto_46

    .line 151
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v2, :cond_2a

    return v1

    .line 154
    :cond_2a
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 155
    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-eq p0, v0, :cond_44

    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v3

    :cond_44
    :goto_44
    return v1

    :cond_45
    return v3

    :cond_46
    :goto_46
    return v1
.end method

.method private isNotificationEnabled()Z
    .registers 3

    .line 374
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 375
    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 377
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

.method private isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 503
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 504
    filled-new-array {v1, v1}, [I

    move-result-object v0

    .line 505
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 506
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 507
    aget v0, v0, v3

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 511
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_3f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_3f

    .line 512
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_40

    :cond_3f
    move v1, v3

    :cond_40
    return v1
.end method

.method private isTopActivity()Z
    .registers 5

    .line 396
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_27

    .line 398
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    const-string v3, "MainActivityNew"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1
.end method

.method private isTranslucentOrFloating()Z
    .registers 10

    const/4 v0, 0x0

    .line 212
    :try_start_1
    const-string v1, "com.android.internal.R$styleable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Window"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 213
    invoke-virtual {p0, v1}, Lcom/keephealth/android/base/BaseActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 214
    const-class v3, Landroid/content/pm/ActivityInfo;

    const-string v4, "isTranslucentOrFloating"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 215
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3e

    .line 217
    :try_start_38
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_45

    :catch_3c
    move-exception v0

    goto :goto_42

    :catch_3e
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 219
    :goto_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    return v1
.end method

.method static synthetic lambda$handleMessage$2(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 360
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$initActivity$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    .line 283
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const/4 v1, 0x0

    .line 284
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$showToast$5(Ljava/lang/String;)V
    .registers 1

    .line 461
    invoke-static {p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showDialogTips()V
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_8

    .line 385
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;->showScanDialog()V

    goto :goto_18

    .line 387
    :cond_8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 388
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 389
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_18
    :goto_18
    return-void
.end method

.method private showScanDialog()V
    .registers 7

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_e

    .line 406
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    .line 408
    :cond_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906fc

    .line 409
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 410
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0906e4

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/base/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v1, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 418
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 420
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 421
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 533
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 534
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 535
    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 537
    :cond_15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public varargs checkSelfPermission([Ljava/lang/String;)Z
    .registers 2

    .line 296
    invoke-static {p1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 487
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 488
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/base/BaseActivity;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->hideKeyboard(Landroid/os/IBinder;)V

    .line 492
    :cond_17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract getContentView()I
.end method

.method public getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

    if-nez v0, :cond_b

    .line 479
    new-instance v0, Lcom/keephealth/android/util/ImageLoadUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/ImageLoadUtil;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

    .line 481
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 4

    .line 544
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->res:Landroid/content/res/Resources;

    .line 545
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 546
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 549
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 554
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 555
    iget-object v1, p0, Lcom/keephealth/android/base/BaseActivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_25

    .line 560
    :catch_25
    :cond_25
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Eventbus\u6d88\u606f"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x3f6

    if-ne v0, v1, :cond_31

    .line 331
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;->isTopActivity()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 332
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;->showDialogTips()V

    goto :goto_31

    .line 334
    :cond_2a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 337
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_d0

    const/16 v0, 0x44e

    const/4 v1, 0x0

    if-eq p1, v0, :cond_93

    const/16 v0, 0x3ff

    if-eq p1, v0, :cond_48

    const/16 v0, 0x400

    if-eq p1, v0, :cond_48

    goto/16 :goto_da

    .line 340
    :cond_48
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_58

    const/4 p1, 0x1

    .line 341
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->permissionsLocationBack:[Ljava/lang/String;

    goto :goto_5b

    :cond_58
    const/4 p1, 0x0

    .line 343
    iput-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->permissionsLocationBack:[Ljava/lang/String;

    .line 345
    :goto_5b
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivityNew"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_da

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isDuringExercise:Z

    if-nez p1, :cond_da

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;->isNotificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_8d

    iget-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->permissionsLocationBack:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-static {p0}, Lcom/keephealth/android/util/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_da

    .line 347
    :cond_8d
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_da

    .line 357
    :cond_93
    iget-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez p1, :cond_da

    .line 358
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10017d

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda1;-><init>()V

    const v1, 0x7f100193

    .line 360
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10017b

    .line 361
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/base/BaseActivity;)V

    const v1, 0x7f100257

    .line 362
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 368
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_da

    .line 352
    :cond_d0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_da
    :goto_da
    return-void
.end method

.method public final handleMessageInner(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ggrd3 handleMessageInner: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    return-void
.end method

.method public hideKeyboard(Landroid/os/IBinder;)V
    .registers 4

    if-eqz p1, :cond_e

    .line 524
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    .line 525
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_e
    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 566
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public initActivity()V
    .registers 5

    const v0, 0x7f0c0142

    .line 240
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->setContentView(I)V

    const v0, 0x7f090086

    .line 241
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->titleBack:Landroid/widget/ImageView;

    const v0, 0x7f090089

    .line 242
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->titleName:Landroid/widget/TextView;

    const v0, 0x7f090085

    .line 243
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->rightText:Landroid/widget/Button;

    const v0, 0x7f090087

    .line 244
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->titleBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f090083

    .line 245
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->mFlContent:Landroid/widget/FrameLayout;

    const v0, 0x7f09031f

    .line 246
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    const v0, 0x7f09008d

    .line 247
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->bgView:Landroid/view/View;

    const v0, 0x7f090084

    .line 248
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->base_rela:Landroid/widget/RelativeLayout;

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->titleBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_7a

    const v1, 0x7f0d0008

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7a
    const v0, 0x7f090080

    .line 258
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->bar_bg:Landroid/widget/RelativeLayout;

    const v0, 0x7f09052d

    .line 259
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->rl_title_map:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904d1

    .line 260
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->rightImg:Landroid/widget/ImageView;

    .line 261
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->onViewCreate()V

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->bar_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 263
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 264
    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 265
    iget-object v1, p0, Lcom/keephealth/android/base/BaseActivity;->bar_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->titleBg:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 267
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 268
    invoke-static {p0}, Lcom/keephealth/android/app/AppApplication;->addActivity(Landroid/app/Activity;)V

    .line 269
    new-instance v0, Lcom/keephealth/android/util/PermissionUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/PermissionUtil;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    .line 270
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/PermissionUtil;->setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V

    .line 271
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_df

    .line 273
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 276
    :cond_df
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_f9

    .line 279
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 282
    :cond_f9
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->base_rela:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method protected initView()V
    .registers 1

    return-void
.end method

.method synthetic lambda$handleMessage$3$com-keephealth-android-base-BaseActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    const/4 p1, 0x1

    .line 363
    iget-object p2, p0, Lcom/keephealth/android/base/BaseActivity;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 364
    const-string p1, "FF4d332"

    const-string p2, "\u8bf7\u6c42\u84dd\u7259\u6743\u9650..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initActivity$0$com-keephealth-android-base-BaseActivity(Landroid/view/View;)V
    .registers 2

    .line 0
    const p1, 0x7f090086

    .line 253
    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 254
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    :cond_c
    return-void
.end method

.method synthetic lambda$showScanDialog$4$com-keephealth-android-base-BaseActivity(Landroid/view/View;)V
    .registers 2

    .line 414
    iget-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 113
    invoke-static {}, Lcom/keephealth/android/util/AppStatusManager;->getInstance()Lcom/keephealth/android/util/AppStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/AppStatusManager;->getAppStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 114
    const-class p1, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/LanguageUtil;->restartApp(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_28

    .line 116
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_20

    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;->isTranslucentOrFloating()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 117
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;->fixOrientation()Z

    .line 119
    :cond_20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iput-object p1, p0, Lcom/keephealth/android/base/BaseActivity;->bundle:Landroid/os/Bundle;

    .line 121
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->initActivity()V

    .line 123
    :goto_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_81

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.keephealth.android.ui.main.activity.MainActivityNew"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.keephealth.android.ui.sport.activity.SportGaodeActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.keephealth.android.ui.sport.activity.SportActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.keephealth.android.ui.device.activity.gaodenavi.RouteNaviActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.keephealth.android.ui.device.activity.gaodenavi.RestRoutActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 128
    invoke-static {p0}, Lcom/keephealth/android/app/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    .line 130
    :cond_81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "activity:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ttrt4r"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 466
    invoke-static {p0}, Lcom/keephealth/android/app/AppApplication;->removeActivity(Landroid/app/Activity;)V

    .line 467
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->unregister(Ljava/lang/Object;)V

    .line 468
    invoke-static {p0}, Lcom/keephealth/android/app/ActivityCollector;->removeActivity(Landroid/app/Activity;)V

    .line 469
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 428
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 429
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    if-eqz v0, :cond_a

    .line 430
    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/util/PermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 183
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 187
    const-string v0, "gg3e3"

    const-string v1, "base_onResume..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_39

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_39
    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 162
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 163
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    .line 164
    const-string v1, "hfgfr32"

    const-string v2, "onStart_base "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause: \u5f39\u51fa\u901a\u77e5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gg3d3"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget v1, Lcom/keephealth/android/app/AppApplication;->isIntentClass:I

    if-ne v1, v0, :cond_74

    .line 167
    const-string v0, "finish"

    const-string v1, "newActivity"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v1, "class"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classStr"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    :cond_74
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 135
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 136
    invoke-static {p0}, Lcom/keephealth/android/base/BaseActivity;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u662f\u5426\u5728\u540e\u53f0:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/keephealth/android/base/BaseActivity;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gg3e3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onViewCreate()V
    .registers 4

    .line 442
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseActivity;->getContentView()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->mRoodView:Landroid/view/View;

    .line 443
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 444
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity;->mFlContent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/keephealth/android/base/BaseActivity;->mRoodView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public varargs requestPermissions(I[Ljava/lang/String;)V
    .registers 3

    .line 300
    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 2

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 2

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 4

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;->isTranslucentOrFloating()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 206
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public showLoading()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 563
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .registers 3

    .line 461
    new-instance v0, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
