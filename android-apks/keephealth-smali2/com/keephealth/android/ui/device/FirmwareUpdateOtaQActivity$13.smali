.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->onAudioDataReceived(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

.field final synthetic val$data:[B

.field final synthetic val$len:I

.field final synthetic val$psn:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;II[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 997
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$psn:I

    iput p3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$len:I

    iput-object p4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1001
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioPSN:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$psn:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioLen:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioData:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$data:[B

    invoke-static {v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->hexBuffer2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$psn:I

    if-gtz v0, :cond_4c

    .line 1006
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAudioDataPSN:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4102(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I

    goto :goto_8b

    .line 1008
    :cond_4c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAudioDataPSN:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_84

    .line 1009
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u6ce8\u610f\uff1aPSN\u4e0d\u8fde\u7eed\uff0c\u4e0a\u4e00\u4e2aPSN\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAudioDataPSN:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff0c\u5f53\u524dPSN\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$psn:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1012
    :cond_84
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;->val$psn:I

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAudioDataPSN:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4102(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I

    :goto_8b
    return-void
.end method
