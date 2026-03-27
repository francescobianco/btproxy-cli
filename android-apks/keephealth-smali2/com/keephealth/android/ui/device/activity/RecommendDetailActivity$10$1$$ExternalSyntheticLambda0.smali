.class public final synthetic Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$3:[I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;ILandroid/bluetooth/BluetoothGattCharacteristic;[II)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$3:[I

    iput p5, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$3:[I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->lambda$onSuccess$4$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$1(ILandroid/bluetooth/BluetoothGattCharacteristic;[II)V

    return-void
.end method
