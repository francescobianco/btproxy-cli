.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$2;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

.field final synthetic val$a:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3027
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$2;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    iput p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$2;->val$a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3030
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$2;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 v1, 0x2

    iget v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$2;->val$a:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->runQueue(II)V

    return-void
.end method
