.class Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;
.super Ljava/lang/Object;
.source "CourseOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->onClickListing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$300(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)Lcom/keephealth/android/databinding/ActivityCourseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCourseBinding;->btnSave:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    const v1, 0x7f10038c

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f100508

    if-eqz p1, :cond_46

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isEditStatus:Z

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$300(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)Lcom/keephealth/android/databinding/ActivityCourseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCourseBinding;->btnSave:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/CourseViewModel;->isEditViewModel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_73

    .line 219
    :cond_46
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$300(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)Lcom/keephealth/android/databinding/ActivityCourseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCourseBinding;->btnSave:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_73

    const p1, 0x7f090085

    const-wide/16 v0, 0x3e8

    .line 221
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result p1

    if-nez p1, :cond_73

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    const/4 v0, 0x2

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;I)V

    :cond_73
    :goto_73
    return-void
.end method
