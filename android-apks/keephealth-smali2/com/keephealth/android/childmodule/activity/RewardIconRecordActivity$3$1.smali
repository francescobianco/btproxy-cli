.class Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3$1;
.super Ljava/lang/Object;
.source "RewardIconRecordActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;)V
    .registers 4

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSelect_title:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF321h2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v0, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;->setExchangeMonth(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->rewardIconRecordViewModel:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    if-eqz p1, :cond_3e

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->rewardIconRecordViewModel:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;->getData(Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;)V

    :cond_3e
    return-void
.end method
