.class Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;
.super Ljava/lang/Object;
.source "CourseWeekFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->createObserver()V
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

    .line 923
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 926
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_38e

    goto/16 :goto_36a

    .line 1048
    :pswitch_11
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_81

    .line 1049
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v6, v6, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-virtual {v0, v5, v1, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 1052
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_4e

    .line 1053
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 1055
    :cond_4e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_61

    .line 1056
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1058
    :cond_61
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 1059
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1061
    :cond_76
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1064
    :cond_81
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1028
    :pswitch_8c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_fc

    .line 1029
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v6, v6, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-virtual {v0, v5, v1, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 1032
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_c9

    .line 1033
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 1035
    :cond_c9
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_dc

    .line 1036
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1038
    :cond_dc
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f1

    .line 1039
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1041
    :cond_f1
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1044
    :cond_fc
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1008
    :pswitch_107
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_177

    .line 1009
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v6, v6, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-virtual {v0, v5, v1, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 1012
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_144

    .line 1013
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 1015
    :cond_144
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_157

    .line 1016
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1018
    :cond_157
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16c

    .line 1019
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1021
    :cond_16c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1024
    :cond_177
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 988
    :pswitch_182
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    if-eqz v0, :cond_1f2

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1f2

    .line 989
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v6, v6, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-virtual {v0, v5, v1, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 992
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_1bf

    .line 993
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 995
    :cond_1bf
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1d2

    .line 996
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 998
    :cond_1d2
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e7

    .line 999
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1001
    :cond_1e7
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 1004
    :cond_1f2
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 968
    :pswitch_1fd
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    if-eqz v0, :cond_26d

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_26d

    .line 969
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v6, v6, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-virtual {v0, v5, v1, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 972
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_23a

    .line 973
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 975
    :cond_23a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_24d

    .line 976
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 978
    :cond_24d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_262

    .line 979
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 981
    :cond_262
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 984
    :cond_26d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 948
    :pswitch_278
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    if-eqz v0, :cond_2e8

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_2e8

    .line 949
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v6, v6, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-virtual {v0, v5, v1, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 952
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_2b5

    .line 953
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 955
    :cond_2b5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_2c8

    .line 956
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 958
    :cond_2c8
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2dd

    .line 959
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 961
    :cond_2dd
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 964
    :cond_2e8
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_36a

    .line 928
    :pswitch_2f3
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    if-eqz v0, :cond_361

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_361

    .line 929
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v6, v6, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-virtual {v0, v5, v1, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 932
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_330

    .line 933
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 935
    :cond_330
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_343

    .line 936
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    :cond_343
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_357

    .line 939
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_36a

    .line 941
    :cond_357
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_36a

    .line 944
    :cond_361
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    :goto_36a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f090172

    .line 1073
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz v0, :cond_38d

    if-eqz p1, :cond_38d

    .line 1076
    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4$1;-><init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_38d
    return-void

    :pswitch_data_38e
    .packed-switch 0x0
        :pswitch_2f3
        :pswitch_278
        :pswitch_1fd
        :pswitch_182
        :pswitch_107
        :pswitch_8c
        :pswitch_11
    .end packed-switch
.end method
