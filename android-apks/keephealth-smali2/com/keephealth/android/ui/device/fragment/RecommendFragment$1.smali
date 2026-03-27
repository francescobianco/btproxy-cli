.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 219
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$300(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAVersion:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$502(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    :cond_2c
    return-void
.end method
