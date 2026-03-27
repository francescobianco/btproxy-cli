.class public Lcom/keephealth/android/util/MusicUtil;
.super Ljava/lang/Object;
.source "MusicUtil.java"


# static fields
.field public static final TYPE_AUDIO:Ljava/lang/String; = "audio/*"


# instance fields
.field private activity:Landroid/app/Activity;

.field private audioManager:Landroid/media/AudioManager;

.field callHandlerz:Landroid/os/Handler;

.field private customToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

.field deviceCallbackWrapper:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

.field private eventtime:J

.field private handler:Landroid/os/Handler;

.field handlerz:Landroid/os/Handler;

.field private mMusicPlayPackageName:Ljava/lang/String;

.field private playing:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/keephealth/android/views/CustomToggleButton;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->handler:Landroid/os/Handler;

    .line 57
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->audioManager:Landroid/media/AudioManager;

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/MusicUtil;->eventtime:J

    .line 60
    new-instance v0, Lcom/keephealth/android/util/MusicUtil$1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/MusicUtil$1;-><init>(Lcom/keephealth/android/util/MusicUtil;I)V

    iput-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->deviceCallbackWrapper:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/util/MusicUtil;->activity:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcom/keephealth/android/util/MusicUtil;->customToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/MusicUtil;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/keephealth/android/util/MusicUtil;->playing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/util/MusicUtil;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/keephealth/android/util/MusicUtil;->playing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/MusicUtil;)Landroid/media/AudioManager;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/util/MusicUtil;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/MusicUtil;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/util/MusicUtil;->mMusicPlayPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/util/MusicUtil;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/util/MusicUtil;->mMusicPlayPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/MusicUtil;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/keephealth/android/util/MusicUtil;->eventtime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/MusicUtil;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/MusicUtil;->sendMusicKeyEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/MusicUtil;)Landroid/os/Handler;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/util/MusicUtil;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/MusicUtil;)Lcom/keephealth/android/views/CustomToggleButton;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/util/MusicUtil;->customToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    return-object p0
.end method

.method private dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V
    .registers 7

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 242
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->audioManager:Landroid/media/AudioManager;

    .line 244
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_17

    return-void

    :cond_17
    const/16 v1, 0x18

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p2, v1, :cond_21

    .line 249
    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_32

    :cond_21
    const/16 v1, 0x19

    if-ne p2, v1, :cond_2a

    const/4 p1, -0x1

    .line 254
    invoke-virtual {v0, v2, p1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_32

    .line 258
    :cond_2a
    :try_start_2a
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    return-void
.end method

.method public static getMusicPlayLists()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/MusicPlayData;",
            ">;"
        }
    .end annotation

    .line 396
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->getMusicPlayerLists()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getMusicPlayLists(Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/MusicPlayData;",
            ">;"
        }
    .end annotation

    .line 408
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/MusicUtil;->getShareApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 414
    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4e

    .line 415
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 416
    new-instance v5, Lcom/keephealth/android/model/bean/MusicPlayData;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/MusicPlayData;-><init>()V

    if-eqz p0, :cond_30

    .line 419
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPlayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 422
    :cond_30
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 423
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-virtual {v5, v6}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPlayName(Ljava/lang/String;)V

    .line 425
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPackageName(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 428
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 431
    :cond_4e
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->queryFilterAppInfo()Lcom/keephealth/android/model/bean/MusicPlayData;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 432
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->queryFilterAppInfo()Lcom/keephealth/android/model/bean/MusicPlayData;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    return-object v1
.end method

.method public static getMusicPlayerLists()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/MusicPlayData;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x800000

    .line 449
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    new-instance v3, Ljava/io/File;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    .line 452
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 454
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 455
    new-instance v4, Lcom/keephealth/android/model/bean/MusicPlayData;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/MusicPlayData;-><init>()V

    .line 456
    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPlayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 457
    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPlayName(Ljava/lang/String;)V

    .line 458
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPackageName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_6a
    return-object v1
.end method

.method public static getSelectedMusic()Ljava/lang/String;
    .registers 7

    .line 468
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->getMusicPlayerLists()Ljava/util/ArrayList;

    move-result-object v0

    .line 471
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMusicPlayPackageName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 474
    const-string v2, ""

    if-eqz v0, :cond_5b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 478
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/MusicPlayData;

    .line 479
    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 481
    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_4f

    :cond_4d
    move-object v1, v2

    move v2, v5

    :goto_4f
    if-nez v2, :cond_5a

    .line 487
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/MusicPlayData;

    iget-object v2, v0, Lcom/keephealth/android/model/bean/MusicPlayData;->playName:Ljava/lang/String;

    goto :goto_5b

    :cond_5a
    move-object v2, v1

    .line 491
    :cond_5b
    :goto_5b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "musicName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-object v2
.end method

.method public static getShareApps(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x60

    .line 534
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static queryFilterAppInfo()Lcom/keephealth/android/model/bean/MusicPlayData;
    .registers 6

    .line 502
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 505
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 508
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 509
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 511
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 512
    new-instance v1, Lcom/keephealth/android/model/bean/MusicPlayData;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/MusicPlayData;-><init>()V

    .line 513
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPlayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPlayName(Ljava/lang/String;)V

    .line 516
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/MusicPlayData;->setPackageName(Ljava/lang/String;)V

    return-object v1

    :cond_59
    return-object v3
.end method

.method private sendMusicKeyEvent(I)V
    .registers 14

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v7, v0, v2

    .line 221
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    move-wide v5, v7

    move v10, p1

    invoke-direct/range {v4 .. v11}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 223
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/MusicUtil;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V

    const/4 v1, 0x1

    .line 224
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/MusicUtil;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V

    .line 225
    const-string p1, "----AudioManager \u53d1\u9001\u952e\u503c\u6210\u529f----"

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addListener()V
    .registers 1

    return-void
.end method

.method protected isDeviceConnected()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public openMusicService()V
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->customToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 271
    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->handlerz:Landroid/os/Handler;

    .line 275
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/MusicUtil;->deviceCallbackWrapper:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    .line 276
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/keephealth/android/util/MusicUtil;->deviceCallbackWrapper:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->addDeviceCallback(ILcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    return-void
.end method

.method public removeListener()V
    .registers 1

    return-void
.end method

.method public setNotConnectedNoticeSwitchState(Z)V
    .registers 6

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->customToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    if-eqz v0, :cond_10

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/keephealth/android/util/MusicUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/util/MusicUtil$2;-><init>(Lcom/keephealth/android/util/MusicUtil;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method public setNoticeMusicPlay(Z)V
    .registers 2

    return-void
.end method
