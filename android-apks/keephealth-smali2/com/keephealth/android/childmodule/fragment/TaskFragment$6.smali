.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;
.super Ljava/lang/Object;
.source "TaskFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


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

    .line 301
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 304
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-eqz p1, :cond_52

    .line 305
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskStatus()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_52

    .line 307
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskType()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_24

    .line 308
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {p3}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_31

    .line 310
    :cond_24
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {p3}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    :goto_31
    iget-object p3, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-wide v0, p3, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-lez p3, :cond_48

    .line 314
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setTaskId(J)V

    .line 316
    :cond_48
    const-string p3, "taskBean"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 317
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$6;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    :cond_52
    return-void
.end method
