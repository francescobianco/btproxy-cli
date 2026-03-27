.class public Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;
.super Landroid/service/notification/NotificationListenerService;
.source "IntelligentNotificationAddServiceTwo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$SingletonHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final NOTICE_ID:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private builder:Landroid/app/Notification$Builder;

.field contentIntent:Landroid/app/PendingIntent;

.field private context:Landroid/content/Context;

.field delayMillis:I

.field delayMillis2:I

.field private handler:Landroid/os/Handler;

.field private healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;

.field index:I

.field private isExist:Z

.field private isSending:Z

.field private listName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:B

.field private manager:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field rv:Landroid/widget/RemoteViews;

.field sendMessage:Lcom/keephealth/android/sevice/SendMessage;

.field public sendMessages:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/keephealth/android/sevice/SendMessage;",
            ">;"
        }
    .end annotation
.end field

.field private step:I

.field task:Ljava/lang/Runnable;

.field task2:Ljava/lang/Runnable;

.field timeRun:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mTitle:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSending:Z

    .line 93
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    .line 97
    new-instance v1, Lcom/keephealth/android/util/ble/HealthDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/HealthDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;

    const/16 v1, 0x2710

    .line 110
    iput v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->delayMillis:I

    const/16 v1, 0xc8

    .line 111
    iput v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->delayMillis2:I

    .line 223
    new-instance v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$1;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->task:Ljava/lang/Runnable;

    .line 235
    new-instance v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$2;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->task2:Ljava/lang/Runnable;

    .line 1130
    iput v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->index:I

    .line 1131
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$3;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->timeRun:Ljava/lang/Runnable;

    .line 1150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;

    .line 1152
    const-string v0, "NOTICE"

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->TAG:Ljava/lang/String;

    .line 1369
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$5;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mRunnable:Ljava/lang/Runnable;

    .line 1379
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Z)Z
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;B)B
    .registers 2

    .line 85
    iput-byte p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mType:B

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p1
.end method

.method public static getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;
    .registers 1

    .line 104
    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$SingletonHolder;->INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$SingletonHolder;->access$000()Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    move-result-object v0

    return-object v0
.end method

.method private isBrowserPackage(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x3

    .line 968
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.apps.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.mozilla.firefox"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 974
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static isProessRunning(Landroid/content/Context;)Z
    .registers 4

    .line 1328
    const-string v0, "finish"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 1330
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 1332
    :cond_14
    const-string v0, "newActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    .line 1336
    :cond_1e
    const-string p0, "application5"

    const-string v0, "finish == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return v2
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x4000

    .line 980
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 981
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_e} :catch_13

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_17

    return p1

    :catch_13
    move-exception p0

    .line 985
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private postMessage(I)V
    .registers 6

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u6d88\u606f...isRunningDialCenter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AppApplication.getInstance().isSysndata()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  isRunningDialCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  AppApplication.isHomeLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hfgfr3f2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u6d88\u606f1111:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fff3sw2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSending:Z

    if-nez p1, :cond_ea

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_ea

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez p1, :cond_ea

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez p1, :cond_ea

    .line 1120
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/sevice/SendMessage;

    if-eqz p1, :cond_ea

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u6d88\u606f22:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ea
    return-void
.end method

.method private sendText(Landroid/app/Notification;BLjava/lang/String;)V
    .registers 10

    .line 991
    const-string v0, "]"

    const-string v1, ":"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " title2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "fff3sw2"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 995
    :try_start_23
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object v2, p3

    goto :goto_33

    :cond_2d
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 996
    :goto_33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 998
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 999
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    .line 1000
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 1001
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1002
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1003
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5e} :catch_64

    move-object v3, p3

    :cond_5f
    move-object p3, v1

    goto :goto_65

    :cond_61
    move-object v3, p3

    move-object p3, v2

    goto :goto_65

    :catch_64
    move-object v3, p3

    :goto_65
    const/4 v0, 0x7

    .line 1011
    const-string v1, "android.title"

    const-string v2, "android.text"

    if-ne p2, v0, :cond_d4

    .line 1012
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_e0

    .line 1014
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_78
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1016
    :try_start_84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bundle ContentKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a8} :catch_a9

    goto :goto_78

    :catch_a9
    move-exception v3

    .line 1018
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 1021
    :cond_ae
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1022
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_d3

    .line 1023
    const-string v3, "\u6761\u65b0\u4fe1\u606f"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c5

    goto :goto_d3

    :cond_c5
    if-nez v0, :cond_c8

    return-void

    .line 1029
    :cond_c8
    const-string v3, "WhatsApp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    return-void

    :cond_d1
    move-object v3, v0

    goto :goto_e0

    :cond_d3
    :goto_d3
    return-void

    :cond_d4
    const/16 v0, 0xb

    if-ne p2, v0, :cond_e0

    if-nez p3, :cond_e0

    .line 1035
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1043
    :cond_e0
    :goto_e0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_103

    .line 1044
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1045
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1046
    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_f9

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fb

    .line 1049
    :cond_f9
    check-cast p1, Ljava/lang/String;

    .line 1051
    :goto_fb
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    move-object v3, p3

    :cond_102
    move-object p3, p1

    .line 1055
    :cond_103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u6d88\u606f:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",mText:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",mType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF5433"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mTitle:Ljava/lang/String;

    if-eqz p1, :cond_14f

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mText:Ljava/lang/String;

    if-eqz v1, :cond_14f

    if-eqz v3, :cond_14f

    if-eqz p3, :cond_14f

    .line 1060
    iget-byte v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mType:B

    if-ne v1, p2, :cond_14f

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14f

    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 1061
    const-string p1, "\u62e6\u622a\u4e86"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1065
    :cond_14f
    iput-object v3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mTitle:Ljava/lang/String;

    .line 1066
    iput-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mText:Ljava/lang/String;

    .line 1067
    iput-byte p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mType:B

    if-nez v3, :cond_15b

    .line 1069
    const-string p1, ""

    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mTitle:Ljava/lang/String;

    .line 1076
    :cond_15b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "BluetoothLe.getDefault().getConnected():"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FF4533"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    .line 1081
    new-instance p1, Lcom/keephealth/android/sevice/SendMessage;

    invoke-direct {p1}, Lcom/keephealth/android/sevice/SendMessage;-><init>()V

    .line 1082
    iget-byte p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mType:B

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmType(I)V

    .line 1083
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmTitle(Ljava/lang/String;)V

    .line 1084
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmText(Ljava/lang/String;)V

    .line 1085
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 1086
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->postMessage(I)V

    return-void
.end method

.method private setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1154
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    if-nez v0, :cond_2c

    .line 1156
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 1159
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSending:Z

    .line 1160
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1161
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 1222
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessageType(I)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public addMessage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1102
    const-string v0, "\u6765\u7535\u4e86"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1104
    new-instance v0, Lcom/keephealth/android/sevice/SendMessage;

    invoke-direct {v0}, Lcom/keephealth/android/sevice/SendMessage;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    .line 1105
    invoke-virtual {v0, p1}, Lcom/keephealth/android/sevice/SendMessage;->setmType(I)V

    .line 1106
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmTitle(Ljava/lang/String;)V

    .line 1107
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/sevice/SendMessage;->setmText(Ljava/lang/String;)V

    .line 1108
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    iget-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-interface {p1, p3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1109
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mTitle:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  sendMessages.size():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hfgfr3f2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_50

    .line 1111
    invoke-direct {p0, p2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->postMessage(I)V

    :cond_50
    return-void
.end method

.method public getCurrentStep()V
    .registers 17

    move-object/from16 v1, p0

    .line 249
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_45

    .line 252
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "otifition_one"

    const/4 v5, 0x2

    const-string v6, "com.hearth.notification"

    invoke-direct {v0, v6, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 254
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v2, -0x10000

    .line 255
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 256
    invoke-virtual {v0, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 257
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 258
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_40

    .line 260
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 262
    :cond_40
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 265
    :cond_45
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c017f

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x7f0d0069

    const/16 v5, 0x8

    const/16 v6, 0x1f

    const v7, 0x7f0901bd

    const/4 v8, 0x0

    if-lt v0, v6, :cond_71

    .line 267
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 268
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_87

    .line 270
    :cond_71
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 271
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 274
    :goto_87
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 275
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 276
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 277
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 278
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 282
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_46a

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_46a

    .line 283
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    const-string v9, "\u5f53\u524d\u9875\u9762IntelligentNotificationAddService_e:"

    const v10, 0x7f09075f

    const-string v11, "msg"

    const-string v12, "gfe332w5t"

    const-string v13, "IS_LOGIN_STATE"

    const-string v14, "classStr"

    const/high16 v15, 0x4000000

    if-eqz v0, :cond_292

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_186

    .line 285
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v13, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 286
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "hfree23"

    if-eqz v0, :cond_14e

    .line 287
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12b

    .line 288
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_10a

    .line 289
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 290
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_22c

    .line 293
    :cond_10a
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 294
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_22c

    .line 297
    :cond_12b
    const-string v0, "hfgfr2"

    const-string v6, "!!!22222:"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    .line 299
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v12, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v6, v7, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    invoke-static {v0, v8, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 300
    const-string v0, "MainActivityNew.class"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22c

    .line 304
    :cond_14e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    .line 305
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v13, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v6, v7, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    invoke-static {v0, v8, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 306
    const-string v0, "WelcomeActivity.class"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "WelcomeActivity---3"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22c

    .line 310
    :cond_16f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 311
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_22c

    .line 315
    :cond_186
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v13, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_217

    .line 316
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    .line 317
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 318
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_1c6

    .line 319
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 320
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_22c

    .line 322
    :cond_1c6
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 323
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_22c

    .line 326
    :cond_1e6
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 327
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_22c

    .line 332
    :cond_1fc
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 333
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 334
    const-string v0, "WelcomeActivity---4"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22c

    .line 337
    :cond_217
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 338
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    invoke-static {v0, v8, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 343
    :goto_22c
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_46a

    .line 344
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1001ec

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 347
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 350
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 351
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 352
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 353
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 354
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 355
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 357
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 358
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_46a

    .line 361
    :try_start_274
    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_27d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_274 .. :try_end_27d} :catch_27f

    goto/16 :goto_46a

    :catch_27f
    move-exception v0

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_46a

    .line 373
    :cond_292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_342

    .line 374
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v0, v13, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_32b

    .line 375
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30f

    .line 376
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f8

    .line 377
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_2d7

    .line 378
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 379
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3e8

    .line 381
    :cond_2d7
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 382
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3e8

    .line 385
    :cond_2f8
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 386
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3e8

    .line 391
    :cond_30f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 392
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    const-class v14, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v10, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 393
    const-string v0, "WelcomeActivity---5"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e8

    .line 396
    :cond_32b
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 397
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3e8

    .line 401
    :cond_342
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v0, v13, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3d3

    .line 402
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 403
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a2

    .line 404
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_382

    .line 405
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 406
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3e8

    .line 408
    :cond_382
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 409
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v14}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3e8

    .line 412
    :cond_3a2
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 413
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3e8

    .line 417
    :cond_3b8
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 418
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    const-class v14, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v10, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 419
    const-string v0, "WelcomeActivity---6"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e8

    .line 423
    :cond_3d3
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    .line 424
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    invoke-static {v0, v8, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 430
    :goto_3e8
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_46a

    .line 431
    iget-object v10, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 432
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 433
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 434
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 436
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 437
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_419

    .line 439
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 440
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_42f

    .line 442
    :cond_419
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 443
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 445
    :goto_42f
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100258

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f09075f

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 448
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 452
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_46a

    .line 454
    :try_start_44f
    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_458
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44f .. :try_end_458} :catch_459

    goto :goto_46a

    :catch_459
    move-exception v0

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_46a
    :goto_46a
    return-void
.end method

.method public getCurrentStepTwo()V
    .registers 17

    move-object/from16 v1, p0

    .line 474
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_41

    .line 477
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "otifition_one"

    const/4 v5, 0x2

    const-string v6, "com.hearth.notification"

    invoke-direct {v0, v6, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 479
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v2, -0x10000

    .line 480
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 481
    invoke-virtual {v0, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 482
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 483
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_3c

    .line 485
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 487
    :cond_3c
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 490
    :cond_41
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c017f

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    const v5, 0x7f0d0069

    const/16 v6, 0x1f

    const v7, 0x7f0901bd

    const/4 v8, 0x0

    if-lt v0, v6, :cond_6d

    .line 492
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 493
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_83

    .line 495
    :cond_6d
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 496
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 499
    :goto_83
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 500
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 501
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 502
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 503
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 504
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 505
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v9, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "  "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v10, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v9, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "hfgfr3f2"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    const-string v9, "\u5f53\u524d\u9875\u9762IntelligentNotificationAddService_e:"

    const-string v10, "fdrr3"

    const v11, 0x7f09075f

    const-string v12, "msg"

    const-string v13, "hfgffr2"

    const-string v14, "gfe332w5t"

    const-string v15, "IS_LOGIN_STATE"

    const-string v5, "classStr"

    const/high16 v7, 0x4000000

    if-eqz v0, :cond_2ac

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "\u6709\u8fdb\u7a0b"

    const-string v2, "hfgfrf32"

    if-lt v0, v6, :cond_1a0

    .line 509
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v15, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 510
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 511
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14c

    .line 514
    const-string v0, "hfgfr2"

    const-string v2, "!!!11111:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 516
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_239

    .line 518
    :cond_14c
    const-string v0, "111:"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 520
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_239

    .line 523
    :cond_168
    const-string v0, "\u6ca1\u6709\u8fdb\u7a0b"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 527
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 528
    const-string v0, "WelcomeActivity---7"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_239

    .line 531
    :cond_189
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 532
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_239

    .line 536
    :cond_1a0
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v15, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 537
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 538
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e9

    .line 540
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 541
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_239

    .line 543
    :cond_1e9
    const-string v0, "1212:"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 545
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_239

    .line 549
    :cond_204
    const-string v0, "\u6ca1\u6709\u8fdb\u7a0b222"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 552
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 553
    const-string v0, "WelcomeActivity---8"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_239

    .line 556
    :cond_224
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 557
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 562
    :goto_239
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_473

    .line 565
    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 566
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 567
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 569
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 572
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 573
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 574
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 575
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 576
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 577
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 578
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_473

    .line 579
    const-string v0, "777"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :try_start_28c
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_297
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28c .. :try_end_297} :catch_299

    goto/16 :goto_473

    :catch_299
    move-exception v0

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_473

    .line 588
    :cond_2ac
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_346

    .line 589
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v15, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_32f

    .line 590
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_313

    .line 591
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f7

    .line 592
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 593
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3d2

    .line 595
    :cond_2f7
    const-string v0, "222:"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 597
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3d2

    .line 601
    :cond_313
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 602
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 603
    const-string v0, "WelcomeActivity---9"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d2

    .line 606
    :cond_32f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 607
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3d2

    .line 611
    :cond_346
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v15, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3bd

    .line 612
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a2

    .line 613
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38c

    .line 614
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 615
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3d2

    .line 617
    :cond_38c
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 618
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3d2

    .line 622
    :cond_3a2
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 623
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 624
    const-string v0, "WelcomeActivity---10"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d2

    .line 627
    :cond_3bd
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 628
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    invoke-static {v0, v8, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 634
    :goto_3d2
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_473

    .line 635
    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 636
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 637
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 638
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 640
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 641
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_40b

    .line 643
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    const v3, 0x7f0901bd

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 644
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_427

    :cond_40b
    const v3, 0x7f0901bd

    .line 646
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0069

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 647
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 649
    :goto_427
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 650
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 652
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 655
    iget-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_46c

    .line 657
    :try_start_44b
    iget-object v2, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_454
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44b .. :try_end_454} :catch_455

    goto :goto_466

    :catch_455
    move-exception v0

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 661
    :goto_466
    const-string v0, "111"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_473

    .line 663
    :cond_46c
    const-string v0, "application3"

    const-string v2, "manager == null  111"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_473
    :goto_473
    return-void
.end method

.method public handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1092
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_9

    goto :goto_15

    .line 1094
    :cond_9
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x2

    .line 1095
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->postMessage(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 694
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 9

    .line 119
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 120
    iput-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->context:Landroid/content/Context;

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "gfe332w5t"

    const-string v2, "IS_LOGIN_STATE"

    const-string v3, "classStr"

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    .line 145
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0x1f

    if-lt v0, v7, :cond_ac

    .line 122
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 123
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 124
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 125
    const-string v0, "application2"

    const-string v1, "33333"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 127
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_134

    .line 129
    :cond_62
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 130
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_134

    .line 135
    :cond_79
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 136
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v6, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    invoke-static {v0, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 137
    const-string v0, "WelcomeActivity---1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_134

    .line 140
    :cond_95
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 141
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_134

    .line 145
    :cond_ac
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 146
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 147
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 148
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_134

    .line 151
    :cond_ee
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 152
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_134

    .line 156
    :cond_104
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v6, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    invoke-static {v0, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 158
    const-string v0, "WelcomeActivity---2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    .line 165
    :cond_11f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    .line 170
    :goto_134
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_16f

    .line 173
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "otifition_one"

    const/4 v4, 0x2

    const-string v6, "com.hearth.notification"

    invoke-direct {v0, v6, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 175
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 177
    invoke-virtual {v0, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 179
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_16a

    .line 181
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 183
    :cond_16a
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 186
    :cond_16f
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    const-string v4, "msg"

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 192
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0c017f

    invoke-direct {v0, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x7f0d0069

    const v6, 0x7f0901bd

    if-lt v0, v7, :cond_1b6

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1c8

    .line 197
    :cond_1b6
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    :goto_1c8
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_210

    .line 210
    :try_start_1eb
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1eb .. :try_end_1f4} :catch_1f5

    goto :goto_208

    :catch_1f5
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762IntelligentNotificationAddService_e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 214
    :goto_208
    const-string v0, "fdrr3"

    const-string v1, "222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_217

    .line 216
    :cond_210
    const-string v0, "application3"

    const-string v1, "manager == null 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_217
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    .line 219
    const-string v0, "FF33f2"

    const-string v1, "\u542f\u52a8\u63d0\u9192\u901a\u77e5\u670d\u52a1..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 714
    const-string v0, "IntelligentNotificationService : onDestroy"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 715
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onListenerConnected()V
    .registers 1

    .line 704
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    return-void
.end method

.method public onListenerDisconnected()V
    .registers 1

    .line 709
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 14

    .line 723
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->context:Landroid/content/Context;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 725
    iget-object v3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v3

    .line 727
    iget-object v4, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->context:Landroid/content/Context;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 737
    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v4, :cond_580

    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v4, :cond_580

    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v4, :cond_29

    goto/16 :goto_580

    .line 740
    :cond_29
    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v4, :cond_2e

    return-void

    :cond_2e
    if-nez v0, :cond_31

    return-void

    :cond_31
    if-nez v1, :cond_34

    return-void

    .line 749
    :cond_34
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 750
    iget-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    .line 751
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pkgName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "  tickerText:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "6t6y6"

    invoke-static {v9, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v7, "com.tencent.mm"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    if-eqz v3, :cond_6a

    .line 757
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechat()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_6a
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    if-eqz p1, :cond_580

    .line 758
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 759
    const-string p1, "\u8bed\u97f3\u901a\u8bdd\u4e2d"

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8c

    const-string p1, "\u8a9e\u97f3\u901a\u8a71\u4e2d"

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8c

    const-string p1, "Tap to continue as voice call in progress"

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 763
    :cond_8c
    const-string p1, "\u5fae\u4fe1\u6b63\u5728\u8bed\u97f3"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_92
    const/4 p1, 0x2

    .line 767
    const-string v1, "weixin"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 769
    :cond_9a
    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_552

    const-string v6, "com.tencent.qqlite"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_552

    const-string v6, "com.tencent.mobileqqi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    goto/16 :goto_552

    .line 774
    :cond_b4
    const-string p1, "com.facebook.katana"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 775
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_c8

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebook()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_c8
    const/4 p1, 0x4

    .line 776
    const-string v1, "facebook"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 778
    :cond_d0
    const-string p1, "com.twitter.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 779
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_e4

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isTwitter()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_e4
    const/4 p1, 0x6

    .line 780
    const-string v1, "twitter"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 782
    :cond_ec
    const-string p1, "com.whatsapp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53f

    const-string p1, "com.whatsapp.w4b"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fe

    goto/16 :goto_53f

    .line 786
    :cond_fe
    const-string p1, "com.linkedin.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52d

    const-string p1, "com.linkedin.android.injobs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_110

    goto/16 :goto_52d

    .line 790
    :cond_110
    const-string p1, "com.instagram.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 791
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_124

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isInstagram()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_124
    const/16 p1, 0xa

    .line 792
    const-string v1, "instagram"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 794
    :cond_12d
    const-string p1, "jp.naver.line.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_519

    const-string p1, "line.android"

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13f

    goto/16 :goto_519

    .line 798
    :cond_13f
    const-string p1, "com.vkontakte.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15c

    .line 799
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_153

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isVk()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_153
    const/16 p1, 0xd

    .line 800
    const-string v1, "vkontakte"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 802
    :cond_15c
    const-string p1, "com.skype.raider"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_506

    const-string p1, "com.skype.rover"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16e

    goto/16 :goto_506

    .line 806
    :cond_16e
    const-string p1, "com.facebook.orca"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "messager"

    if-eqz p1, :cond_189

    .line 807
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_184

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result p1

    if-eqz p1, :cond_580

    .line 808
    :cond_184
    invoke-direct {p0, v0, v5, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 810
    :cond_189
    const-string p1, "com.viber.voip"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a4

    .line 811
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_19d

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_19d
    const/16 p1, 0xe

    .line 812
    invoke-direct {p0, v0, p1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 814
    :cond_1a4
    const-string p1, "org.telegram.messenger"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1bf

    .line 815
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_1b8

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isTelegram()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_1b8
    const/16 p1, 0x10

    .line 816
    invoke-direct {p0, v0, p1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 818
    :cond_1bf
    const-string p1, "com.google.android.gm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    .line 819
    const-string v2, "com.tencent.androidqqmail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f1

    const-string v5, "com.netease.mail"

    .line 820
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f1

    .line 821
    const-string v5, "com.netease.mobimail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f1

    const-string v6, "com.asiainfo.android"

    .line 822
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f1

    .line 823
    const-string v6, "com.yahoo.mobile.client.android.mail"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f1

    const-string v7, "com.microsoft.office.outlook"

    .line 824
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f1

    .line 825
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.microsoft.Office.Outlook"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.aol.mobile.aolapp"

    .line 826
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.easilydo.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.readdle.spark"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    .line 827
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.my.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.mailapp.view"

    .line 828
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.wanmei.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "cn.wo.mail.iWoMail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.sina.mail.free"

    .line 829
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.apple.mobilemail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.usps.uspsmobile"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.particlenews.newsbreak"

    .line 830
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.duckduckgo.mobile.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "jp.co.softbank.OfficialApp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.chirpeur.chirpmail"

    .line 831
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.omvistech.mailpod"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.niftypm.com"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "ch.protonmail.android"

    .line 832
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.fastmail.FastMail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "ru.yandex.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.zoho.mail"

    .line 833
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.alibaba.cloudmail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.corp21cn.mail189"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    .line 834
    const-string p1, "com.android.email"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "com.tempmail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "cn.lunkr.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "cn.cj.pe"

    .line 835
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "cn.mailchat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "com.sohu.mail.client.cordova"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "org.kman.AquaMail"

    .line 836
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "de.gmx.mobile.android.mail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f1

    const-string v2, "ru.mail.mailapp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_311

    goto/16 :goto_4f1

    .line 843
    :cond_311
    const-string v2, "com.kakao.talk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32e

    .line 844
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_325

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_325
    const/16 p1, 0x12

    .line 845
    const-string v1, "kakaotalk"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 847
    :cond_32e
    const-string v2, "com.keephealthpro.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_580

    const-string v2, "com.runmifit.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_340

    goto/16 :goto_580

    .line 850
    :cond_340
    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const v5, 0x7f1001c0

    const-string v6, "android"

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x2

    if-nez v2, :cond_412

    .line 851
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_35c

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result p1

    if-eqz p1, :cond_580

    .line 852
    :cond_35c
    iput-boolean v10, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isExist:Z

    .line 854
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_374

    if-eqz v4, :cond_580

    .line 857
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    const-string p1, "other1"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 861
    :cond_374
    :goto_374
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v10, p1, :cond_391

    if-eqz v4, :cond_38e

    .line 864
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38e

    .line 865
    iput-boolean v7, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isExist:Z

    :cond_38e
    add-int/lit8 v10, v10, 0x1

    goto :goto_374

    .line 870
    :cond_391
    iget-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isExist:Z

    if-nez p1, :cond_3a1

    .line 871
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    const-string p1, "other2"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 875
    :cond_3a1
    const-string p1, "\u5982\u679c\u6570\u7ec4\u91cc\u9762\u5b58\u5728"

    invoke-static {v9, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_3af

    .line 877
    const-string p1, "other3"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 879
    :cond_3af
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "notification:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3da

    .line 881
    const-string p1, "\u5982\u679c\u6570\u7ec4\u91cc\u9762\u5b58\u5728111"

    invoke-static {v9, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 883
    const-string p1, "other4"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 884
    :cond_3da
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_401

    .line 885
    const-string p1, "\u5982\u679c\u6570\u7ec4\u91cc\u9762\u5b58\u5728222"

    invoke-static {v9, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string p1, "other5"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 887
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_580

    .line 889
    :cond_401
    const-string p1, "\u5982\u679c\u6570\u7ec4\u91cc\u9762\u5b58\u5728333"

    invoke-static {v9, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string p1, "other6"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 891
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_580

    .line 899
    :cond_412
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_580

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFF32211"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_580

    .line 903
    iput-boolean v10, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isExist:Z

    .line 905
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_44d

    if-eqz v4, :cond_580

    .line 908
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    const-string p1, "other7"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 910
    const-string p1, "111:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_580

    .line 913
    :cond_44d
    :goto_44d
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v10, p1, :cond_46a

    if-eqz v4, :cond_467

    .line 916
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_467

    .line 917
    iput-boolean v7, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isExist:Z

    :cond_467
    add-int/lit8 v10, v10, 0x1

    goto :goto_44d

    .line 921
    :cond_46a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isExist:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isExist:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isExist:Z

    if-nez p1, :cond_493

    .line 924
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    const-string p1, "other8"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 926
    const-string p1, "222:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_580

    :cond_493
    if-nez v4, :cond_4a1

    .line 931
    const-string p1, "other9"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 932
    const-string p1, "333:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_580

    .line 934
    :cond_4a1
    invoke-direct {p0, v4}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isBrowserPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4e5

    .line 935
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4be

    .line 936
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 937
    const-string p1, "other10"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 938
    const-string p1, "444:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_580

    .line 939
    :cond_4be
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_580

    .line 940
    const-string p1, "other11"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 941
    const-string p1, "555:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_580

    .line 945
    :cond_4e5
    const-string p1, "other12"

    invoke-direct {p0, v0, v11, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 946
    const-string p1, "666:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_580

    .line 840
    :cond_4f1
    :goto_4f1
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_4fd

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_4fd
    const/16 p1, 0x9

    .line 841
    const-string v1, "emial"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_580

    .line 803
    :cond_506
    :goto_506
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_512

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isSkype()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_512
    const/4 p1, 0x5

    .line 804
    const-string v1, "skype"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_580

    .line 795
    :cond_519
    :goto_519
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_525

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isLine()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_525
    const/16 p1, 0x8

    .line 796
    const-string v1, "line"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_580

    .line 787
    :cond_52d
    :goto_52d
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_539

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isLinkedin()Z

    move-result p1

    if-eqz p1, :cond_580

    .line 788
    :cond_539
    const-string p1, "linked"

    invoke-direct {p0, v0, v2, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_580

    .line 783
    :cond_53f
    :goto_53f
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    if-eqz p1, :cond_580

    if-eqz v3, :cond_54b

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isWhatsapp()Z

    move-result p1

    if-eqz p1, :cond_580

    :cond_54b
    const/4 p1, 0x7

    .line 784
    const-string v1, "whatsApp"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_580

    .line 770
    :cond_552
    :goto_552
    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    if-eqz v1, :cond_580

    if-eqz v3, :cond_55e

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isQq()Z

    move-result v1

    if-eqz v1, :cond_580

    .line 771
    :cond_55e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d88\u606f\u663e\u793a\u65f6\u95f4:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hfgfr3f2"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 772
    const-string v1, "qq"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    :cond_580
    :goto_580
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2

    .line 699
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .line 673
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->notification:Landroid/app/Notification;

    .line 680
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 681
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->task2:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 5

    .line 1344
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1345
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTaskRemoved11:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hfgffr2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1346
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 1347
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "finish"

    invoke-static {v1, v2, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    sput p1, Lcom/keephealth/android/app/AppApplication;->isIntentClass:I

    .line 1349
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->getCurrentStepTwo()V

    .line 1350
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1351
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    if-eqz v1, :cond_4b

    .line 1352
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1353
    const-string v1, "onTaskRemoved22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    const-wide/16 v0, 0xf

    .line 1356
    :try_start_41
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    .line 1358
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1360
    :goto_49
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1362
    :cond_4b
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1363
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isFirstDescrition:Z

    .line 1364
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->firstHome:Z

    .line 1365
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method
