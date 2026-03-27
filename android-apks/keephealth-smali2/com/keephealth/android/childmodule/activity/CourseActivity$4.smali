.class Lcom/keephealth/android/childmodule/activity/CourseActivity$4;
.super Ljava/lang/Object;
.source "CourseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseActivity;->onClickListing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$300(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    const v1, 0x7f10038c

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f100508

    if-eqz p1, :cond_60

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isEditStatus:Z

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$400(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/CourseViewModel;->isEditViewModel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$500(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 238
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$600(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    const v1, 0x7f060163

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_8b

    .line 239
    :cond_60
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$700(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8b

    const p1, 0x7f090085

    const-wide/16 v0, 0x3e8

    .line 241
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    const/4 v0, 0x2

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$000(Lcom/keephealth/android/childmodule/activity/CourseActivity;I)V

    :cond_8b
    :goto_8b
    return-void
.end method
