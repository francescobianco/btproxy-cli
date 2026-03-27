.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$1;
.super Ljava/lang/Object;
.source "RecommendDetailActivity.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 221
    const-string p1, "3423rew22"

    const-string v0, "\u8fde\u63a5\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$002(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    :cond_e
    return-void
.end method
