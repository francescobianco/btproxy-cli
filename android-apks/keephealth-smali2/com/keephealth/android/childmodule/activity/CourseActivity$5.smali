.class Lcom/keephealth/android/childmodule/activity/CourseActivity$5;
.super Ljava/lang/Object;
.source "CourseActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    .line 297
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelCourse(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    if-ne p1, v0, :cond_b

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$000(Lcom/keephealth/android/childmodule/activity/CourseActivity;I)V

    goto :goto_23

    .line 304
    :cond_b
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseActivity;->cancelData()V
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V

    .line 305
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->finish()V

    goto :goto_23

    :cond_16
    if-ne p1, v0, :cond_1e

    .line 310
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$000(Lcom/keephealth/android/childmodule/activity/CourseActivity;I)V

    goto :goto_23

    .line 312
    :cond_1e
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->finish()V

    :goto_23
    return-void
.end method
