.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$progress:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1034
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$progress:I

    iput p4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1037
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothOTA ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "progress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hger3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$progress:I

    int-to-long v3, v0

    iget v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;->val$total:I

    int-to-long v5, v0

    const/4 v7, 0x5

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadUpdateRate(JJI)V
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JJI)V

    return-void
.end method
