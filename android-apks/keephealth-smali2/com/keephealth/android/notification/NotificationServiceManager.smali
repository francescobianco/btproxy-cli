.class public Lcom/keephealth/android/notification/NotificationServiceManager;
.super Ljava/lang/Object;
.source "NotificationServiceManager.java"


# instance fields
.field private notificationServiceMonitor:Lcom/keephealth/android/notification/NotificationServiceMonitor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/keephealth/android/notification/NotificationServiceMonitor;

    invoke-direct {v0}, Lcom/keephealth/android/notification/NotificationServiceMonitor;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/notification/NotificationServiceManager;->notificationServiceMonitor:Lcom/keephealth/android/notification/NotificationServiceMonitor;

    return-void
.end method

.method private toggleNotificationListenerService(Landroid/content/Context;)V
    .registers 6

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 26
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 27
    iget-object p1, p0, Lcom/keephealth/android/notification/NotificationServiceManager;->notificationServiceMonitor:Lcom/keephealth/android/notification/NotificationServiceMonitor;

    invoke-virtual {p1}, Lcom/keephealth/android/notification/NotificationServiceMonitor;->startMonitor()V

    return-void
.end method


# virtual methods
.method public bindIntelligentNotificationService(Landroid/content/Context;)V
    .registers 5

    .line 17
    const-class v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/AppUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " IntelligentNotificationService\u670d\u52a1 \u662f\u5426\u8fd0\u884c "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_21

    .line 20
    invoke-direct {p0, p1}, Lcom/keephealth/android/notification/NotificationServiceManager;->toggleNotificationListenerService(Landroid/content/Context;)V

    :cond_21
    return-void
.end method
