.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->onWriteBytes(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

.field final synthetic val$count:I

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1046
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iput-wide p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;->val$currentTime:J

    iput p4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1049
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;->val$currentTime:J

    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStartTime:J
    invoke-static {v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 1052
    iget v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;->val$count:I

    int-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 1053
    :goto_19
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextviewSpendTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->formatSecondsDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->formatSpeed(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
