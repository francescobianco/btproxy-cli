.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;
.super Ljava/lang/Object;
.source "HRVHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const-string v2, "HRV_DATA"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    const v1, 0x7f10068b

    if-eqz v0, :cond_7c

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_be

    .line 285
    :cond_7c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_be
    return-void
.end method
