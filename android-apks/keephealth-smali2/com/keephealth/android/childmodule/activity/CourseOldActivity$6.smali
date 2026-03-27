.class Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;
.super Ljava/lang/Object;
.source "CourseOldActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    .line 270
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelCourse(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    if-ne p1, v0, :cond_b

    .line 275
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;I)V

    goto :goto_23

    .line 277
    :cond_b
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->cancelData()V
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$200(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->finish()V

    goto :goto_23

    :cond_16
    if-ne p1, v0, :cond_1e

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;I)V

    goto :goto_23

    .line 285
    :cond_1e
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->finish()V

    :goto_23
    return-void
.end method
