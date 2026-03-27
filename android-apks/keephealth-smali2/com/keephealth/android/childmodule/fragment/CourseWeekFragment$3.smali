.class Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;
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

    .line 761
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 764
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v0

    const-string v1, "\u6dfb\u52a0\u4e0a\u5348\u4e4b\u540e\u7684mListMor:"

    const-string v2, "\u6dfb\u52a0\u4e0a\u5348\u4e4b\u524d\u7684mListMor:"

    const-string v3, "trtr5g"

    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_51e

    goto/16 :goto_505

    .line 892
    :pswitch_16
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_c0

    .line 893
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v2

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-virtual {v0, v2, v6, v7}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_8d

    .line 898
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 900
    :cond_8d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_a0

    .line 901
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 903
    :cond_a0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b5

    .line 904
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 906
    :cond_b5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 909
    :cond_c0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_505

    .line 871
    :pswitch_cb
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_175

    .line 872
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v2

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-virtual {v0, v2, v6, v7}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_142

    .line 877
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 879
    :cond_142
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_155

    .line 880
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    :cond_155
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16a

    .line 883
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 885
    :cond_16a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 888
    :cond_175
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_505

    .line 850
    :pswitch_180
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    if-eqz v0, :cond_22a

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_22a

    .line 851
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v2

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-virtual {v0, v2, v6, v7}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_1f7

    .line 856
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 858
    :cond_1f7
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_20a

    .line 859
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    :cond_20a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21f

    .line 862
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 864
    :cond_21f
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 867
    :cond_22a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_505

    .line 829
    :pswitch_235
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    if-eqz v0, :cond_2df

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_2df

    .line 830
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v2

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-virtual {v0, v2, v6, v7}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_2ac

    .line 835
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 837
    :cond_2ac
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_2bf

    .line 838
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    :cond_2bf
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d4

    .line 841
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 843
    :cond_2d4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 846
    :cond_2df
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_505

    .line 808
    :pswitch_2ea
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    if-eqz v0, :cond_394

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_394

    .line 809
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v2

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-virtual {v0, v2, v6, v7}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_361

    .line 814
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 816
    :cond_361
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_374

    .line 817
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    :cond_374
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_389

    .line 820
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 822
    :cond_389
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 825
    :cond_394
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_505

    .line 787
    :pswitch_39f
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    if-eqz v0, :cond_449

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_449

    .line 788
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v2

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-virtual {v0, v2, v6, v7}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_416

    .line 793
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 795
    :cond_416
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_429

    .line 796
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    :cond_429
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43e

    .line 799
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 801
    :cond_43e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_505

    .line 804
    :cond_449
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_505

    .line 766
    :pswitch_454
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    if-eqz v0, :cond_4fc

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_4fc

    .line 767
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I

    move-result v2

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v7, v7, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v0, v2, v6, v7}, Lcom/keephealth/android/persenter/device/CourseViewModel;->addMorOrAftSingleCourse(IILjava/util/List;)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_4cb

    .line 772
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->setData(Ljava/util/List;)V

    .line 774
    :cond_4cb
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_4de

    .line 775
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 777
    :cond_4de
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4f2

    .line 778
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_505

    .line 780
    :cond_4f2
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_505

    .line 783
    :cond_4fc
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    :goto_505
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_51c

    .line 919
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_51c
    return-void

    nop

    :pswitch_data_51e
    .packed-switch 0x0
        :pswitch_454
        :pswitch_39f
        :pswitch_2ea
        :pswitch_235
        :pswitch_180
        :pswitch_cb
        :pswitch_16
    .end packed-switch
.end method
