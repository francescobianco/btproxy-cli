.class public final synthetic Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;

.field public final synthetic f$1:Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda2;->f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda2;->f$1:Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda2;->f$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda2;->f$1:Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->lambda$onFailed$2$com-keephealth-android-ui-device-fragment-CustomFragment$12$1(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    return-void
.end method
