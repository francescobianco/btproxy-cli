.class public final synthetic Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

.field public final synthetic f$1:Lcom/keephealth/android/model/bean/BLEDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Lcom/keephealth/android/model/bean/BLEDevice;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda30;->f$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda30;->f$1:Lcom/keephealth/android/model/bean/BLEDevice;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda30;->f$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$$ExternalSyntheticLambda30;->f$1:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->lambda$updateDevice$6$com-keephealth-android-ui-device-fragment-DeviceFragmentNew(Lcom/keephealth/android/model/bean/BLEDevice;Landroid/view/View;)V

    return-void
.end method
