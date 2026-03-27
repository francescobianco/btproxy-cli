.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$8;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
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

    .line 498
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$8;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$8;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    return-void
.end method
