.class public Lcom/keephealth/android/sevice/IntelligentNotificationAddService;
.super Landroid/service/notification/NotificationListenerService;
.source "IntelligentNotificationAddService.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private builder:Landroid/app/Notification$Builder;

.field contentIntent:Landroid/app/PendingIntent;

.field private context:Landroid/content/Context;

.field delayMillis:I

.field delayMillis2:I

.field private final handler:Landroid/os/Handler;

.field index:I

.field private isSending:Z

.field private lastKey:Ljava/lang/String;

.field lastStatus:Ljava/lang/String;

.field private final listName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field task:Ljava/lang/Runnable;

.field task2:Ljava/lang/Runnable;

.field timeRun:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 91
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mTitle:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z

    .line 99
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    const/16 v1, 0x2710

    .line 114
    iput v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->delayMillis:I

    const/16 v1, 0x3e8

    .line 115
    iput v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->delayMillis2:I

    .line 214
    new-instance v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$1;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)V

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->task:Ljava/lang/Runnable;

    .line 227
    const-string v1, ""

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->lastStatus:Ljava/lang/String;

    .line 228
    new-instance v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)V

    iput-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->task2:Ljava/lang/Runnable;

    .line 464
    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->lastKey:Ljava/lang/String;

    .line 1179
    iput v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->index:I

    .line 1180
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    .line 1199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;

    .line 1201
    const-string v0, "NOTICE"

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Z)Z
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;B)B
    .registers 2

    .line 91
    iput-byte p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mType:B

    return p1
.end method

.method public static getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;
    .registers 1

    .line 105
    sget-object v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    if-nez v0, :cond_b

    .line 106
    new-instance v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-direct {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;-><init>()V

    sput-object v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    .line 108
    :cond_b
    sget-object v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->INSTANCE:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    return-object v0
.end method

.method private getPendingIntentByState()Landroid/app/PendingIntent;
    .registers 6

    .line 316
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 318
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IS_LOGIN_STATE"

    invoke-static {v0, v3, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    .line 319
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isProessRunning(Landroid/content/Context;)Z

    move-result v3

    .line 320
    const-string v4, "classStr"

    invoke-static {v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_4d

    if-eqz v3, :cond_45

    .line 324
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 325
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isShowHome:Z

    if-eqz v2, :cond_33

    .line 326
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_54

    .line 328
    :cond_33
    new-instance v2, Landroid/content/Intent;

    invoke-static {v4}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_54

    .line 331
    :cond_3d
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_54

    .line 334
    :cond_45
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_54

    .line 337
    :cond_4d
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_54
    const/high16 v3, 0x4000000

    .line 339
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static isProessRunning(Landroid/content/Context;)Z
    .registers 4

    .line 1275
    const-string v0, "finish"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1276
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 1277
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 1279
    :cond_14
    const-string v0, "newActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    .line 1283
    :cond_1e
    const-string p0, "application5"

    const-string v0, "finish == null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return v2
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x4000

    const/4 v1, 0x0

    .line 1023
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1024
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_14

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_2c

    return p1

    :catch_14
    move-exception p0

    .line 1030
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isSystemApplication-e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 1028
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return v1
.end method

.method private postMessage(II)V
    .registers 6

    .line 1144
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u6d88\u606f...isRunningDialCenter:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " isSending:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " AppApplication.getInstance().isSysndata()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  isRunningDialCenter:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  AppApplication.isHomeLoading:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  msgTypeMsg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u53d1\u9001\u6d88\u606f"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0xb

    invoke-static {p1, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p1

    if-nez p1, :cond_63

    return-void

    :cond_63
    if-nez p2, :cond_6a

    .line 1152
    iget-boolean p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    if-nez p1, :cond_75

    return-void

    :cond_6a
    const/16 v1, 0x9

    if-ne p2, v1, :cond_75

    .line 1164
    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    iget-boolean p1, p1, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    if-nez p1, :cond_75

    return-void

    .line 1168
    :cond_75
    iget-boolean p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z

    if-nez p1, :cond_100

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_100

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez p1, :cond_100

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez p1, :cond_100

    .line 1169
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/sevice/SendMessage;

    if-eqz p1, :cond_100

    .line 1171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1172
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u6d88\u606f22:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result p2

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1174
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_100
    return-void
.end method

.method private sendText(Landroid/app/Notification;BLjava/lang/String;)V
    .registers 11

    .line 1036
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

    const-string v2, "\u53d1\u9001\u6d88\u606f"

    invoke-static {v2, p3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1040
    :try_start_23
    iget-object v3, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object v3, p3

    goto :goto_33

    :cond_2d
    iget-object v3, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    :goto_33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 1043
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1044
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    .line 1045
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    .line 1046
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1048
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5e} :catch_64

    move-object v4, p3

    :cond_5f
    move-object p3, v1

    goto :goto_65

    :cond_61
    move-object v4, p3

    move-object p3, v3

    goto :goto_65

    :catch_64
    move-object v4, p3

    :goto_65
    const/4 v0, 0x7

    .line 1056
    const-string v1, "android.title"

    const-string v3, "android.text"

    if-ne p2, v0, :cond_d4

    .line 1057
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_e0

    .line 1059
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_78
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1061
    :try_start_84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bundle ContentKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a8} :catch_a9

    goto :goto_78

    :catch_a9
    move-exception v4

    .line 1063
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 1066
    :cond_ae
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1067
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_d3

    .line 1068
    const-string v4, "\u6761\u65b0\u4fe1\u606f"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c5

    goto :goto_d3

    :cond_c5
    if-nez v0, :cond_c8

    return-void

    .line 1074
    :cond_c8
    const-string v4, "WhatsApp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    return-void

    :cond_d1
    move-object v4, v0

    goto :goto_e0

    :cond_d3
    :goto_d3
    return-void

    :cond_d4
    const/16 v0, 0xb

    if-ne p2, v0, :cond_e0

    if-nez p3, :cond_e0

    .line 1080
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1084
    :cond_e0
    :goto_e0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_103

    .line 1085
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1086
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1087
    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_f9

    .line 1088
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fb

    .line 1090
    :cond_f9
    check-cast p1, Ljava/lang/String;

    .line 1092
    :goto_fb
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    move-object v4, p3

    :cond_102
    move-object p3, p1

    .line 1096
    :cond_103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u6d88\u606f:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mTitle:Ljava/lang/String;

    if-eqz p1, :cond_14d

    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mText:Ljava/lang/String;

    if-eqz v0, :cond_14d

    if-eqz v4, :cond_14d

    if-eqz p3, :cond_14d

    .line 1098
    iget-byte v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mType:B

    if-ne v0, p2, :cond_14d

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14d

    .line 1099
    const-string p1, "\u62e6\u622a\u4e86"

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1103
    :cond_14d
    iput-object v4, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mTitle:Ljava/lang/String;

    .line 1104
    iput-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mText:Ljava/lang/String;

    .line 1105
    iput-byte p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mType:B

    if-nez v4, :cond_159

    .line 1107
    const-string p1, ""

    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mTitle:Ljava/lang/String;

    .line 1110
    :cond_159
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "BluetoothLe.getDefault().getConnected():"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    new-instance p1, Lcom/keephealth/android/sevice/SendMessage;

    invoke-direct {p1}, Lcom/keephealth/android/sevice/SendMessage;-><init>()V

    .line 1112
    iget-byte p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mType:B

    invoke-virtual {p1, p3}, Lcom/keephealth/android/sevice/SendMessage;->setmType(I)V

    .line 1113
    iget-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/sevice/SendMessage;->setmTitle(Ljava/lang/String;)V

    .line 1114
    iget-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/sevice/SendMessage;->setmText(Ljava/lang/String;)V

    .line 1115
    iget-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {p3, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 1116
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->postMessage(II)V

    return-void
.end method

.method private setSmsEvt(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 1203
    sget-boolean p4, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    if-nez p4, :cond_2c

    .line 1205
    sget-boolean p4, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz p4, :cond_9

    return-void

    :cond_9
    const/4 p4, 0x1

    .line 1208
    iput-boolean p4, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z

    .line 1209
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p4

    const-string v0, "NOTICE"

    invoke-virtual {p4, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1210
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p4

    new-instance v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;-><init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 1263
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

    .line 1131
    const-string v0, "\u6765\u7535\u4e86"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1133
    new-instance v0, Lcom/keephealth/android/sevice/SendMessage;

    invoke-direct {v0}, Lcom/keephealth/android/sevice/SendMessage;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    .line 1134
    invoke-virtual {v0, p1}, Lcom/keephealth/android/sevice/SendMessage;->setmType(I)V

    .line 1135
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-virtual {v0, p2}, Lcom/keephealth/android/sevice/SendMessage;->setmTitle(Ljava/lang/String;)V

    .line 1136
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-virtual {p2, p3}, Lcom/keephealth/android/sevice/SendMessage;->setmText(Ljava/lang/String;)V

    .line 1137
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    iget-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessage:Lcom/keephealth/android/sevice/SendMessage;

    invoke-interface {p2, p3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1138
    iget-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2c

    .line 1139
    invoke-direct {p0, p3, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->postMessage(II)V

    :cond_2c
    return-void
.end method

.method public getCurrentStep()V
    .registers 11

    .line 246
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_43

    .line 251
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "otifition_one"

    const/4 v4, 0x2

    const-string v5, "com.hearth.notification"

    invoke-direct {v0, v5, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 253
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    .line 254
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 255
    invoke-virtual {v0, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 256
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 257
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_3e

    .line 259
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 261
    :cond_3e
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 265
    :cond_43
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0c017f

    invoke-direct {v0, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/16 v4, 0x8

    const v5, 0x7f0d0069

    const v6, 0x7f0901bd

    const/4 v7, 0x0

    if-lt v0, v1, :cond_6f

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_85

    .line 270
    :cond_6f
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    .line 271
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 275
    :goto_85
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 282
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_11d

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_11d

    .line 283
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    .line 286
    invoke-direct {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getPendingIntentByState()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    .line 288
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_11d

    .line 289
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_c6

    const v0, 0x7f1001ec

    goto :goto_c9

    :cond_c6
    const v0, 0x7f100258

    :goto_c9
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f09075f

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "msg"

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v2, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_11d

    .line 304
    :try_start_fe
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_107
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fe .. :try_end_107} :catch_10a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_fe .. :try_end_107} :catch_108

    goto :goto_11d

    :catch_108
    move-exception v0

    goto :goto_10b

    :catch_10a
    move-exception v0

    .line 306
    :goto_10b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762IntelligentNotificationAddService_e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_11d
    :goto_11d
    return-void
.end method

.method public getCurrentStepTwo()V
    .registers 9

    .line 344
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    .line 345
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->manager:Landroid/app/NotificationManager;

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_41

    .line 350
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "notifition_one"

    const/4 v4, 0x2

    const-string v5, "com.hearth.notification"

    invoke-direct {v0, v5, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 355
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    .line 356
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 357
    invoke-virtual {v0, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 358
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 359
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_3c

    .line 360
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 362
    :cond_3c
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 366
    :cond_41
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0c017f

    invoke-direct {v0, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/16 v4, 0x8

    const v5, 0x7f0d0069

    const v6, 0x7f0901bd

    const/4 v7, 0x0

    if-lt v0, v1, :cond_6d

    .line 369
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 370
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_83

    .line 372
    :cond_6d
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 377
    :goto_83
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "msg"

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v3, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 389
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IS_LOGIN_STATE"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    .line 390
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isProessRunning(Landroid/content/Context;)Z

    move-result v1

    .line 391
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "classStr"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_104

    if-eqz v1, :cond_f8

    .line 396
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_10f

    .line 399
    :cond_ec
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_10f

    .line 402
    :cond_f8
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_10f

    .line 405
    :cond_104
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    :goto_10f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v7, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    .line 409
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 412
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    const v1, 0x7f09075f

    if-eqz v0, :cond_13e

    .line 413
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_152

    .line 415
    :cond_13e
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 419
    :goto_152
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_174

    .line 421
    :try_start_156
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_15f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_156 .. :try_end_15f} :catch_160

    goto :goto_17b

    :catch_160
    move-exception v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762IntelligentNotificationAddService_e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_17b

    .line 426
    :cond_174
    const-string v0, "application3"

    const-string v1, "manager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17b
    return-void
.end method

.method public handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1121
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_9

    goto :goto_16

    .line 1123
    :cond_9
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x2

    const/4 v0, -0x1

    .line 1124
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->postMessage(II)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 440
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 9

    .line 121
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 122
    iput-object p0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->context:Landroid/content/Context;

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "IS_LOGIN_STATE"

    const-string v2, "classStr"

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    .line 143
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0x1f

    if-lt v0, v6, :cond_9e

    .line 124
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 125
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 126
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 127
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 128
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_121

    .line 130
    :cond_59
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_121

    .line 135
    :cond_70
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 136
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_121

    .line 139
    :cond_87
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_121

    .line 143
    :cond_9e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 144
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isProessRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 145
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 146
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/app/ActivityName;->getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_121

    .line 149
    :cond_e0
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 150
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_121

    .line 154
    :cond_f6
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 155
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_121

    .line 162
    :cond_10c
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 163
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    .line 166
    :goto_121
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_15c

    .line 169
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "otifition_one"

    const/4 v5, 0x2

    const-string v7, "com.hearth.notification"

    invoke-direct {v0, v7, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 171
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 173
    invoke-virtual {v0, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 175
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->manager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_157

    .line 177
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 179
    :cond_157
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 182
    :cond_15c
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    const-string v5, "msg"

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 188
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0c017f

    invoke-direct {v0, v5, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v5, 0x7f0d0069

    const v7, 0x7f0901bd

    if-lt v0, v6, :cond_1a3

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1b5

    .line 193
    :cond_1a3
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    :goto_1b5
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1f5

    .line 204
    :try_start_1d8
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d8 .. :try_end_1e1} :catch_1e2

    goto :goto_1f5

    :catch_1e2
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762IntelligentNotificationAddService_e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 209
    :cond_1f5
    :goto_1f5
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    .line 210
    const-string v0, "FF33f2"

    const-string v1, "\u542f\u52a8\u63d0\u9192\u901a\u77e5\u670d\u52a1..."

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 460
    const-string v0, "\u6d88\u606f\u901a\u77e5\u670d\u52a1\u5173\u95ed"

    const-string v1, "IntelligentNotificationService : onDestroy"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onListenerConnected()V
    .registers 1

    .line 450
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    return-void
.end method

.method public onListenerDisconnected()V
    .registers 1

    .line 455
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 18

    move-object/from16 v0, p0

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 469
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    if-nez v2, :cond_13

    return-void

    .line 473
    :cond_13
    iget-object v4, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 474
    iget-object v5, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v5

    .line 475
    sget-boolean v6, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v6, :cond_b73

    sget-boolean v6, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v6, :cond_b73

    sget-boolean v6, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v6, :cond_29

    goto/16 :goto_b73

    .line 478
    :cond_29
    sget-boolean v6, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v6, :cond_2e

    return-void

    :cond_2e
    if-nez v1, :cond_31

    return-void

    :cond_31
    if-nez v4, :cond_34

    return-void

    .line 487
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_40

    const/4 v6, 0x1

    goto :goto_41

    :cond_40
    const/4 v6, 0x0

    .line 492
    :goto_41
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v10

    .line 493
    iget-object v11, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 496
    iget-object v13, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    check-cast v13, Ljava/lang/String;

    .line 497
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "onNotificationPosted:pkgName: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\u6d88\u606f\u901a\u77e5"

    invoke-static {v15, v14}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v14, "com.tencent.mm"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c0

    if-eqz v5, :cond_91

    .line 504
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechat()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_91
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    if-eqz v2, :cond_b73

    .line 505
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 506
    const-string v2, "\u8bed\u97f3\u901a\u8bdd\u4e2d"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "\u8a9e\u97f3\u901a\u8a71\u4e2d"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string v2, "Tap to continue as voice call in progress"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 510
    :cond_b3
    const-string v1, "\u5fae\u4fe1\u6b63\u5728\u8bed\u97f3"

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 514
    :cond_b9
    const-string v2, "weixin"

    invoke-direct {v0, v1, v7, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 516
    :cond_c0
    const-string v7, "com.tencent.mobileqq"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b47

    const-string v7, "com.tencent.qqlite"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b47

    const-string v7, "com.tencent.mobileqqi"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_da

    goto/16 :goto_b47

    .line 522
    :cond_da
    const-string v7, "com.facebook.katana"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 523
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_ee

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_ee
    const/4 v2, 0x4

    .line 524
    const-string v3, "facebook"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 527
    :cond_f5
    const-string v7, "com.twitter.android"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_110

    .line 528
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_109

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTwitter()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_109
    const/4 v2, 0x6

    .line 529
    const-string v3, "twitter"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 532
    :cond_110
    const-string v7, "com.whatsapp"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b34

    const-string v7, "com.whatsapp.w4b"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_122

    goto/16 :goto_b34

    .line 537
    :cond_122
    const-string v7, "com.linkedin.android"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b22

    const-string v7, "com.linkedin.android.injobs"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_134

    goto/16 :goto_b22

    .line 542
    :cond_134
    const-string v3, "com.instagram.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    .line 543
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_148

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isInstagram()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_148
    const/16 v2, 0xa

    .line 544
    const-string v3, "instagram"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 547
    :cond_150
    const-string v3, "jp.naver.line.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0e

    const-string v3, "line.android"

    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_162

    goto/16 :goto_b0e

    .line 552
    :cond_162
    const-string v3, "com.vkontakte.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 553
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_176

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isVk()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_176
    const/16 v2, 0xd

    .line 554
    const-string v3, "vkontakte"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 557
    :cond_17e
    const-string v3, "com.skype.raider"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_afb

    const-string v3, "com.skype.rover"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_190

    goto/16 :goto_afb

    .line 562
    :cond_190
    const-string v3, "com.facebook.orca"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "messager"

    if-eqz v3, :cond_1ac

    .line 563
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_1a6

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_1a6
    const/16 v2, 0xc

    .line 564
    invoke-direct {v0, v1, v2, v7}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 567
    :cond_1ac
    const-string v3, "com.viber.voip"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c6

    .line 568
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_1c0

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_1c0
    const/16 v2, 0xe

    .line 569
    invoke-direct {v0, v1, v2, v7}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 572
    :cond_1c6
    const-string v3, "org.telegram.messenger"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 573
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_1da

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTelegram()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_1da
    const/16 v2, 0x10

    .line 574
    invoke-direct {v0, v1, v2, v7}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 577
    :cond_1e0
    const-string v3, "com.kakao.talk"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 578
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_1f4

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_1f4
    const/16 v2, 0x12

    .line 579
    const-string v3, "kakaotalk"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 583
    :cond_1fc
    const-string v3, "com.runmifit.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_206

    goto/16 :goto_b73

    .line 585
    :cond_206
    const-string v3, "com.google.android.gm"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "\u7f51\u6613\u90ae\u7bb1\u5927\u5e08"

    const-string v14, "QQ\u90ae\u7bb1"

    const/16 v9, 0x2b

    const-string v8, "com.netease.mail"

    const-string v13, "com.tencent.androidqqmail"

    if-nez v3, :cond_a84

    .line 586
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.asiainfo.android"

    .line 587
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.microsoft.office.outlook"

    .line 588
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.yahoo.mobile.client.android.mail"

    .line 589
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.microsoft.Office.Outlook"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.aol.mobile.aolapp"

    .line 590
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.easilydo.mail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.readdle.spark"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    .line 591
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.my.mail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.netease.mobimail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.mailapp.view"

    .line 592
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.wanmei.mail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "cn.wo.mail.iWoMail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.sina.mail.free"

    .line 593
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.apple.mobilemail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.usps.uspsmobile"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.particlenews.newsbreak"

    .line 594
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.duckduckgo.mobile.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "jp.co.softbank.OfficialApp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.chirpeur.chirpmail"

    .line 595
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.omvistech.mailpod"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.niftypm.com"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "ch.protonmail.android"

    .line 596
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.fastmail.FastMail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "ru.yandex.mail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.zoho.mail"

    .line 597
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.alibaba.cloudmail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.corp21cn.mail189"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.android.email"

    .line 598
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.tempmail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "cn.lunkr.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "cn.cj.pe"

    .line 599
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "cn.mailchat"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "com.sohu.mail.client.cordova"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "org.kman.AquaMail"

    .line 600
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "de.gmx.mobile.android.mail"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a84

    const-string v3, "ru.mail.mailapp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_346

    goto/16 :goto_a84

    .line 626
    :cond_346
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDouyin:Z

    if-eqz v3, :cond_362

    if-eqz v5, :cond_352

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result v3

    if-eqz v3, :cond_362

    .line 627
    :cond_352
    const-string v3, "com.ss.android.ugc.aweme"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_362

    const/16 v2, 0x20

    .line 628
    const-string v3, "\u6296\u97f3"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 632
    :cond_362
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishou:Z

    if-eqz v3, :cond_37e

    if-eqz v5, :cond_36e

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isKuaishou()Z

    move-result v3

    if-eqz v3, :cond_37e

    .line 633
    :cond_36e
    const-string v3, "com.smile.gifmaker"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37e

    const/16 v2, 0x21

    .line 634
    const-string v3, "\u5feb\u624b"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 638
    :cond_37e
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDouyinjisuban:Z

    if-eqz v3, :cond_39a

    if-eqz v5, :cond_38a

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isDouyinQuick()Z

    move-result v3

    if-eqz v3, :cond_39a

    .line 639
    :cond_38a
    const-string v3, "com.ss.android.ugc.aweme.lite"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39a

    const/16 v2, 0x22

    .line 640
    const-string v3, "\u6296\u97f3\u6781\u901f\u7248"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 644
    :cond_39a
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isWeibo:Z

    if-eqz v3, :cond_3b6

    if-eqz v5, :cond_3a6

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeibo()Z

    move-result v3

    if-eqz v3, :cond_3b6

    .line 645
    :cond_3a6
    const-string v3, "com.sina.weibo"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b6

    const/16 v2, 0x11

    .line 646
    const-string v3, "\u5fae\u535a"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 650
    :cond_3b6
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isXiaohongshu:Z

    if-eqz v3, :cond_3d2

    if-eqz v5, :cond_3c2

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isXiaohongshu()Z

    move-result v3

    if-eqz v3, :cond_3d2

    .line 651
    :cond_3c2
    const-string v3, "com.xingin.xhs"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d2

    const/16 v2, 0x24

    .line 652
    const-string v3, "\u5c0f\u7ea2\u4e66"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 656
    :cond_3d2
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isMeituan:Z

    if-eqz v3, :cond_3ee

    if-eqz v5, :cond_3de

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isMeituan()Z

    move-result v3

    if-eqz v3, :cond_3ee

    .line 657
    :cond_3de
    const-string v3, "com.sankuai.meituan"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ee

    const/16 v2, 0x25

    .line 658
    const-string v3, "\u7f8e\u56e2"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 662
    :cond_3ee
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isZhifubao:Z

    if-eqz v3, :cond_40a

    if-eqz v5, :cond_3fa

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlipay()Z

    move-result v3

    if-eqz v3, :cond_40a

    .line 663
    :cond_3fa
    const-string v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40a

    const/16 v2, 0x26

    .line 664
    const-string v3, "\u652f\u4ed8\u5b9d"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 668
    :cond_40a
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDazongdianping:Z

    if-eqz v3, :cond_426

    if-eqz v5, :cond_416

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isDianping()Z

    move-result v3

    if-eqz v3, :cond_426

    .line 669
    :cond_416
    const-string v3, "com.dianping.v1"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_426

    const/16 v2, 0x27

    .line 670
    const-string v3, "\u5927\u4f17\u70b9\u8bc4"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 674
    :cond_426
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isMomo:Z

    if-eqz v3, :cond_442

    if-eqz v5, :cond_432

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isMomo()Z

    move-result v3

    if-eqz v3, :cond_442

    .line 675
    :cond_432
    const-string v3, "com.immomo.momo"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_442

    const/16 v2, 0x28

    .line 676
    const-string v3, "\u964c\u964c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 680
    :cond_442
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isBilibili:Z

    if-eqz v3, :cond_45e

    if-eqz v5, :cond_44e

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isBilibili()Z

    move-result v3

    if-eqz v3, :cond_45e

    .line 681
    :cond_44e
    const-string v3, "tv.danmaku.bili"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45e

    const/16 v2, 0x29

    .line 682
    const-string v3, "Bilibili"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 686
    :cond_45e
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isBosszhipin:Z

    if-eqz v3, :cond_47a

    if-eqz v5, :cond_46a

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isBoss()Z

    move-result v3

    if-eqz v3, :cond_47a

    .line 687
    :cond_46a
    const-string v3, "com.hpbr.bosszhipin"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47a

    const/16 v2, 0x2a

    .line 688
    const-string v3, "Boss\u76f4\u8058"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 692
    :cond_47a
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isQQyouxiang:Z

    if-eqz v3, :cond_490

    if-eqz v5, :cond_486

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isQqEmail()Z

    move-result v3

    if-eqz v3, :cond_490

    .line 693
    :cond_486
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_490

    .line 694
    invoke-direct {v0, v1, v9, v14}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 698
    :cond_490
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isSoul:Z

    if-eqz v3, :cond_4ac

    if-eqz v5, :cond_49c

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isSoul()Z

    move-result v3

    if-eqz v3, :cond_4ac

    .line 699
    :cond_49c
    const-string v3, "cn.soulapp.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ac

    const/16 v2, 0x2c

    .line 700
    const-string v3, "Soul"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 704
    :cond_4ac
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isZoom:Z

    if-eqz v3, :cond_4c8

    if-eqz v5, :cond_4b8

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isZoom()Z

    move-result v3

    if-eqz v3, :cond_4c8

    .line 705
    :cond_4b8
    const-string v3, "us.zoom.videomeetings"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c8

    const/16 v2, 0x2d

    .line 706
    const-string v3, "Zoom"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 710
    :cond_4c8
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isBaidutieba:Z

    if-eqz v3, :cond_4e4

    if-eqz v5, :cond_4d4

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isBaiduTieBa()Z

    move-result v3

    if-eqz v3, :cond_4e4

    .line 711
    :cond_4d4
    const-string v3, "com.baidu.tieba"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e4

    const/16 v2, 0x2e

    .line 712
    const-string v3, "\u767e\u5ea6\u8d34\u5427"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 716
    :cond_4e4
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDingding:Z

    if-eqz v3, :cond_500

    if-eqz v5, :cond_4f0

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isDingding()Z

    move-result v3

    if-eqz v3, :cond_500

    .line 717
    :cond_4f0
    const-string v3, "com.alibaba.android.rimet"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_500

    const/16 v2, 0xf

    .line 718
    const-string v3, "\u9489\u9489"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 722
    :cond_500
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDouban:Z

    if-eqz v3, :cond_51c

    if-eqz v5, :cond_50c

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isDouban()Z

    move-result v3

    if-eqz v3, :cond_51c

    .line 723
    :cond_50c
    const-string v3, "com.douban.frodo"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51c

    const/16 v2, 0x2f

    .line 724
    const-string v3, "\u8c46\u74e3"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 728
    :cond_51c
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isEleme:Z

    if-eqz v3, :cond_538

    if-eqz v5, :cond_528

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isEle()Z

    move-result v3

    if-eqz v3, :cond_538

    .line 729
    :cond_528
    const-string v3, "me.ele"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_538

    const/16 v2, 0x30

    .line 730
    const-string v3, "\u997f\u4e86\u4e48"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 734
    :cond_538
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isGaodeditu:Z

    if-eqz v3, :cond_554

    if-eqz v5, :cond_544

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isGaodeMap()Z

    move-result v3

    if-eqz v3, :cond_554

    .line 735
    :cond_544
    const-string v3, "com.autonavi.minimap"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_554

    const/16 v2, 0x31

    .line 736
    const-string v3, "\u9ad8\u5fb7\u5730\u56fe"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 740
    :cond_554
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isJingdong:Z

    if-eqz v3, :cond_570

    if-eqz v5, :cond_560

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isJingdong()Z

    move-result v3

    if-eqz v3, :cond_570

    .line 741
    :cond_560
    const-string v3, "com.jingdong.app.mall"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_570

    const/16 v2, 0x32

    .line 742
    const-string v3, "\u4eac\u4e1c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 746
    :cond_570
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishoujisuban:Z

    if-eqz v3, :cond_58c

    if-eqz v5, :cond_57c

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isKuaishouQuick()Z

    move-result v3

    if-eqz v3, :cond_58c

    .line 747
    :cond_57c
    const-string v3, "com.kuaishou.nebula"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58c

    const/16 v2, 0x33

    .line 748
    const-string v3, "\u5feb\u624b\u6781\u901f\u7248"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 752
    :cond_58c
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isMaimai:Z

    if-eqz v3, :cond_5a8

    if-eqz v5, :cond_598

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isMaimai()Z

    move-result v3

    if-eqz v3, :cond_5a8

    .line 753
    :cond_598
    const-string v3, "com.taou.maimai"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a8

    const/16 v2, 0x34

    .line 754
    const-string v3, "\u8109\u8109"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 758
    :cond_5a8
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isPinduoduo:Z

    if-eqz v3, :cond_5c4

    if-eqz v5, :cond_5b4

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isPinduoduo()Z

    move-result v3

    if-eqz v3, :cond_5c4

    .line 759
    :cond_5b4
    const-string v3, "com.xunmeng.pinduoduo"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c4

    const/16 v2, 0x35

    .line 760
    const-string v3, "\u62fc\u591a\u591a"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 764
    :cond_5c4
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isQiyeweixin:Z

    if-eqz v3, :cond_5e0

    if-eqz v5, :cond_5d0

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWorkWechat()Z

    move-result v3

    if-eqz v3, :cond_5e0

    .line 765
    :cond_5d0
    const-string v3, "com.tencent.wework"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e0

    const/16 v2, 0x36

    .line 766
    const-string v3, "\u4f01\u4e1a\u5fae\u4fe1"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 770
    :cond_5e0
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isTantan:Z

    if-eqz v3, :cond_5fc

    if-eqz v5, :cond_5ec

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTantan()Z

    move-result v3

    if-eqz v3, :cond_5fc

    .line 771
    :cond_5ec
    const-string v3, "com.p1.mobile.putong"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5fc

    const/16 v2, 0x38

    .line 772
    const-string v3, "\u63a2\u63a2"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 776
    :cond_5fc
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isTaobao:Z

    if-eqz v3, :cond_618

    if-eqz v5, :cond_608

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTaobao()Z

    move-result v3

    if-eqz v3, :cond_618

    .line 777
    :cond_608
    const-string v3, "com.taobao.taobao"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_618

    const/16 v2, 0x39

    .line 778
    const-string v3, "\u6dd8\u5b9d"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 782
    :cond_618
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isTielu12306:Z

    if-eqz v3, :cond_634

    if-eqz v5, :cond_624

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isRailway12306()Z

    move-result v3

    if-eqz v3, :cond_634

    .line 783
    :cond_624
    const-string v3, "com.MobileTicket"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_634

    const/16 v2, 0x3a

    .line 784
    const-string v3, "\u94c1\u8def12306"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 788
    :cond_634
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isXianyu:Z

    if-eqz v3, :cond_650

    if-eqz v5, :cond_640

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isXianyu()Z

    move-result v3

    if-eqz v3, :cond_650

    .line 789
    :cond_640
    const-string v3, "com.taobao.idlefish"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_650

    const/16 v2, 0x3b

    .line 790
    const-string v3, "\u54b8\u9c7c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 794
    :cond_650
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isZhihu:Z

    if-eqz v3, :cond_66c

    if-eqz v5, :cond_65c

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isZhihu()Z

    move-result v3

    if-eqz v3, :cond_66c

    .line 795
    :cond_65c
    const-string v3, "com.zhihu.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66c

    const/16 v2, 0x3c

    .line 796
    const-string v3, "\u77e5\u4e4e"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 800
    :cond_66c
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isAlibaba:Z

    if-eqz v3, :cond_688

    if-eqz v5, :cond_678

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlibaba()Z

    move-result v3

    if-eqz v3, :cond_688

    .line 801
    :cond_678
    const-string v3, "com.alibaba.alibaba"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_688

    const/16 v2, 0x3d

    .line 802
    const-string v3, "\u963f\u91cc\u5df4\u5df4"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 806
    :cond_688
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDidichuxing:Z

    if-eqz v3, :cond_6a4

    if-eqz v5, :cond_694

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isDidiTravel()Z

    move-result v3

    if-eqz v3, :cond_6a4

    .line 807
    :cond_694
    const-string v3, "com.sdu.didi.psnger"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a4

    const/16 v2, 0x3e

    .line 808
    const-string v3, "\u6ef4\u6ef4\u51fa\u884c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 812
    :cond_6a4
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isHaluo:Z

    if-eqz v3, :cond_6c0

    if-eqz v5, :cond_6b0

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isHaluoTravel()Z

    move-result v3

    if-eqz v3, :cond_6c0

    .line 813
    :cond_6b0
    const-string v3, "com.jingyao.easybike"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c0

    const/16 v2, 0x23

    .line 814
    const-string v3, "\u54c8\u5570"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 818
    :cond_6c0
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDidachuxing:Z

    if-eqz v3, :cond_6dc

    if-eqz v5, :cond_6cc

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isDidaTravel()Z

    move-result v3

    if-eqz v3, :cond_6dc

    .line 819
    :cond_6cc
    const-string v3, "com.didapinche.booking"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6dc

    const/16 v2, 0x37

    .line 820
    const-string v3, "\u5600\u55d2\u51fa\u884c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 824
    :cond_6dc
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isMeiyou:Z

    if-eqz v3, :cond_6f8

    if-eqz v5, :cond_6e8

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isMeiyou()Z

    move-result v3

    if-eqz v3, :cond_6f8

    .line 825
    :cond_6e8
    const-string v3, "com.lingan.seeyou"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f8

    const/16 v2, 0x3f

    .line 826
    const-string v3, "\u7f8e\u67da"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 830
    :cond_6f8
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isJiaoguan12123:Z

    if-eqz v3, :cond_714

    if-eqz v5, :cond_704

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTraffic12123()Z

    move-result v3

    if-eqz v3, :cond_714

    .line 831
    :cond_704
    const-string v3, "com.tmri.app.main"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_714

    const/16 v2, 0x40

    .line 832
    const-string v3, "\u4ea4\u7ba112123"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 836
    :cond_714
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isDewu:Z

    if-eqz v3, :cond_730

    if-eqz v5, :cond_720

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isDewu()Z

    move-result v3

    if-eqz v3, :cond_730

    .line 837
    :cond_720
    const-string v3, "com.shizhuang.duapp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_730

    const/16 v2, 0x41

    .line 838
    const-string v3, "\u5f97\u7269"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 842
    :cond_730
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isWangyiyouxiangdashi:Z

    if-eqz v3, :cond_748

    if-eqz v5, :cond_73c

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWangyiEmail()Z

    move-result v3

    if-eqz v3, :cond_748

    .line 843
    :cond_73c
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_748

    const/16 v3, 0x42

    .line 844
    invoke-direct {v0, v1, v3, v7}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 848
    :cond_748
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isWangzherongyao:Z

    if-eqz v3, :cond_764

    if-eqz v5, :cond_754

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isHonorOfKings()Z

    move-result v3

    if-eqz v3, :cond_764

    .line 849
    :cond_754
    const-string v3, "com.tencent.tmgp.sgame"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_764

    const/16 v2, 0x43

    .line 850
    const-string v3, "\u738b\u8005\u8363\u8000"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 854
    :cond_764
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunhuiyi:Z

    if-eqz v3, :cond_780

    if-eqz v5, :cond_770

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTencentMeeting()Z

    move-result v3

    if-eqz v3, :cond_780

    .line 855
    :cond_770
    const-string v3, "com.tencent.wemeet.app"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_780

    const/16 v2, 0x44

    .line 856
    const-string v3, "\u817e\u8baf\u4f1a\u8bae"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 860
    :cond_780
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isQunaerlvxing:Z

    if-eqz v3, :cond_79c

    if-eqz v5, :cond_78c

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isQunarTrip()Z

    move-result v3

    if-eqz v3, :cond_79c

    .line 861
    :cond_78c
    const-string v3, "com.Qunar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79c

    const/16 v2, 0x45

    .line 862
    const-string v3, "\u53bb\u54ea\u513f\u65c5\u884c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 866
    :cond_79c
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isXiechenglvxing:Z

    if-eqz v3, :cond_7b8

    if-eqz v5, :cond_7a8

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isXiechengTrip()Z

    move-result v3

    if-eqz v3, :cond_7b8

    .line 867
    :cond_7a8
    const-string v3, "ctrip.android.view"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b8

    const/16 v2, 0x46

    .line 868
    const-string v3, "\u643a\u7a0b\u65c5\u884c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 872
    :cond_7b8
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isTongchenglvxing:Z

    if-eqz v3, :cond_7d4

    if-eqz v5, :cond_7c4

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTongchengTrip()Z

    move-result v3

    if-eqz v3, :cond_7d4

    .line 873
    :cond_7c4
    const-string v3, "com.tongcheng.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d4

    const/16 v2, 0x47

    .line 874
    const-string v3, "\u540c\u7a0b\u65c5\u884c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 878
    :cond_7d4
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isFeizhulvxing:Z

    if-eqz v3, :cond_7f0

    if-eqz v5, :cond_7e0

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isFeizhuTrip()Z

    move-result v3

    if-eqz v3, :cond_7f0

    .line 879
    :cond_7e0
    const-string v3, "com.taobao.trip"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f0

    const/16 v2, 0x48

    .line 880
    const-string v3, "\u98de\u732a\u65c5\u884c"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 884
    :cond_7f0
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isZhixinghuochepiao:Z

    if-eqz v3, :cond_80c

    if-eqz v5, :cond_7fc

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isZhixingTrainTickets()Z

    move-result v3

    if-eqz v3, :cond_80c

    .line 885
    :cond_7fc
    const-string v3, "com.yipiao"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80c

    const/16 v2, 0x49

    .line 886
    const-string v3, "\u667a\u884c\u706b\u8f66\u7968"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 890
    :cond_80c
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isBaiduditu:Z

    if-eqz v3, :cond_828

    if-eqz v5, :cond_818

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isBaiduMap()Z

    move-result v3

    if-eqz v3, :cond_828

    .line 891
    :cond_818
    const-string v3, "com.baidu.BaiduMap"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_828

    const/16 v2, 0x4a

    .line 892
    const-string v3, "\u767e\u5ea6\u5730\u56fe"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 896
    :cond_828
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunditu:Z

    if-eqz v3, :cond_844

    if-eqz v5, :cond_834

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isTencentMap()Z

    move-result v3

    if-eqz v3, :cond_844

    .line 897
    :cond_834
    const-string v3, "com.tencent.map"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_844

    const/16 v2, 0x4b

    .line 898
    const-string v3, "\u817e\u8baf\u5730\u56fe"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 902
    :cond_844
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isRili:Z

    if-eqz v3, :cond_8a0

    if-eqz v5, :cond_850

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isCalendar()Z

    move-result v3

    if-eqz v3, :cond_8a0

    .line 903
    :cond_850
    const-string v3, "com.apple.mobilecal"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.huawei.calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.android.calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.bbk.calendar"

    .line 904
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.coloros.calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.samsung.android.calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.motorola.blur.calendar"

    .line 905
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.google.android.calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_898

    const-string v3, "com.sonymobile.calendar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a0

    :cond_898
    const/16 v2, 0x18

    .line 906
    const-string v3, "\u65e5\u5386"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 910
    :cond_8a0
    iget-boolean v3, v4, Lcom/keephealth/android/model/bean/AppNotice;->isKeepHealth:Z

    if-eqz v3, :cond_8bf

    if-eqz v5, :cond_8ac

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isKeepHealth()Z

    move-result v3

    if-eqz v3, :cond_8bf

    .line 911
    :cond_8ac
    const-string v3, "com.keephealthpro.android"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8bf

    if-nez v6, :cond_8bf

    if-eqz v10, :cond_8bf

    const/4 v2, -0x3

    .line 913
    const-string v3, "KeepHealth"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 918
    :cond_8bf
    iget-boolean v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    if-eqz v2, :cond_939

    if-eqz v5, :cond_8cb

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isSms()Z

    move-result v2

    if-eqz v2, :cond_939

    :cond_8cb
    if-eqz v11, :cond_8d9

    .line 919
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8d9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_901

    :cond_8d9
    const-string v2, "com.android.mms"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_901

    const-string v2, "com.huawei.mms"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_901

    const-string v2, "com.miui.sms"

    .line 920
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_901

    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_901

    const-string v2, "com.google.android.apps.messaging"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_939

    :cond_901
    if-nez v6, :cond_939

    if-eqz v10, :cond_939

    .line 922
    iget-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_921

    iget-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_91a

    goto :goto_921

    .line 926
    :cond_91a
    const-string v2, "massage"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 923
    :cond_921
    :goto_921
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u77ed\u4fe1\u901a\u77e5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    return-void

    :cond_939
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v6, :cond_a7d

    if-eqz v10, :cond_a7d

    .line 946
    iget-object v6, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->context:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    const v7, 0x7f1001c0

    const-string v8, "android"

    const/4 v9, -0x2

    if-nez v6, :cond_9e8

    .line 947
    iget-boolean v4, v4, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    if-eqz v4, :cond_b73

    if-eqz v5, :cond_959

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result v4

    if-eqz v4, :cond_b73

    .line 949
    :cond_959
    iget-object v4, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_96d

    .line 951
    iget-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    const-string v2, "other1"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    :cond_96d
    move v4, v2

    .line 954
    :goto_96e
    iget-object v5, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_988

    .line 956
    iget-object v5, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_985

    move v4, v3

    :cond_985
    add-int/lit8 v2, v2, 0x1

    goto :goto_96e

    :cond_988
    if-nez v4, :cond_996

    .line 962
    iget-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    const-string v2, "other2"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 966
    :cond_996
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pkgName1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9ba

    .line 968
    iget-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 969
    const-string v2, "other4"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 970
    :cond_9ba
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9dc

    .line 971
    const-string v2, "other5"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 972
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_b73

    .line 974
    :cond_9dc
    const-string v2, "others"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 975
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_b73

    .line 981
    :cond_9e8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "pkgName2:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-boolean v4, v4, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    if-eqz v4, :cond_b73

    if-eqz v5, :cond_a06

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result v4

    if-eqz v4, :cond_b73

    .line 983
    :cond_a06
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b73

    .line 985
    iget-object v4, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a20

    .line 987
    iget-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    const-string v2, "other7"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    :cond_a20
    move v4, v2

    .line 990
    :goto_a21
    iget-object v5, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_a3b

    .line 992
    iget-object v5, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a38

    move v4, v3

    :cond_a38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a21

    :cond_a3b
    if-nez v4, :cond_a49

    .line 998
    iget-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    const-string v2, "other8"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 1002
    :cond_a49
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5b

    .line 1003
    iget-object v2, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1004
    const-string v2, "other10"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 1005
    :cond_a5b
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b73

    .line 1006
    const-string v2, "other11"

    invoke-direct {v0, v1, v9, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    .line 1007
    iget-object v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->listName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_b73

    .line 1015
    :cond_a7d
    const-string v1, "\u662f\u5e38\u9a7b\u901a\u77e5"

    invoke-static {v15, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b73

    .line 604
    :cond_a84
    :goto_a84
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "emial"

    const/16 v6, 0x9

    if-eqz v2, :cond_ab8

    .line 605
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->isQQyouxiang:Z

    if-eqz v2, :cond_a9f

    if-eqz v5, :cond_a9a

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isQqEmail()Z

    move-result v2

    if-eqz v2, :cond_a9f

    .line 606
    :cond_a9a
    invoke-direct {v0, v1, v9, v14}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 608
    :cond_a9f
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_aab

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_aab
    if-eqz v5, :cond_ab3

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isQqEmail()Z

    move-result v2

    if-nez v2, :cond_b73

    .line 609
    :cond_ab3
    invoke-direct {v0, v1, v6, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 612
    :cond_ab8
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aea

    .line 613
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->isWangyiyouxiangdashi:Z

    if-eqz v2, :cond_ad1

    if-eqz v5, :cond_aca

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWangyiEmail()Z

    move-result v2

    if-eqz v2, :cond_ad1

    :cond_aca
    const/16 v2, 0x42

    .line 614
    invoke-direct {v0, v1, v2, v7}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 616
    :cond_ad1
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_add

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_add
    if-eqz v5, :cond_ae5

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWangyiEmail()Z

    move-result v2

    if-nez v2, :cond_b73

    .line 617
    :cond_ae5
    invoke-direct {v0, v1, v6, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 621
    :cond_aea
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_af6

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_b73

    .line 622
    :cond_af6
    invoke-direct {v0, v1, v6, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    goto/16 :goto_b73

    .line 558
    :cond_afb
    :goto_afb
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_b07

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isSkype()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_b07
    const/4 v2, 0x5

    .line 559
    const-string v3, "skype"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 548
    :cond_b0e
    :goto_b0e
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_b1a

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isLine()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_b1a
    const/16 v2, 0x8

    .line 549
    const-string v3, "line"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 538
    :cond_b22
    :goto_b22
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_b2e

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isLinkedin()Z

    move-result v2

    if-eqz v2, :cond_b73

    .line 539
    :cond_b2e
    const-string v2, "linked"

    invoke-direct {v0, v1, v3, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 533
    :cond_b34
    :goto_b34
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_b40

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isWhatsapp()Z

    move-result v2

    if-eqz v2, :cond_b73

    :cond_b40
    const/4 v2, 0x7

    .line 534
    const-string v3, "whatsApp"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    return-void

    .line 517
    :cond_b47
    :goto_b47
    iget-boolean v2, v4, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    if-eqz v2, :cond_b73

    if-eqz v5, :cond_b53

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DeviceModel;->isQq()Z

    move-result v2

    if-eqz v2, :cond_b73

    .line 518
    :cond_b53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6d88\u606f\u663e\u793a\u65f6\u95f4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/TimeUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 519
    const-string v3, "qq"

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendText(Landroid/app/Notification;BLjava/lang/String;)V

    :cond_b73
    :goto_b73
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2

    .line 445
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .line 432
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->notification:Landroid/app/Notification;

    .line 433
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->task2:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 4

    .line 1291
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1292
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

    .line 1293
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 1294
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "finish"

    invoke-static {v0, v1, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    sput p1, Lcom/keephealth/android/app/AppApplication;->isIntentClass:I

    .line 1296
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStepTwo()V

    .line 1297
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1298
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    if-eqz v0, :cond_46

    .line 1299
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1300
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    const-wide/16 v0, 0xf

    .line 1302
    :try_start_3c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    .line 1304
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1306
    :goto_44
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1308
    :cond_46
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1309
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isFirstDescrition:Z

    .line 1310
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->firstHome:Z

    .line 1311
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method
