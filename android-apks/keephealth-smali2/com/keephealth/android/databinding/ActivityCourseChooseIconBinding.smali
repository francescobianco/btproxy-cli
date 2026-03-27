.class public final Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;
.super Ljava/lang/Object;
.source "ActivityCourseChooseIconBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutMain:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final recyElectronics:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyFamily:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyMoney:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyOutdoors:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyRestaurant:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvElectronicsType:Landroid/widget/TextView;

.field public final tvFamilyType:Landroid/widget/TextView;

.field public final tvMoneyType:Landroid/widget/TextView;

.field public final tvOutdoorsType:Landroid/widget/TextView;

.field public final tvRestaurantType:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 14

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->layoutMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyElectronics:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyFamily:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyMoney:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyOutdoors:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->recyRestaurant:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 74
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->tvElectronicsType:Landroid/widget/TextView;

    .line 75
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->tvFamilyType:Landroid/widget/TextView;

    .line 76
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->tvMoneyType:Landroid/widget/TextView;

    .line 77
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->tvOutdoorsType:Landroid/widget/TextView;

    .line 78
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->tvRestaurantType:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;
    .registers 15

    .line 108
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f090498

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_90

    const v0, 0x7f090499

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_90

    const v0, 0x7f09049a

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_90

    const v0, 0x7f09049b

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_90

    const v0, 0x7f09049c

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_90

    const v0, 0x7f0905f6

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 145
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v8

    const v0, 0x7f090737

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_90

    const v0, 0x7f090738

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_90

    const v0, 0x7f090751

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_90

    const v0, 0x7f090765

    .line 166
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_90

    const v0, 0x7f09076a

    .line 172
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_90

    .line 177
    new-instance p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v13}, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 181
    :cond_90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;
    .registers 5

    const v0, 0x7f0c002c

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityCourseChooseIconBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
