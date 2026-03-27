.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$19;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initDeviceListView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 2

    .line 1248
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$19;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1251
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$19;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->onSort()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    return-void
.end method
