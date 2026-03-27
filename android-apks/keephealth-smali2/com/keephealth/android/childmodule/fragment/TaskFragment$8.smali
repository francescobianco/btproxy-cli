.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;
.super Ljava/lang/Object;
.source "TaskFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;


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

    .line 337
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .registers 10

    .line 341
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0902e2

    if-eq p2, v0, :cond_b

    goto/16 :goto_85

    .line 343
    :cond_b
    iget-object p2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-wide v0, p2, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-lez p2, :cond_28

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    const p2, 0x7f1006fa

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_85

    .line 346
    :cond_28
    iget-object p2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iput-object p1, p2, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    .line 347
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-eqz p1, :cond_85

    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskStatus()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_85

    .line 348
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # setter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->positionTarget:I
    invoke-static {p1, p3}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$402(Lcom/keephealth/android/childmodule/fragment/TaskFragment;I)I

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getStatus()I

    move-result p1

    if-ne p1, p2, :cond_6c

    .line 350
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$600(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    move-result-object v0

    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$500(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/util/Date;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getMarkTaskTask(JILjava/util/Date;I)V

    goto :goto_85

    .line 352
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$600(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    move-result-object v0

    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$8;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$500(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/util/Date;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getMarkTaskTask(JILjava/util/Date;I)V

    :cond_85
    :goto_85
    return-void
.end method
