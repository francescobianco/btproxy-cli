.class Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$6;
.super Landroid/os/Handler;
.source "IntelligentNotificationAddServiceOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V
    .registers 2

    .line 1338
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1341
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x156

    if-eq p1, v0, :cond_7

    goto :goto_47

    .line 1343
    :cond_7
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$802(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1346
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$800(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 1347
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-nez p1, :cond_47

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    if-nez p1, :cond_47

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    if-nez p1, :cond_47

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_47

    .line 1350
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppApplication.connectingOrno1:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1351
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrnoTwo:Z

    :cond_47
    :goto_47
    return-void
.end method
