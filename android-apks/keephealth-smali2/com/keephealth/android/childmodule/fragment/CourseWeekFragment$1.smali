.class Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;
.super Ljava/lang/Object;
.source "CourseWeekFragment.java"

# interfaces
.implements Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleCourse(I)V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$000(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    const/4 v0, 0x0

    if-lez p1, :cond_3b

    const/16 v2, 0xa

    if-ge p1, v2, :cond_24

    .line 166
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_24
    if-nez p1, :cond_38

    .line 170
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :cond_38
    sput-boolean v1, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isDeleStatus:Z

    goto :goto_4d

    .line 175
    :cond_3b
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4d
    :goto_4d
    return-void
.end method
