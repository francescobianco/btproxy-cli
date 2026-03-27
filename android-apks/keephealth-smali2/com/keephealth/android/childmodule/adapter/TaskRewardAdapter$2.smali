.class Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskRewardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSelectBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

.field final synthetic val$taskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;Lcom/keephealth/android/childmodule/bean/RewardSelectBean;)V
    .registers 3

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;->val$taskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 62
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->duihuanClickListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->access$100(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 63
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->duihuanClickListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->access$100(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;->val$taskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;->val$taskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;->onDuihuanClick(ILcom/keephealth/android/childmodule/bean/RewardSelectBean;)V

    :cond_1b
    return-void
.end method
