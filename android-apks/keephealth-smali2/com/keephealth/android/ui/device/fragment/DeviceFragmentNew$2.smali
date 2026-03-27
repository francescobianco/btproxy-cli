.class Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$2;
.super Ljava/lang/Object;
.source "DeviceFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->updateUi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

.field final synthetic val$bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Lcom/keephealth/android/model/bean/BLEDevice;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$2;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$2;->val$bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$2;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$2;->val$bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ToastUtil;->showDeviceToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
