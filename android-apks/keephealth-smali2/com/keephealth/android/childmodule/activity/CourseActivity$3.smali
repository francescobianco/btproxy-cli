.class Lcom/keephealth/android/childmodule/activity/CourseActivity$3;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "CourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseActivity;->initTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;Landroidx/fragment/app/FragmentManager;I)V
    .registers 4

    .line 192
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$200(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->access$200(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
