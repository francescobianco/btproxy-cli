.class public Lcom/keephealth/android/childmodule/activity/CourseOldActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "CourseOldActivity.java"


# static fields
.field public static isDeleStatus:Z


# instance fields
.field private binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

.field public courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public isCanSave:Z

.field public isEditStatus:Z

.field itemStr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/CourseBean;",
            ">;"
        }
    .end annotation
.end field

.field mListAft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/CourseBean;",
            ">;"
        }
    .end annotation
.end field

.field private setDataSuccess:I

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->viewList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)Ljava/util/List;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->saveData(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->cancelData()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)Lcom/keephealth/android/databinding/ActivityCourseBinding;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    return-object p0
.end method

.method private cancelData()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/keephealth/android/persenter/device/CourseViewModel;->savaAllCourse(Landroid/content/Context;Z)Z

    return-void
.end method

.method private initTabLayout()V
    .registers 7

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f100131

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012b

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012c

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012d

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012e

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012f

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f100130

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setOffscreenPageLimit(I)V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$1;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;Landroidx/fragment/app/FragmentManager;I)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityCourseBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f060063

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f06005a

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    move v0, v3

    .line 110
    :goto_f2
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_14f

    .line 111
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCourseBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    const v5, 0x7f0c0138

    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 112
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCourseBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    const v5, 0x7f0905e1

    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->itemStr:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_13f

    .line 115
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 116
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_14c

    .line 118
    :cond_13f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const v5, 0x7f060113

    .line 119
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_14c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    :cond_14f
    return-void
.end method

.method private onClickListing()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->btnSave:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private saveData(I)V
    .registers 9

    const-string v0, "isCanSave:"

    .line 234
    :try_start_2
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/keephealth/android/persenter/device/CourseViewModel;->savaAllCourse(Landroid/content/Context;Z)Z

    move-result v1

    const v3, 0x7f10071b

    const v4, 0x7f100693

    if-eqz v1, :cond_7a

    .line 236
    iget-boolean v1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isCanSave:Z

    if-nez v1, :cond_59

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isCanSave:Z

    .line 238
    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-virtual {v5, v1}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseData(Z)I

    move-result v5

    iput v5, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->setDataSuccess:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_44

    .line 240
    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/ActivityCourseBinding;->btnSave:Landroid/widget/Button;

    const v4, 0x7f10038c

    invoke-virtual {p0, v4}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget-object v3, v3, Lcom/keephealth/android/persenter/device/CourseViewModel;->isEditViewModel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 242
    iput-boolean v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isEditStatus:Z

    if-ne p1, v1, :cond_51

    .line 244
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->finish()V

    goto :goto_51

    .line 247
    :cond_44
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p0, v4}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v1, v3}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_51
    :goto_51
    iget p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->setDataSuccess:I

    if-eqz p1, :cond_57

    if-ne p1, v6, :cond_59

    .line 250
    :cond_57
    iput-boolean v2, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isCanSave:Z

    .line 253
    :cond_59
    const-string p1, "courseviewmodel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isCanSave:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setDataSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->setDataSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 255
    :cond_7a
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p0, v4}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_87} :catch_87

    :catch_87
    :goto_87
    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 203
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->onClickListing()V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityCourseBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCourseBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    return-object v0
.end method

.method public initActivity()V
    .registers 3

    .line 55
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 62
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    const/4 v0, 0x0

    .line 63
    const-string v1, "\u5f53\u524d\u9875\u9762 CourseActivity"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 64
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/CourseViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100608

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->mList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->mListAft:Ljava/util/List;

    .line 71
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->initTabLayout()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 302
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 303
    sput-boolean v0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isDeleStatus:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 269
    iget-boolean p1, p0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->isEditStatus:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_13

    .line 270
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    new-instance v0, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity$6;-><init>(Lcom/keephealth/android/childmodule/activity/CourseOldActivity;)V

    invoke-direct {p1, p0, p2, v0}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;ZLcom/keephealth/android/childmodule/DialogView$OnCancelCourse;)V

    goto :goto_16

    .line 293
    :cond_13
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;->finish()V

    :goto_16
    return p2

    .line 297
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
