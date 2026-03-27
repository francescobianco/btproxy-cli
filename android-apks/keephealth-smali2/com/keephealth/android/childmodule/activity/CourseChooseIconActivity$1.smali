.class Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "CourseChooseIconActivity.java"


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

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->finish()V

    return-void
.end method
