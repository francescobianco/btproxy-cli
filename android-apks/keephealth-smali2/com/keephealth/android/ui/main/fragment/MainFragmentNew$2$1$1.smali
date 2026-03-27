.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;

.field final synthetic val$to:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;->this$2:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;->val$to:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;->this$2:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;->this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;->val$to:[B

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handlerPower([B)I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$000(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;[B)I

    .line 467
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 468
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;->this$2:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;->this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->initBlueTooth()V
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    :cond_1a
    return-void
.end method
