.class public Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
.super Landroid/service/notification/NotificationListenerService;
.source "IntelligentNotificationAddServiceOld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$SingletonHolder;
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

    .line 80
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mTitle:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isSending:Z

    .line 88
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    .line 92
    new-instance v1, Lcom/keephealth/android/util/ble/HealthDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/HealthDataHandler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;

    const/16 v1, 0x2710

    .line 105
    iput v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->delayMillis:I

    const/16 v1, 0xc8

    .line 106
    iput v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->delayMillis2:I

    .line 214
    new-instance v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$1;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->task:Ljava/lang/Runnable;

    .line 226
    new-instance v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$2;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->task2:Ljava/lang/Runnable;

    .line 1082
    iput v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->index:I

    .line 1083
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->timeRun:Ljava/lang/Runnable;

    .line 1102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;

    .line 1104
    const-string v0, "NOTICE"

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->TAG:Ljava/lang/String;

    .line 1319
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$5;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mRunnable:Ljava/lang/Runnable;

    .line 1338
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$6;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Landroid/os/Handler;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;Z)Z
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isSending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;B)B
    .registers 2

    .line 80
    iput-byte p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mType:B

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Landroid/os/Handler;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p1
.end method

.method public static getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
    .registers 1

    .line 99
    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$SingletonHolder;->INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$SingletonHolder;->access$000()Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    move-result-object v0

    return-object v0
.end method

.method public static isProessRunning(Landroid/content/Context;)Z
    .registers 4

    .line 1278
    const-string v0, "finish"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 1280
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 1282
    :cond_14
    const-string v0, "newActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    .line 1286
    :cond_1e
    const-string p0, "application5"

    const-string v0, "finish == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return v2
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 930
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x4000

    .line 932
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 933
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

    .line 937
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private postMessage(I)V
    .registers 6

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u6d88\u606f...isRunningDialCenter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isSending:Z

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

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u6d88\u606f1111:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fff3sw2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isSending:Z

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

    .line 1072
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/sevice/SendMessage;

    if-eqz p1, :cond_ea

    .line 1074
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

    .line 1075
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

    .line 1076
    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ea
    return-void
.end method

.method private sendText(Landroid/app/Notification;BLjava/lang/String;)V
    .registers 10

    .line 943
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

    .line 947
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

    .line 948
    :goto_33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 950
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 951
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    .line 952
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 953
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 955
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

    .line 963
    const-string v1, "android.title"

    const-string v2, "android.text"

    if-ne p2, v0, :cond_d4

    .line 964
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_e0

    .line 966
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

    .line 968
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

    .line 970
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 973
    :cond_ae
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 974
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_d3

    .line 975
    const-string v3, "\u6761\u65b0\u4fe1\u606f"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c5

    goto :goto_d3

    :cond_c5
    if-nez v0, :cond_c8

    return-void

    .line 981
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

    .line 987
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 995
    :cond_e0
    :goto_e0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_103

    .line 996
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 997
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 998
    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_f9

    .line 999
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fb

    .line 1001
    :cond_f9
    check-cast p1, Ljava/lang/String;

    .line 1003
    :goto_fb
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    move-object v3, p3

    :cond_102
    move-object p3, p1

    .line 1007
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

    .line 1011
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mTitle:Ljava/lang/String;

    if-eqz p1, :cond_14f

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mText:Ljava/lang/String;

    if-eqz v1, :cond_14f

    if-eqz v3, :cond_14f

    if-eqz p3, :cond_14f

    .line 1012
    iget-byte v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mType:B

    if-ne v1, p2, :cond_14f

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14f

    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 1013
    const-string p1, "\u62e6\u622a\u4e86"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1017
    :cond_14f
    iput-object v3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mTitle:Ljava/lang/String;

    .line 1018
    iput-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mText:Ljava/lang/String;

    .line 1019
    iput-byte p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mType:B

    if-nez v3, :cond_15b

    .line 1021
    const-string p1, ""

    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mTitle:Ljava/lang/String;

    .line 1028
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

    .line 1029
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    .line 1033
    new-instance p1, Lcom/keephealth/android/sevice/SendMessage;

    invoke-direct {p1}, Lcom/keephealth/android/sevice/SendMessage;-><init>()V

    .line 1034
    iget-byte p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mType:B

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmType(I)V

    .line 1035
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmTitle(Ljava/lang/String;)V

    .line 1036
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmText(Ljava/lang/String;)V

    .line 1037
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 1038
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->postMessage(I)V

    return-void
.end method

.method private setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1106
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    if-nez v0, :cond_2c

    .line 1108
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 1111
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isSending:Z

    .line 1112
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1113
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$4;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 1174
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

    .line 1054
    const-string v0, "\u6765\u7535\u4e86"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1056
    new-instance v0, Lcom/keephealth/android/sevice/SendMessage;

    invoke-direct {v0}, Lcom/keephealth/android/sevice/SendMessage;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    .line 1057
    invoke-virtual {v0, p1}, Lcom/keephealth/android/sevice/SendMessage;->setmType(I)V

    .line 1058
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmTitle(Ljava/lang/String;)V

    .line 1059
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/sevice/SendMessage;->setmText(Ljava/lang/String;)V

    .line 1060
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    iget-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-interface {p1, p3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1061
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mTitle:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  sendMessages.size():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hfgfr3f2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_50

    .line 1063
    invoke-direct {p0, p2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->postMessage(I)V

    :cond_50
    return-void
.end method

.method public getCurrentStep()V
    .registers 14

    .line 240
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_46

    .line 243
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "otifition_one"

    const/4 v4, 0x2

    const-string v5, "com.hearth.notification"

    invoke-direct {v0, v5, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 245
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 247
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 248
    invoke-virtual {v0, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 249
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 250
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_41

    .line 252
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 254
    :cond_41
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 267
    :cond_46
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 274
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_3fd

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_3fd

    .line 275
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    const v4, 0x7f100143

    const-string v5, "msg"

    const/16 v6, 0x8

    const/16 v7, 0x1f

    const-string v8, "gfe332w5t"

    const-string v9, "IS_LOGIN_STATE"

    const-string v10, "classStr"

    const/high16 v11, 0x4000000

    if-eqz v0, :cond_24e

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_144

    .line 277
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v9, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 279
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    const-string v7, "hfree23"

    if-eqz v0, :cond_10c

    .line 280
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 281
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_c8

    .line 282
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 283
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1ea

    .line 286
    :cond_c8
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 287
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1ea

    .line 290
    :cond_e9
    const-string v0, "hfgfr2"

    const-string v8, "!!!22222:"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Landroid/content/Intent;

    .line 292
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    invoke-static {v0, v1, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 293
    const-string v0, "MainActivityNew.class"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ea

    .line 297
    :cond_10c
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Landroid/content/Intent;

    .line 298
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    const-class v12, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v9, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-static {v0, v1, v9, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 299
    const-string v0, "WelcomeActivity.class"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v0, "WelcomeActivity---3"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ea

    .line 303
    :cond_12d
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 304
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1ea

    .line 308
    :cond_144
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v9, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 309
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 310
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a4

    .line 311
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_184

    .line 312
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 313
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1ea

    .line 315
    :cond_184
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 316
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1ea

    .line 319
    :cond_1a4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 320
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1ea

    .line 325
    :cond_1ba
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 326
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 327
    const-string v0, "WelcomeActivity---4"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ea

    .line 330
    :cond_1d5
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 331
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 336
    :goto_1ea
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_245

    .line 341
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1001ec

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 344
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 346
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 347
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_3fd

    .line 353
    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_3fd

    .line 357
    :cond_245
    const-string v0, "ffr3ddt"

    const-string v1, "builder == null 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3fd

    .line 362
    :cond_24e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2fe

    .line 363
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v9, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 364
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2cb

    .line 365
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b4

    .line 366
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_293

    .line 367
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 368
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3a4

    .line 370
    :cond_293
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 371
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3a4

    .line 374
    :cond_2b4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 375
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3a4

    .line 380
    :cond_2cb
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 381
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 382
    const-string v0, "WelcomeActivity---5"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a4

    .line 385
    :cond_2e7
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 386
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_3a4

    .line 390
    :cond_2fe
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v9, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_38f

    .line 391
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_374

    .line 392
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35e

    .line 393
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v0, :cond_33e

    .line 394
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 395
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3a4

    .line 397
    :cond_33e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 398
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3a4

    .line 401
    :cond_35e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 402
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3a4

    .line 406
    :cond_374
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 407
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 408
    const-string v0, "WelcomeActivity---6"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a4

    .line 412
    :cond_38f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    .line 413
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 419
    :goto_3a4
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_3fd

    .line 420
    iget-object v7, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 422
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 436
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100258

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 441
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_3fd

    .line 443
    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3fd
    :goto_3fd
    return-void
.end method

.method public getCurrentStepTwo()V
    .registers 17

    move-object/from16 v0, p0

    .line 459
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    .line 460
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_44

    .line 462
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "otifition_one"

    const/4 v5, 0x2

    const-string v6, "com.hearth.notification"

    invoke-direct {v1, v6, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 464
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v2, -0x10000

    .line 465
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 466
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 467
    invoke-virtual {v1, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 468
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 469
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_3f

    .line 471
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 473
    :cond_3f
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 486
    :cond_44
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 487
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 488
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 489
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 490
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 491
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v6, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hfgfr3f2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v1

    const-string v2, "fdrr3"

    const v6, 0x7f100143

    const-string v7, "msg"

    const/16 v8, 0x8

    const/16 v9, 0x1f

    const-string v10, "hfgffr2"

    const-string v11, "gfe332w5t"

    const-string v12, "IS_LOGIN_STATE"

    const-string v13, "classStr"

    const/high16 v14, 0x4000000

    if-eqz v1, :cond_25a

    .line 494
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v15, "\u6709\u8fdb\u7a0b"

    const-string v3, "hfgfrf32"

    if-lt v1, v9, :cond_160

    .line 495
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v1, v12, v9}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 496
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 497
    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10c

    .line 500
    const-string v1, "hfgfr2"

    const-string v3, "!!!11111:"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 502
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1f9

    .line 504
    :cond_10c
    const-string v1, "111:"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 506
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1f9

    .line 509
    :cond_128
    const-string v1, "\u6ca1\u6709\u8fdb\u7a0b"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 513
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 514
    const-string v1, "WelcomeActivity---7"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f9

    .line 517
    :cond_149
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 518
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1f9

    .line 522
    :cond_160
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v1, v12, v9}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 523
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 524
    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 526
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 527
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1f9

    .line 529
    :cond_1a9
    const-string v1, "1212:"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 531
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1f9

    .line 535
    :cond_1c4
    const-string v1, "\u6ca1\u6709\u8fdb\u7a0b222"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 538
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 539
    const-string v1, "WelcomeActivity---8"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f9

    .line 542
    :cond_1e4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 543
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 542
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 548
    :goto_1f9
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_3e7

    .line 553
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 556
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 557
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1001ec

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 558
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 559
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 560
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 561
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 562
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 563
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 564
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_3e7

    .line 565
    const-string v1, "777"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    iget-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_3e7

    .line 570
    :cond_25a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_2f4

    .line 571
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v12, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2dd

    .line 572
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c1

    .line 573
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a5

    .line 574
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 575
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_380

    .line 577
    :cond_2a5
    const-string v1, "222:"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 579
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_380

    .line 583
    :cond_2c1
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 584
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 585
    const-string v1, "WelcomeActivity---9"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_380

    .line 588
    :cond_2dd
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 589
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_380

    .line 593
    :cond_2f4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v12, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_36b

    .line 594
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_350

    .line 595
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33a

    .line 596
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 597
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_380

    .line 599
    :cond_33a
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 600
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_380

    .line 604
    :cond_350
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 605
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 606
    const-string v1, "WelcomeActivity---10"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_380

    .line 609
    :cond_36b
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    .line 610
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    invoke-static {v1, v5, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 616
    :goto_380
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_3e7

    .line 617
    iget-object v3, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 618
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 619
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 620
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 622
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 623
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 632
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 635
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 636
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100258

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 637
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_3e0

    .line 638
    iget-object v3, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 639
    const-string v1, "111"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e7

    .line 641
    :cond_3e0
    const-string v1, "application3"

    const-string v2, "manager == null  111"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e7
    :goto_3e7
    return-void
.end method

.method public handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1044
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_9

    goto :goto_15

    .line 1046
    :cond_9
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x2

    .line 1047
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->postMessage(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 674
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 9

    .line 114
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 115
    iput-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->context:Landroid/content/Context;

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "gfe332w5t"

    const-string v3, "IS_LOGIN_STATE"

    const-string v4, "classStr"

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    .line 140
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-lt v0, v1, :cond_ac

    .line 117
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 118
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 119
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 120
    const-string v0, "application2"

    const-string v1, "33333"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 122
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_134

    .line 124
    :cond_62
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_134

    .line 130
    :cond_79
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 132
    const-string v0, "WelcomeActivity---1"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_134

    .line 135
    :cond_95
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 136
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_134

    .line 140
    :cond_ac
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 141
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 142
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 143
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_134

    .line 146
    :cond_ee
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_134

    .line 151
    :cond_104
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 152
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 153
    const-string v0, "WelcomeActivity---2"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    .line 160
    :cond_11f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 161
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-static {v0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    .line 165
    :goto_134
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_172

    .line 168
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "otifition_one"

    const/4 v4, 0x2

    const-string v5, "com.hearth.notification"

    invoke-direct {v0, v5, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 170
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    .line 171
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 172
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 173
    invoke-virtual {v0, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 174
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 175
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_16d

    .line 177
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 179
    :cond_16d
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 182
    :cond_172
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1c6

    .line 205
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 206
    const-string v0, "fdrr3"

    const-string v1, "222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    .line 208
    :cond_1c6
    const-string v0, "application3"

    const-string v1, "manager == null 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_1cd
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    .line 211
    const-string v0, "FF33f2"

    const-string v1, "\u542f\u52a8\u63d0\u9192\u901a\u77e5\u670d\u52a1..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 694
    const-string v0, "IntelligentNotificationService : onDestroy"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 695
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onListenerConnected()V
    .registers 1

    .line 684
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    return-void
.end method

.method public onListenerDisconnected()V
    .registers 1

    .line 689
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 12

    .line 703
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->context:Landroid/content/Context;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 705
    iget-object v3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v3

    .line 707
    iget-object v4, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->context:Landroid/content/Context;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 717
    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v4, :cond_532

    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v4, :cond_532

    sget-boolean v4, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v4, :cond_29

    goto/16 :goto_532

    .line 720
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

    .line 729
    :cond_34
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 730
    iget-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    .line 732
    const-string v7, "com.tencent.mm"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    if-eqz v3, :cond_4c

    .line 737
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechat()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_4c
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    if-eqz p1, :cond_532

    .line 738
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 739
    const-string p1, "\u8bed\u97f3\u901a\u8bdd\u4e2d"

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6e

    const-string p1, "\u8a9e\u97f3\u901a\u8a71\u4e2d"

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6e

    const-string p1, "Tap to continue as voice call in progress"

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 743
    :cond_6e
    const-string p1, "\u5fae\u4fe1\u6b63\u5728\u8bed\u97f3"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_74
    const/4 p1, 0x2

    .line 747
    const-string v1, "weixin"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 749
    :cond_7c
    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_504

    const-string v6, "com.tencent.qqlite"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_504

    const-string v6, "com.tencent.mobileqqi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    goto/16 :goto_504

    .line 754
    :cond_96
    const-string p1, "com.facebook.katana"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 755
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebook()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_aa
    const/4 p1, 0x4

    .line 756
    const-string v1, "facebook"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 758
    :cond_b2
    const-string p1, "com.twitter.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 759
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_c6

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isTwitter()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_c6
    const/4 p1, 0x6

    .line 760
    const-string v1, "twitter"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 762
    :cond_ce
    const-string p1, "com.whatsapp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f1

    const-string p1, "com.whatsapp.w4b"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e0

    goto/16 :goto_4f1

    .line 766
    :cond_e0
    const-string p1, "com.linkedin.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4df

    const-string p1, "com.linkedin.android.injobs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f2

    goto/16 :goto_4df

    .line 770
    :cond_f2
    const-string p1, "com.instagram.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 771
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_106

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isInstagram()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_106
    const/16 p1, 0xa

    .line 772
    const-string v1, "instagram"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 774
    :cond_10f
    const-string p1, "jp.naver.line.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4cb

    const-string p1, "line.android"

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_121

    goto/16 :goto_4cb

    .line 778
    :cond_121
    const-string p1, "com.vkontakte.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13e

    .line 779
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_135

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isVk()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_135
    const/16 p1, 0xd

    .line 780
    const-string v1, "vkontakte"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 782
    :cond_13e
    const-string p1, "com.skype.raider"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b8

    const-string p1, "com.skype.rover"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_150

    goto/16 :goto_4b8

    .line 786
    :cond_150
    const-string p1, "com.facebook.orca"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "messager"

    if-eqz p1, :cond_16b

    .line 787
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_166

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result p1

    if-eqz p1, :cond_532

    .line 788
    :cond_166
    invoke-direct {p0, v0, v5, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 790
    :cond_16b
    const-string p1, "com.viber.voip"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_186

    .line 791
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_17f

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_17f
    const/16 p1, 0xe

    .line 792
    invoke-direct {p0, v0, p1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 794
    :cond_186
    const-string p1, "org.telegram.messenger"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    .line 795
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_19a

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isTelegram()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_19a
    const/16 p1, 0x10

    .line 796
    invoke-direct {p0, v0, p1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 798
    :cond_1a1
    const-string p1, "com.google.android.gm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    .line 799
    const-string v2, "com.tencent.androidqqmail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a3

    const-string v5, "com.netease.mail"

    .line 800
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a3

    .line 801
    const-string v5, "com.netease.mobimail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a3

    const-string v6, "com.asiainfo.android"

    .line 802
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a3

    .line 803
    const-string v6, "com.yahoo.mobile.client.android.mail"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a3

    const-string v7, "com.microsoft.office.outlook"

    .line 804
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a3

    .line 805
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.microsoft.Office.Outlook"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.aol.mobile.aolapp"

    .line 806
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.easilydo.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.readdle.spark"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    .line 807
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.my.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.mailapp.view"

    .line 808
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.wanmei.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "cn.wo.mail.iWoMail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.sina.mail.free"

    .line 809
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.apple.mobilemail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.usps.uspsmobile"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.particlenews.newsbreak"

    .line 810
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.duckduckgo.mobile.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "jp.co.softbank.OfficialApp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.chirpeur.chirpmail"

    .line 811
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.omvistech.mailpod"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.niftypm.com"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "ch.protonmail.android"

    .line 812
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.fastmail.FastMail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "ru.yandex.mail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.zoho.mail"

    .line 813
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.alibaba.cloudmail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    const-string p1, "com.corp21cn.mail189"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a3

    .line 814
    const-string p1, "com.android.email"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "com.tempmail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "cn.lunkr.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "cn.cj.pe"

    .line 815
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "cn.mailchat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "com.sohu.mail.client.cordova"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "org.kman.AquaMail"

    .line 816
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "de.gmx.mobile.android.mail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a3

    const-string v2, "ru.mail.mailapp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f3

    goto/16 :goto_4a3

    .line 823
    :cond_2f3
    const-string v2, "com.kakao.talk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_310

    .line 824
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_307

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_307
    const/16 p1, 0x12

    .line 825
    const-string v1, "kakaotalk"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 827
    :cond_310
    const-string v2, "com.keephealthpro.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_532

    const-string v2, "com.runmifit.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_322

    goto/16 :goto_532

    .line 830
    :cond_322
    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const v5, 0x7f1001c0

    const-string v6, "android"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x2

    if-nez v2, :cond_3c0

    .line 831
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_33e

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result p1

    if-eqz p1, :cond_532

    .line 832
    :cond_33e
    iput-boolean v8, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isExist:Z

    .line 834
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_356

    if-eqz v4, :cond_532

    .line 837
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    const-string p1, "other1"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 841
    :cond_356
    :goto_356
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v8, p1, :cond_373

    if-eqz v4, :cond_370

    .line 844
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_370

    .line 845
    iput-boolean v7, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isExist:Z

    :cond_370
    add-int/lit8 v8, v8, 0x1

    goto :goto_356

    .line 850
    :cond_373
    iget-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isExist:Z

    if-nez p1, :cond_383

    .line 851
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    const-string p1, "other2"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    :cond_383
    if-nez v4, :cond_38c

    .line 857
    const-string p1, "other3"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 859
    :cond_38c
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39e

    .line 860
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 861
    const-string p1, "other4"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 862
    :cond_39e
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_532

    .line 863
    const-string p1, "other5"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 864
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_532

    .line 872
    :cond_3c0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_532

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkgName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFF32211"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_532

    .line 876
    iput-boolean v8, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isExist:Z

    .line 878
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3fd

    if-eqz v4, :cond_532

    .line 881
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    const-string p1, "other7"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 883
    const-string p1, "111:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_532

    .line 886
    :cond_3fd
    :goto_3fd
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v8, p1, :cond_41a

    if-eqz v4, :cond_417

    .line 889
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_417

    .line 890
    iput-boolean v7, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isExist:Z

    :cond_417
    add-int/lit8 v8, v8, 0x1

    goto :goto_3fd

    .line 894
    :cond_41a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isExist:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isExist:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isExist:Z

    if-nez p1, :cond_443

    .line 897
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    const-string p1, "other8"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 899
    const-string p1, "222:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_532

    :cond_443
    if-nez v4, :cond_451

    .line 904
    const-string p1, "other9"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 905
    const-string p1, "333:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_532

    .line 907
    :cond_451
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_468

    .line 908
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 909
    const-string p1, "other10"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 910
    const-string p1, "444:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_532

    .line 911
    :cond_468
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48f

    .line 912
    const-string p1, "other11"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 913
    const-string p1, "555:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->listName:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_532

    .line 915
    :cond_48f
    const-string p1, "com.android.mms"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_532

    .line 916
    const-string p1, "other12"

    invoke-direct {p0, v0, v9, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 917
    const-string p1, "666:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_532

    .line 820
    :cond_4a3
    :goto_4a3
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_4af

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_4af
    const/16 p1, 0x9

    .line 821
    const-string v1, "emial"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_532

    .line 783
    :cond_4b8
    :goto_4b8
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_4c4

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isSkype()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_4c4
    const/4 p1, 0x5

    .line 784
    const-string v1, "skype"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_532

    .line 775
    :cond_4cb
    :goto_4cb
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_4d7

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isLine()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_4d7
    const/16 p1, 0x8

    .line 776
    const-string v1, "line"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_532

    .line 767
    :cond_4df
    :goto_4df
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_4eb

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isLinkedin()Z

    move-result p1

    if-eqz p1, :cond_532

    .line 768
    :cond_4eb
    const-string p1, "linked"

    invoke-direct {p0, v0, v2, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_532

    .line 763
    :cond_4f1
    :goto_4f1
    iget-boolean p1, v1, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    if-eqz p1, :cond_532

    if-eqz v3, :cond_4fd

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isWhatsapp()Z

    move-result p1

    if-eqz p1, :cond_532

    :cond_4fd
    const/4 p1, 0x7

    .line 764
    const-string v1, "whatsApp"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto :goto_532

    .line 750
    :cond_504
    :goto_504
    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    if-eqz v1, :cond_532

    if-eqz v3, :cond_510

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isQq()Z

    move-result v1

    if-eqz v1, :cond_532

    .line 751
    :cond_510
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

    .line 752
    const-string v1, "qq"

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    :cond_532
    :goto_532
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2

    .line 679
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .line 651
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->notification:Landroid/app/Notification;

    const/16 v1, 0x64

    .line 653
    :try_start_a
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 654
    invoke-virtual {p0, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->stopForeground(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_11

    .line 658
    :catch_11
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->task2:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 5

    .line 1294
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1295
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

    .line 1296
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 1297
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "finish"

    invoke-static {v1, v2, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    sput p1, Lcom/keephealth/android/app/AppApplication;->isIntentClass:I

    .line 1299
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->getCurrentStepTwo()V

    .line 1300
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1301
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    if-eqz v1, :cond_4b

    .line 1302
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1303
    const-string v1, "onTaskRemoved22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    const-wide/16 v0, 0xf

    .line 1306
    :try_start_41
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    .line 1308
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1310
    :goto_49
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1312
    :cond_4b
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1313
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isFirstDescrition:Z

    .line 1314
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->firstHome:Z

    .line 1315
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method
