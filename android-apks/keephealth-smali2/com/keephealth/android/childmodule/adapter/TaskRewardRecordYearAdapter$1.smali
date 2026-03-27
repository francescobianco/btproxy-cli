.class Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskRewardRecordYearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

.field final synthetic val$rewardIconRecordBean:Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;->val$rewardIconRecordBean:Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 39
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 40
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$1;->val$rewardIconRecordBean:Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;->getYear_month()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
