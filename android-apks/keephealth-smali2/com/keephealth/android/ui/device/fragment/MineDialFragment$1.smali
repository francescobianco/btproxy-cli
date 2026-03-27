.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;
.super Ljava/lang/Object;
.source "MineDialFragment.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 219
    const-string p1, "ffed"

    const-string v0, "\u8fde\u63a5\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAVersion:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$502(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$402(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    :cond_e
    return-void
.end method
