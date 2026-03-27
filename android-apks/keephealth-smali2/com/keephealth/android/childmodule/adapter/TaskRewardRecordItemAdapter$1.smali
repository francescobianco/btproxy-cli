.class Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskRewardRecordItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;

.field final synthetic val$rewardIconRecordBean:Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;->val$rewardIconRecordBean:Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 47
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 48
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;->val$rewardIconRecordBean:Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
