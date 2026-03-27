.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$3;
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

    .line 606
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0x315

    .line 609
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    const/16 v0, 0x4bc

    .line 610
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method
