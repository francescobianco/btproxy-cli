.class Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$4;
.super Ljava/lang/Object;
.source "CourseChooseIconActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;

    # setter for: Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->chooseItem:I
    invoke-static {v0, p1}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->access$002(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;I)I

    .line 98
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->chooseItem:I
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->access$000(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)I

    move-result v0

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->chooseIcon(II)V
    invoke-static {p1, v0, p2}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;II)V

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "adapter_id:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->chooseItem:I
    invoke-static {p2}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->access$000(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trtr5"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
