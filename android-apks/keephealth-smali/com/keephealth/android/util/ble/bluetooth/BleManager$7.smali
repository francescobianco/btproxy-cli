.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 1540
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1543
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x2707

    .line 1544
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method
