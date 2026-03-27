.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;)V
    .registers 2

    .line 718
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-keephealth-android-ui-device-fragment-RecommendFragment$7$1(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 3

    .line 723
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method

.method public run()V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->initBluzDevice()V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u5f00\u59cb\u53d1\u9001q32\u7cfb\u5217\u8868\u76d8..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7$1;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    const/16 v0, 0x3e8

    invoke-static {v1, v0}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    return-void
.end method
