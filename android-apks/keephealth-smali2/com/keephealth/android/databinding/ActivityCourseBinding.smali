.class public final Lcom/keephealth/android/databinding/ActivityCourseBinding;
.super Ljava/lang/Object;
.source "ActivityCourseBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSave:Landroid/widget/Button;

.field public final layoutMain:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Lcom/keephealth/android/childmodule/NonSwipeableViewPager;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->btnSave:Landroid/widget/Button;

    .line 44
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->layoutMain:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 46
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 47
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCourseBinding;
    .registers 10

    const v0, 0x7f0900b0

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_3c

    .line 83
    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    const v0, 0x7f0905ac

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v6, :cond_3c

    const v0, 0x7f0905f6

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 96
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v7

    const v0, 0x7f0907bf

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    if-eqz v8, :cond_3c

    .line 104
    new-instance p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/ActivityCourseBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Lcom/google/android/material/tabs/TabLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Lcom/keephealth/android/childmodule/NonSwipeableViewPager;)V

    return-object p0

    .line 107
    :cond_3c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCourseBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityCourseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCourseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCourseBinding;
    .registers 5

    const v0, 0x7f0c002b

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityCourseBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCourseBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityCourseBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityCourseBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
