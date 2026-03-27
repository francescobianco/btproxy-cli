.class Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RewardIconRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->rewardIconRecordViewModel:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;->getRewardSixMonthBean()Ljava/util/List;

    move-result-object p1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rewardSixMonthBean:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF321h2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    invoke-direct {v0, v1, p1}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 104
    new-instance p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3$1;-><init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;)V

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->setOnSelectClick(Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;)V

    .line 118
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->show()V

    return-void
.end method
