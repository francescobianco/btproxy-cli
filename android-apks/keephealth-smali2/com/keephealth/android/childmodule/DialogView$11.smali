.class Lcom/keephealth/android/childmodule/DialogView$11;
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

    .line 326
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$11;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/DialogView$11;->val$mOnCancelCourse:Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;

    iput-boolean p3, p0, Lcom/keephealth/android/childmodule/DialogView$11;->val$back:Z

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 329
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$11;->val$mOnCancelCourse:Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/keephealth/android/childmodule/DialogView$11;->val$back:Z

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;->onCancelCourse(IZ)V

    .line 330
    iget-object p1, p0, Lcom/keephealth/android/childmodule/DialogView$11;->this$0:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    return-void
.end method
