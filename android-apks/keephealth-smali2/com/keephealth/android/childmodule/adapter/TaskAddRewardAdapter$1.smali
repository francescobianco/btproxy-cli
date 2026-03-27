.class Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskAddRewardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;Ljava/lang/String;)V
    .registers 3

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 38
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 39
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$1;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
