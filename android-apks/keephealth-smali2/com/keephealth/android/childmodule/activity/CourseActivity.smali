.class public Lcom/keephealth/android/childmodule/activity/CourseActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "CourseActivity.java"


# static fields
.field public static isDeleStatus:Z


# instance fields
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

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ac
    .end annotation
.end field

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->viewList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/activity/CourseActivity;I)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->saveData(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->cancelData()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/childmodule/activity/CourseActivity;)Landroid/widget/Button;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    return-object p0
.end method

.method private cancelData()V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/keephealth/android/persenter/device/CourseViewModel;->savaAllCourse(Landroid/content/Context;Z)Z

    return-void
.end method

.method private initTabLayout()V
    .registers 7

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x4

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-direct {v1, v2, v5}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2}, Lcom/keephealth/android/childmodule/fragment/CourseWeekFragment;-><init>(ILcom/keephealth/android/persenter/device/CourseViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f100131

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012b

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012c

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012d

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012e

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f10012f

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f100130

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    if-eqz v0, :cond_cb

    .line 191
    invoke-virtual {v0, v5}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setOffscreenPageLimit(I)V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseActivity$3;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/keephealth/android/childmodule/activity/CourseActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;Landroidx/fragment/app/FragmentManager;I)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 207
    :cond_cb
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f060063

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f06005a

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    move v0, v3

    .line 210
    :goto_e8
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_141

    .line 211
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    const v5, 0x7f0c0138

    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 212
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

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

    .line 213
    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_131

    .line 215
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 216
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_13e

    .line 218
    :cond_131
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const v5, 0x7f060113

    .line 219
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_13e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e8

    :cond_141
    return-void
.end method

.method private onClickListing()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private saveData(I)V
    .registers 10

    .line 253
    const-string v0, "courseviewmode4l"

    .line 0
    const-string v1, "setDataSuccess:"

    const-string v2, "isCanSave:"

    const-string v3, "isCourseSetSuccess:"

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "put:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "courseviewmode3l"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :try_start_1c
    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Lcom/keephealth/android/persenter/device/CourseViewModel;->savaAllCourse(Landroid/content/Context;Z)Z

    move-result v4

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f10071b

    const v5, 0x7f100693

    if-eqz v4, :cond_e1

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isCanSave:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-boolean v4, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isCanSave:Z

    if-nez v4, :cond_c0

    const/4 v4, 0x1

    .line 260
    iput-boolean v4, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isCanSave:Z

    .line 261
    const-string v7, "courseViewModel.setCourseData()..."

    invoke-static {v0, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v7, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-virtual {v7, v4}, Lcom/keephealth/android/persenter/device/CourseViewModel;->setCourseData(Z)I

    move-result v7

    iput v7, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->setDataSuccess:I

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->setDataSuccess:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->setDataSuccess:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_ab

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    const v3, 0x7f10038c

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    const v3, 0x7f060113

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/CourseViewModel;->isEditViewModel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    const v3, 0x7f080083

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 269
    iput-boolean v6, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isEditStatus:Z

    if-ne p1, v4, :cond_b8

    .line 271
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->finish()V

    goto :goto_b8

    .line 274
    :cond_ab
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p0, v5}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v0, v3}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_b8
    :goto_b8
    iget p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->setDataSuccess:I

    if-eqz p1, :cond_be

    if-ne p1, v1, :cond_c0

    .line 277
    :cond_be
    iput-boolean v6, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isCanSave:Z

    .line 280
    :cond_c0
    const-string p1, "courseviewmodel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isCanSave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setDataSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->setDataSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 282
    :cond_e1
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p0, v5}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_ee} :catch_ee

    :catch_ee
    :goto_ee
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c002d

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 66
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100608

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    .line 71
    const-string v1, "\u5f53\u524d\u9875\u9762 CourseActivity"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 72
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/keephealth/android/persenter/device/CourseViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/device/CourseViewModel;

    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->courseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    .line 75
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    const v1, 0x7f060113

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    const v1, 0x7f10038c

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->mList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->mListAft:Ljava/util/List;

    .line 87
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->initTabLayout()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 164
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->onClickListing()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 329
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 330
    sput-boolean v0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isDeleStatus:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 296
    iget-boolean p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->isEditStatus:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_13

    .line 297
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    new-instance v0, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V

    invoke-direct {p1, p0, p2, v0}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;ZLcom/keephealth/android/childmodule/DialogView$OnCancelCourse;)V

    goto :goto_16

    .line 320
    :cond_13
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseActivity;->finish()V

    :goto_16
    return p2

    .line 324
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
