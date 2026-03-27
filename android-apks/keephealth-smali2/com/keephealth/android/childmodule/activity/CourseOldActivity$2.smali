.class Lcom/keephealth/android/childmodule/activity/CourseOldActivity$2;
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

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 128
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    const/4 v0, 0x2

    # invokes: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->saveData(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$100(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;I)V

    return-void
.end method
