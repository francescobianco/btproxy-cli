.class Lcom/keephealth/android/childmodule/DialogView$12;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/DialogView;->showCancelCourseDialog(Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/DialogView;

.field final synthetic val$back:Z

.field final synthetic val$mOnCancelCourse:Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/DialogView;Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;Z)V
    .registers 4

    .line 334
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$12;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/DialogView$12;->val$mOnCancelCourse:Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;

    iput-boolean p3, p0, Lcom/keephealth/android/childmodule/DialogView$12;->val$back:Z

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$12;->val$mOnCancelCourse:Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/keephealth/android/childmodule/DialogView$12;->val$back:Z

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;->onCancelCourse(IZ)V

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$12;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
