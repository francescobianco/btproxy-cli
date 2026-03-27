.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;
.super Ljava/lang/Object;
.source "TaskFragment.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickItem(Landroid/view/View;ILcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->dialogView:Lcom/keephealth/android/childmodule/DialogView;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Lcom/keephealth/android/childmodule/DialogView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    if-eqz p2, :cond_42

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2b

    const/4 p1, 0x2

    if-eq p2, p1, :cond_14

    goto :goto_58

    .line 200
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {p3}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_58

    .line 196
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {p3}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_58

    .line 192
    :cond_42
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5$1;->this$1:Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/fragment/TaskFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {p3}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    :goto_58
    return-void
.end method
