.class public final Lcom/keephealth/android/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activityFrame:Landroid/widget/FrameLayout;

.field public final layoutMain:Landroid/widget/LinearLayout;

.field public final rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

.field public final rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

.field public final rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

.field public final rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

.field public final rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tabcontent:Landroid/widget/FrameLayout;

.field public final tabhost:Landroidx/fragment/app/FragmentTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Landroid/widget/FrameLayout;Landroidx/fragment/app/FragmentTabHost;)V
    .registers 11

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->rootView:Landroid/widget/LinearLayout;

    .line 57
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->activityFrame:Landroid/widget/FrameLayout;

    .line 58
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->layoutMain:Landroid/widget/LinearLayout;

    .line 59
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->rbTabDevice:Lcom/keephealth/android/views/NotifyRadioButton;

    .line 60
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->rbTabEcg:Lcom/keephealth/android/views/NotifyRadioButton;

    .line 61
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->rbTabMainpage:Lcom/keephealth/android/views/NotifyRadioButton;

    .line 62
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->rbTabSport:Lcom/keephealth/android/views/NotifyRadioButton;

    .line 63
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->rbTabUser:Lcom/keephealth/android/views/NotifyRadioButton;

    .line 64
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->tabcontent:Landroid/widget/FrameLayout;

    .line 65
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->tabhost:Landroidx/fragment/app/FragmentTabHost;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityMainBinding;
    .registers 14

    const v0, 0x7f090049

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_6b

    .line 101
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f090489

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v6, :cond_6b

    const v0, 0x7f09048a

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v7, :cond_6b

    const v0, 0x7f09048b

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v8, :cond_6b

    const v0, 0x7f09048c

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v9, :cond_6b

    const v0, 0x7f09048d

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/keephealth/android/views/NotifyRadioButton;

    if-eqz v10, :cond_6b

    const v0, 0x7f0905ae

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_6b

    const v0, 0x7f0905af

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/fragment/app/FragmentTabHost;

    if-eqz v12, :cond_6b

    .line 145
    new-instance p0, Lcom/keephealth/android/databinding/ActivityMainBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/ActivityMainBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Lcom/keephealth/android/views/NotifyRadioButton;Landroid/widget/FrameLayout;Landroidx/fragment/app/FragmentTabHost;)V

    return-object p0

    .line 148
    :cond_6b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityMainBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityMainBinding;
    .registers 5

    const v0, 0x7f0c0065

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityMainBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
