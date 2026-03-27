.class public abstract Lcom/keephealth/android/base/BaseMvvmNewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseMvvmNewActivity.java"

# interfaces
.implements Lcom/keephealth/android/util/PermissionUtil$RequsetResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/keephealth/android/util/PermissionUtil$RequsetResult;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private dialog:Landroid/app/Dialog;

.field protected imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

.field private mBinding:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

.field res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private fixOrientation()Z
    .registers 6

    const/4 v0, 0x0

    .line 195
    :try_start_1
    const-class v1, Landroid/app/Activity;

    const-string v2, "mActivityInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 197
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_18

    const/4 v4, -0x1

    .line 199
    iput v4, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 201
    :cond_18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .registers 7

    .line 125
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 126
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_16

    goto :goto_46

    .line 130
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

    .line 133
    :cond_2a
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 134
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

.method private isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 390
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 391
    filled-new-array {v1, v1}, [I

    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 393
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 394
    aget v0, v0, v3

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 398
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

    .line 399
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

    .line 292
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 293
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_27

    .line 294
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

    .line 180
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

    .line 181
    invoke-virtual {p0, v1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 182
    const-class v3, Landroid/content/pm/ActivityInfo;

    const-string v4, "isTranslucentOrFloating"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 183
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 184
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3e

    .line 185
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

    .line 187
    :goto_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    return v1
.end method

.method static synthetic lambda$initActivity$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    .line 234
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$showToast$2(Ljava/lang/String;)V
    .registers 1

    .line 347
    invoke-static {p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showDialogTips()V
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_8

    .line 281
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->showScanDialog()V

    goto :goto_18

    .line 283
    :cond_8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_18

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_18
    :goto_18
    return-void
.end method

.method private showScanDialog()V
    .registers 7

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_e

    .line 302
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    .line 304
    :cond_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906fc

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 306
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0906e4

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/base/BaseMvvmNewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/base/BaseMvvmNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v1, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 316
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 317
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 318
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 321
    :cond_6e
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 421
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 422
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 423
    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 425
    :cond_15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public varargs checkSelfPermission([Ljava/lang/String;)Z
    .registers 2

    .line 248
    invoke-static {p1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract createObserver()V
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 374
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 375
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->isShouldHideKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->hideKeyboard(Landroid/os/IBinder;)V

    .line 379
    :cond_17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

    if-nez v0, :cond_b

    .line 366
    new-instance v0, Lcom/keephealth/android/util/ImageLoadUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/ImageLoadUtil;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->imageLoadUtil:Lcom/keephealth/android/util/ImageLoadUtil;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 4

    .line 433
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->res:Landroid/content/res/Resources;

    .line 434
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 435
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 438
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 443
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 444
    iget-object v1, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_25

    .line 449
    :catch_25
    :cond_25
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public abstract getViewBinding()Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x3f6

    if-ne p1, v0, :cond_19

    .line 269
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->isTopActivity()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 270
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->showDialogTips()V

    goto :goto_19

    .line 272
    :cond_12
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    :cond_19
    :goto_19
    return-void
.end method

.method public final handleMessageInner(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 257
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    return-void
.end method

.method public hideKeyboard(Landroid/os/IBinder;)V
    .registers 4

    if-eqz p1, :cond_e

    .line 412
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    .line 413
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_e
    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 457
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public initActivity()V
    .registers 4

    .line 210
    invoke-static {p0}, Lcom/keephealth/android/app/AppApplication;->addActivity(Landroid/app/Activity;)V

    .line 211
    new-instance v0, Lcom/keephealth/android/util/PermissionUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/PermissionUtil;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    .line 212
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/PermissionUtil;->setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V

    .line 213
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    .line 216
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 217
    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 218
    iget-object v2, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {v2}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09031f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f060163

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 222
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090086

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_85

    const v2, 0x7f0d0008

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    :cond_85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_92

    .line 230
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 233
    :cond_92
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/base/BaseMvvmNewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/keephealth/android/base/BaseMvvmNewActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public initListener()V
    .registers 1

    return-void
.end method

.method protected initView()V
    .registers 1

    return-void
.end method

.method synthetic lambda$showScanDialog$1$com-keephealth-android-base-BaseMvvmNewActivity(Landroid/view/View;)V
    .registers 3

    .line 0
    const/16 p1, 0x1d

    const/4 v0, 0x0

    .line 308
    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 309
    invoke-static {v0, p0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 310
    iget-object p1, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 88
    invoke-static {}, Lcom/keephealth/android/util/AppStatusManager;->getInstance()Lcom/keephealth/android/util/AppStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/AppStatusManager;->getAppStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 89
    const-class p1, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/LanguageUtil;->restartApp(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3e

    .line 91
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_20

    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->isTranslucentOrFloating()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 92
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->fixOrientation()Z

    .line 94
    :cond_20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->getViewBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    .line 96
    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->bundle:Landroid/os/Bundle;

    .line 99
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 100
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 101
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->createObserver()V

    .line 103
    :goto_3e
    invoke-static {p0}, Lcom/keephealth/android/app/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 352
    invoke-static {p0}, Lcom/keephealth/android/app/AppApplication;->removeActivity(Landroid/app/Activity;)V

    .line 353
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->unregister(Ljava/lang/Object;)V

    .line 354
    invoke-static {p0}, Lcom/keephealth/android/app/ActivityCollector;->removeActivity(Landroid/app/Activity;)V

    .line 355
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 326
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    if-eqz v0, :cond_a

    .line 328
    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/util/PermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 155
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 156
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

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_32

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->startActivity(Landroid/content/Intent;)V

    :cond_32
    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 142
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 143
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    .line 144
    sget v1, Lcom/keephealth/android/app/AppApplication;->isIntentClass:I

    if-ne v1, v0, :cond_35

    .line 145
    const-string v0, "finish"

    const-string v1, "newActivity"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v1, "class"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classStr"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    :cond_35
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 117
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 118
    invoke-static {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    return-void
.end method

.method public varargs requestPermissions(I[Ljava/lang/String;)V
    .registers 3

    .line 252
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

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->isTranslucentOrFloating()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 174
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public showLoading()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 453
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showLoadingFalse()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 465
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 2

    .line 461
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .registers 3

    .line 347
    new-instance v0, Lcom/keephealth/android/base/BaseMvvmNewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toBack()V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvmNewActivity;->mBinding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/base/BaseMvvmNewActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity$1;-><init>(Lcom/keephealth/android/base/BaseMvvmNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
