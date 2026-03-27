.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;
.super Ljava/lang/Object;
.source "CustomTaskActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectTime(II)V
    .registers 6

    if-ltz p1, :cond_78

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%02d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setTimeInterval(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlTaskRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v0, 0x7f080083

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvRemind:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v0, 0x7f060113

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d1

    .line 229
    :cond_78
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setTimeInterval(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvTime:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v0, 0x7f100719

    invoke-virtual {p2, v0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlTaskRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v0, 0x7f080072

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvRemind:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v0, 0x7f060137

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6$1;->this$1:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    :goto_d1
    return-void
.end method
