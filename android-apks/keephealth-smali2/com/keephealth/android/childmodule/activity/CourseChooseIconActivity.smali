.class public Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "CourseChooseIconActivity.java"


# instance fields
.field adapter:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

.field adapterElectri:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

.field adapterMoney:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

.field adapterOutdoor:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

.field adapterRestaurant:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

.field binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

.field private chooseItem:I

.field taskRewardIconViewModel:Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)I
    .registers 1

    .line 23
    iget p0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->chooseItem:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;I)I
    .registers 2

    .line 23
    iput p1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->chooseItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;II)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->chooseIcon(II)V

    return-void
.end method

.method private chooseIcon(II)V
    .registers 6

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string p1, "id"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string p1, "price"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterOutdoor:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterElectri:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterMoney:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterRestaurant:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity$6;-><init>(Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    return-object v0
.end method

.method public initActivity()V
    .registers 3

    .line 65
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected initView()V
    .registers 5

    .line 38
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 39
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->taskRewardIconViewModel:Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f1005f9

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->taskRewardIconViewModel:Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;->setFamlifyData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyFamily:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyFamily:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->taskRewardIconViewModel:Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;->setOutDoorData()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v3}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterOutdoor:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyOutdoors:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyOutdoors:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterOutdoor:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->taskRewardIconViewModel:Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;->setElectronicData()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v3}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterElectri:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyElectronics:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyElectronics:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterElectri:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->taskRewardIconViewModel:Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;->setMoneyData()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v3}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterMoney:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyMoney:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyMoney:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterMoney:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->taskRewardIconViewModel:Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;->setRestaurantData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterRestaurant:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyRestaurant:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->binding:Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyRestaurant:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseChooseIconActivity;->adapterRestaurant:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
