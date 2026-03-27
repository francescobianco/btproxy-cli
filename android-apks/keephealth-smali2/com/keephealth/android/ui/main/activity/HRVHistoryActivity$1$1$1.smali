.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;
.super Ljava/lang/Object;
.source "HRVHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v2, 0x7f100602

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNewTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->val$data:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10068b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->val$data:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v3, v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v3, v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v3, v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v3, v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNew:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 221
    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->val$data:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 224
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;->this$2:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HRV_DATA"

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
