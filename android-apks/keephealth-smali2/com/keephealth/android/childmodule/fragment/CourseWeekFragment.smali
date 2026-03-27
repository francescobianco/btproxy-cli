.class public Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;
.super Lcom/keephealth/android/base/BaseMvvMNewFragment;
.source "CourseWeekFragment.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

.field courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

.field courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

.field private isEdit:I

.field private mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

.field mListAftFrisday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListAftMonday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListAftSaturday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListAftSunday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListAftThursday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListAftTuesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListAftWednesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMorFrisday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMorMonday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMorSaturday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMorSunday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMorThursday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMorTuesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field mListMorWednesday:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;-><init>()V

    .line 76
    iput p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    .line 77
    iput-object p2, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)Lcom/keephealth/android/persenter/device/CourseViewModel;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    return-object p0
.end method

.method private setInitData()V
    .registers 3

    .line 734
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    if-nez v0, :cond_16

    .line 735
    const-string v0, "sundayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    .line 736
    const-string v0, "sundayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    goto/16 :goto_8d

    :cond_16
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 738
    const-string v0, "mondayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    .line 739
    const-string v0, "mondayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    goto :goto_8d

    :cond_2a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 741
    const-string v0, "tuesdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    .line 742
    const-string v0, "tuesdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    goto :goto_8d

    :cond_3e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_52

    .line 744
    const-string v0, "wednesdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    .line 745
    const-string v0, "wednesdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    goto :goto_8d

    :cond_52
    const/4 v1, 0x4

    if-ne v0, v1, :cond_66

    .line 747
    const-string v0, "thursdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    .line 748
    const-string v0, "thursdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    goto :goto_8d

    :cond_66
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7a

    .line 750
    const-string v0, "fridayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    .line 751
    const-string v0, "fridayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    goto :goto_8d

    :cond_7a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_8d

    .line 753
    const-string v0, "saturdayMor"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    .line 754
    const-string v0, "saturdayAft"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    .line 756
    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/device/CourseViewModel;->initData(I)V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 761
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->linCourseAddMor:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$3;-><init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->linCourseAddAft:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$4;-><init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 10

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->setInitData()V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    packed-switch v0, :pswitch_data_90e

    goto/16 :goto_28d

    .line 150
    :pswitch_7c
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    iget v4, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v5, "mor"

    iget-object v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 153
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v7, "aft"

    iget-object v8, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_28d

    .line 143
    :pswitch_c8
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    iget v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v6, "mor"

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v7, "aft"

    iget-object v8, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_28d

    .line 136
    :pswitch_114
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    iget v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v6, "mor"

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 139
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v7, "aft"

    iget-object v8, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_28d

    .line 129
    :pswitch_160
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    iget v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v6, "mor"

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v7, "aft"

    iget-object v8, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_28d

    .line 122
    :pswitch_1ac
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    iget v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v6, "mor"

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v7, "aft"

    iget-object v8, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_28d

    .line 115
    :pswitch_1f8
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    iget v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v6, "mor"

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v7, "aft"

    iget-object v8, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_28d

    .line 108
    :pswitch_243
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    iget v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v6, "mor"

    iget-object v7, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseMor:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const-string v7, "aft"

    iget-object v8, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->recyCourseAft:Lcom/keephealth/android/views/CustomRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 159
    :goto_28d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$1;-><init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->onDeleCoureListing(Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;)V

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$2;-><init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->onDeleCoureListing(Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;)V

    .line 203
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_920

    goto/16 :goto_901

    .line 517
    :pswitch_2ae
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    if-eqz v0, :cond_2b8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2c2

    :cond_2b8
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    if-eqz v0, :cond_364

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_364

    .line 518
    :cond_2c2
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    if-ne v0, v1, :cond_325

    .line 519
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_2d6

    .line 520
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2dd

    .line 522
    :cond_2d6
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    :goto_2dd
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_2ed

    .line 525
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f4

    .line 527
    :cond_2ed
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    :goto_2f4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_304

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30b

    .line 532
    :cond_304
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    :goto_30b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31c

    .line 535
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 537
    :cond_31c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 540
    :cond_325
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_343

    .line 543
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34a

    .line 545
    :cond_343
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    :goto_34a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35b

    .line 548
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 550
    :cond_35b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 554
    :cond_364
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_36b

    .line 555
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 557
    :cond_36b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_372

    .line 558
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 560
    :cond_372
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    if-eqz v0, :cond_901

    .line 561
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_901

    .line 465
    :pswitch_396
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    if-eqz v0, :cond_3a0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3aa

    :cond_3a0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    if-eqz v0, :cond_44c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44c

    .line 466
    :cond_3aa
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    if-ne v0, v1, :cond_40d

    .line 467
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_3be

    .line 468
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3c5

    .line 470
    :cond_3be
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    :goto_3c5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_3d5

    .line 473
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3dc

    .line 475
    :cond_3d5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    :goto_3dc
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3ec

    .line 478
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f3

    .line 480
    :cond_3ec
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    :goto_3f3
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_404

    .line 483
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 485
    :cond_404
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 488
    :cond_40d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_42b

    .line 491
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_432

    .line 493
    :cond_42b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    :goto_432
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_443

    .line 496
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 498
    :cond_443
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 502
    :cond_44c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_453

    .line 503
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 505
    :cond_453
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_45a

    .line 506
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 508
    :cond_45a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    if-eqz v0, :cond_901

    .line 509
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_901

    .line 413
    :pswitch_47e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    if-eqz v0, :cond_488

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_492

    :cond_488
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    if-eqz v0, :cond_534

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_534

    .line 414
    :cond_492
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    if-ne v0, v1, :cond_4f5

    .line 415
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_4a6

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4ad

    .line 418
    :cond_4a6
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    :goto_4ad
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_4bd

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4c4

    .line 423
    :cond_4bd
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    :goto_4c4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d4

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4db

    .line 428
    :cond_4d4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :goto_4db
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4ec

    .line 431
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 433
    :cond_4ec
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 436
    :cond_4f5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_513

    .line 439
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_51a

    .line 441
    :cond_513
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :goto_51a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_52b

    .line 444
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 446
    :cond_52b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 450
    :cond_534
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_53b

    .line 451
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 453
    :cond_53b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_542

    .line 454
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 456
    :cond_542
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    if-eqz v0, :cond_901

    .line 457
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_901

    .line 361
    :pswitch_566
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    if-eqz v0, :cond_570

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_57a

    :cond_570
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    if-eqz v0, :cond_61c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61c

    .line 362
    :cond_57a
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    if-ne v0, v1, :cond_5dd

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_58e

    .line 364
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_595

    .line 366
    :cond_58e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :goto_595
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_5a5

    .line 369
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5ac

    .line 371
    :cond_5a5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    :goto_5ac
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5bc

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c3

    .line 376
    :cond_5bc
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :goto_5c3
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d4

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 381
    :cond_5d4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 384
    :cond_5dd
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5fb

    .line 387
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_602

    .line 389
    :cond_5fb
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :goto_602
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_613

    .line 392
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 394
    :cond_613
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 398
    :cond_61c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_623

    .line 399
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 401
    :cond_623
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_62a

    .line 402
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 404
    :cond_62a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    if-eqz v0, :cond_901

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_901

    .line 309
    :pswitch_64e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    if-eqz v0, :cond_658

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_662

    :cond_658
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    if-eqz v0, :cond_704

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_704

    .line 310
    :cond_662
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    if-ne v0, v1, :cond_6c5

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_676

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_67d

    .line 314
    :cond_676
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    :goto_67d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_68d

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_694

    .line 319
    :cond_68d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    :goto_694
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a4

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6ab

    .line 324
    :cond_6a4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :goto_6ab
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6bc

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 329
    :cond_6bc
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 332
    :cond_6c5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6e3

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6ea

    .line 337
    :cond_6e3
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :goto_6ea
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6fb

    .line 340
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 342
    :cond_6fb
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 346
    :cond_704
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_70b

    .line 347
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 349
    :cond_70b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_712

    .line 350
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_712
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    if-eqz v0, :cond_901

    .line 353
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_901

    .line 257
    :pswitch_736
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    if-eqz v0, :cond_740

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_74a

    :cond_740
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    if-eqz v0, :cond_7ec

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7ec

    .line 258
    :cond_74a
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    if-ne v0, v1, :cond_7ad

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_75e

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_765

    .line 262
    :cond_75e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :goto_765
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_775

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_77c

    .line 267
    :cond_775
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    :goto_77c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_78c

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_793

    .line 272
    :cond_78c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    :goto_793
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7a4

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 277
    :cond_7a4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 280
    :cond_7ad
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7cb

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7d2

    .line 285
    :cond_7cb
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :goto_7d2
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7e3

    .line 288
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 290
    :cond_7e3
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 294
    :cond_7ec
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_7f3

    .line 295
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 297
    :cond_7f3
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_7fa

    .line 298
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 300
    :cond_7fa
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    if-eqz v0, :cond_901

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_901

    .line 205
    :pswitch_81e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    if-eqz v0, :cond_828

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_832

    :cond_828
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    if-eqz v0, :cond_8d1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8d1

    .line 206
    :cond_832
    iget v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    if-ne v0, v1, :cond_894

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_846

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_84d

    .line 210
    :cond_846
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    :goto_84d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_85d

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_864

    .line 215
    :cond_85d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :goto_864
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_874

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_87b

    .line 220
    :cond_874
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_87b
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_88c

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_901

    .line 225
    :cond_88c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_901

    .line 228
    :cond_894
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8b2

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b9

    .line 233
    :cond_8b2
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :goto_8b9
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8c9

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_901

    .line 238
    :cond_8c9
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_901

    .line 242
    :cond_8d1
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_8d8

    .line 243
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 245
    :cond_8d8
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_8df

    .line 246
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    .line 248
    :cond_8df
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    if-eqz v0, :cond_901

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataMor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->tvNonDataAft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    :cond_901
    :goto_901
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isEditViewModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :pswitch_data_90e
    .packed-switch 0x0
        :pswitch_243
        :pswitch_1f8
        :pswitch_1ac
        :pswitch_160
        :pswitch_114
        :pswitch_c8
        :pswitch_7c
    .end packed-switch

    :pswitch_data_920
    .packed-switch 0x0
        :pswitch_81e
        :pswitch_736
        :pswitch_64e
        :pswitch_566
        :pswitch_47e
        :pswitch_396
        :pswitch_2ae
    .end packed-switch
.end method

.method synthetic lambda$initView$0$com-keephealth-android-childmodule-fragment-CourseWeekFragment(Ljava/lang/Integer;)V
    .registers 6

    .line 570
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterMor:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 571
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit(Z)V

    .line 573
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->courseAdapterAft:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    if-eqz v0, :cond_21

    .line 574
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit(Z)V

    .line 576
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->isEdit:I

    .line 577
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_4b

    .line 578
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_3c

    .line 579
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    :cond_3c
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 582
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 585
    :cond_4b
    iget p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mType:I

    const/16 v1, 0xa

    packed-switch p1, :pswitch_data_26c

    goto/16 :goto_26a

    .line 707
    :pswitch_54
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSaturday:Ljava/util/List;

    if-eqz p1, :cond_6c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_6c

    .line 708
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_79

    .line 709
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_79

    .line 712
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_79

    .line 713
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    :cond_79
    :goto_79
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSaturday:Ljava/util/List;

    if-eqz p1, :cond_92

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_92

    .line 717
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 718
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 721
    :cond_92
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 722
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 687
    :pswitch_a1
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorFrisday:Ljava/util/List;

    if-eqz p1, :cond_b9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_b9

    .line 688
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_c6

    .line 689
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c6

    .line 692
    :cond_b9
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_c6

    .line 693
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    :cond_c6
    :goto_c6
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftFrisday:Ljava/util/List;

    if-eqz p1, :cond_df

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_df

    .line 697
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 698
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 701
    :cond_df
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 702
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 667
    :pswitch_ee
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorThursday:Ljava/util/List;

    if-eqz p1, :cond_106

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_106

    .line 668
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_113

    .line 669
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_113

    .line 672
    :cond_106
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_113

    .line 673
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    :cond_113
    :goto_113
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftThursday:Ljava/util/List;

    if-eqz p1, :cond_12c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_12c

    .line 677
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 678
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 681
    :cond_12c
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 682
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 647
    :pswitch_13b
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorWednesday:Ljava/util/List;

    if-eqz p1, :cond_153

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_153

    .line 648
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_160

    .line 649
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_160

    .line 652
    :cond_153
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_160

    .line 653
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    :cond_160
    :goto_160
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftWednesday:Ljava/util/List;

    if-eqz p1, :cond_179

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_179

    .line 657
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 658
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 661
    :cond_179
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 662
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 627
    :pswitch_188
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorTuesday:Ljava/util/List;

    if-eqz p1, :cond_1a0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_1a0

    .line 628
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1ad

    .line 629
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1ad

    .line 632
    :cond_1a0
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1ad

    .line 633
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    :cond_1ad
    :goto_1ad
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftTuesday:Ljava/util/List;

    if-eqz p1, :cond_1c6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_1c6

    .line 637
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 638
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 641
    :cond_1c6
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 642
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_26a

    .line 607
    :pswitch_1d5
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorMonday:Ljava/util/List;

    if-eqz p1, :cond_1ed

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_1ed

    .line 608
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1fa

    .line 609
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1fa

    .line 612
    :cond_1ed
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1fa

    .line 613
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    :cond_1fa
    :goto_1fa
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftMonday:Ljava/util/List;

    if-eqz p1, :cond_212

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_212

    .line 617
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 618
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26a

    .line 621
    :cond_212
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 622
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26a

    .line 587
    :pswitch_220
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListMorSunday:Ljava/util/List;

    if-eqz p1, :cond_238

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_238

    .line 588
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_245

    .line 589
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_245

    .line 592
    :cond_238
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    if-eqz p1, :cond_245

    .line 593
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddMor:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    :cond_245
    :goto_245
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->mListAftSunday:Ljava/util/List;

    if-eqz p1, :cond_25d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_25d

    .line 597
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 598
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26a

    .line 601
    :cond_25d
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    if-eqz p1, :cond_26a

    .line 602
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->imgCourseAddAft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_26a
    :goto_26a
    return-void

    nop

    :pswitch_data_26c
    .packed-switch 0x0
        :pswitch_220
        :pswitch_1d5
        :pswitch_188
        :pswitch_13b
        :pswitch_ee
        :pswitch_a1
        :pswitch_54
    .end packed-switch
.end method

.method protected onCreateViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;->binding:Lcom/keephealth/android/databinding/FragmentCourseSundayBinding;

    return-object p1
.end method
