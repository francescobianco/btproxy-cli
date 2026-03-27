.class public Lcom/keephealth/android/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;,
        Lcom/keephealth/android/util/Utils$OnActivityDestroyedListener;,
        Lcom/keephealth/android/util/Utils$OnAppStatusChangedListener;,
        Lcom/keephealth/android/util/Utils$FileProvider4UtilCode;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIFECYCLE:Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

.field private static final BASE_UUID_STRING:Ljava/lang/String; = "-0000-1000-8000-00805F9B34FB"

.field private static final PERMISSION_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.blankj.utilcode.util.PermissionUtils$PermissionActivity"

.field private static sApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

    invoke-direct {v0}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static appPermissions()[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static getActivityLifecycle()Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;
    .registers 1

    .line 156
    sget-object v0, Lcom/keephealth/android/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

    return-object v0
.end method

.method static getActivityList()Ljava/util/LinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/keephealth/android/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

    iget-object v0, v0, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getApp()Landroid/app/Application;
    .registers 1

    .line 127
    sget-object v0, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_5

    return-object v0

    .line 128
    :cond_5
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/keephealth/android/util/Utils;->init(Landroid/app/Application;)V

    return-object v0
.end method

.method private static getApplicationByReflect()Landroid/app/Application;
    .registers 6

    .line 136
    const-string v0, "u should init first"

    :try_start_2
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 137
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 138
    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 142
    check-cast v1, Landroid/app/Application;

    return-object v1

    .line 140
    :cond_2b
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_31} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_31} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_31} :catch_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_31} :catch_31

    :catch_31
    move-exception v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_44

    :catch_36
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_44

    :catch_3b
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_44

    :catch_40
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 152
    :goto_44
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getBp(II)Ljava/lang/String;
    .registers 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 55
    const-string v1, "*/*"

    if-eqz p0, :cond_13

    .line 57
    :try_start_9
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0xc

    .line 58
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_12} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_12} :catch_13

    nop

    :catch_13
    :cond_13
    return-object v1
.end method

.method static getTopActivityOrApp()Landroid/content/Context;
    .registers 1

    .line 164
    invoke-static {}, Lcom/keephealth/android/util/Utils;->isAppForeground()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 165
    sget-object v0, Lcom/keephealth/android/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_12

    .line 166
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    :cond_12
    return-object v0

    .line 168
    :cond_13
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 3

    .line 104
    sget-object v0, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_17

    if-nez p0, :cond_d

    .line 106
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    goto :goto_f

    .line 108
    :cond_d
    sput-object p0, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    .line 110
    :goto_f
    sget-object p0, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    sget-object v0, Lcom/keephealth/android/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_36

    :cond_17
    if-eqz p0, :cond_36

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_36

    .line 113
    sget-object v0, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    sget-object v1, Lcom/keephealth/android/util/Utils;->ACTIVITY_LIFECYCLE:Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 114
    iget-object v0, v1, Lcom/keephealth/android/util/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 115
    sput-object p0, Lcom/keephealth/android/util/Utils;->sApplication:Landroid/app/Application;

    .line 116
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    if-nez p0, :cond_a

    .line 91
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/Utils;->init(Landroid/app/Application;)V

    return-void

    .line 94
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/keephealth/android/util/Utils;->init(Landroid/app/Application;)V

    return-void
.end method

.method static isAppForeground()Z
    .registers 5

    .line 173
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 175
    :cond_10
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_42

    .line 177
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 178
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_21

    .line 179
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_42
    :goto_42
    return v1
.end method

.method public static shareFile(Landroid/content/Context;Ljava/io/File;)V
    .registers 5

    if-eqz p1, :cond_37

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/Utils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_37
    return-void
.end method

.method public static shortUUID2UUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    const/16 v1, 0x8

    if-ge v0, v1, :cond_17

    .line 413
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "0%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 416
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
