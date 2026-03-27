.class Lcom/keephealth/android/childmodule/activity/CourseOldActivity$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "CourseOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->initTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;Landroidx/fragment/app/FragmentManager;I)V
    .registers 4

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$000(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->access$000(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
