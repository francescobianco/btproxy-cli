.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/TaskFragment;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    new-instance v0, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$300(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;-><init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/keephealth/android/childmodule/DialogView$OnItemClick;)V

    # setter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dialogView:Lcom/keephealth/android/childmodule/DialogView;
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$202(Lcom/keephealth/android/childmodule/fragment/TaskFragment;Lcom/keephealth/android/childmodule/DialogView;)Lcom/keephealth/android/childmodule/DialogView;

    return-void
.end method
