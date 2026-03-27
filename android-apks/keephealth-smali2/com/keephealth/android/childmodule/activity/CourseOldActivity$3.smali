.class Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "CourseOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->createObserver()V
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

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    iget-boolean p1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isEditStatus:Z

    if-eqz p1, :cond_14

    .line 136
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;-><init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;)V

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;ZLcom/keephealth/android/childmodule/DialogView$OnCancelCourse;)V

    goto :goto_19

    .line 159
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->finish()V

    :goto_19
    return-void
.end method
