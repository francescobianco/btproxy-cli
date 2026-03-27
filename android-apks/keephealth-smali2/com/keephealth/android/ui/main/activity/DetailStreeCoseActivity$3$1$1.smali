.class Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;
.super Ljava/lang/Object;
.source "DetailStreeCoseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    const-string v2, "STRESS_DATA"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    const-string v1, ""

    if-eqz v0, :cond_5d

    .line 380
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 382
    :cond_5d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    const-string v3, "--  "

    invoke-virtual {v2, v3, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_74
    return-void
.end method
