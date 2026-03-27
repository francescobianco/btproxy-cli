.class Lcom/keephealth/android/childmodule/activity/CourseActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "CourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseActivity;->initView()V
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

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    iget-boolean p1, p1, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isEditStatus:Z

    if-eqz p1, :cond_14

    .line 95
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseActivity$1$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity$1$1;-><init>(Lcom/keephealth/android/childmodule/activity/CourseActivity$1;)V

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;ZLcom/keephealth/android/childmodule/DialogView$OnCancelCourse;)V

    goto :goto_19

    .line 118
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->finish()V

    :goto_19
    return-void
.end method
