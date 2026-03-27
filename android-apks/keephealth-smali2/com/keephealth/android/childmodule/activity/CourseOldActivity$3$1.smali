.class Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;
.super Ljava/lang/Object;
.source "CourseOldActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelCourse(IZ)V
    .registers 5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sub:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  back:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "courseviewmode3l"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_3a

    if-ne p1, v0, :cond_2b

    .line 142
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;I)V

    goto :goto_4b

    .line 144
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->cancelData()V
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$200(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V

    .line 145
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->finish()V

    goto :goto_4b

    :cond_3a
    if-ne p1, v0, :cond_44

    .line 149
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;I)V

    goto :goto_4b

    .line 151
    :cond_44
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3$1;->this$1:Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->finish()V

    :goto_4b
    return-void
.end method
