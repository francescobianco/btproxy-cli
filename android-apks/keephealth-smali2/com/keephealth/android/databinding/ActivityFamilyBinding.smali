.class public final Lcom/keephealth/android/databinding/ActivityFamilyBinding;
.super Ljava/lang/Object;
.source "ActivityFamilyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activityFrame:Landroid/widget/FrameLayout;

.field public final familyLine:Landroid/view/View;

.field public final familyTitle:Landroid/widget/TextView;

.field public final followLine:Landroid/view/View;

.field public final followTitle:Landroid/widget/TextView;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivQrCode:Landroid/widget/ImageView;

.field public final layoutMain:Landroid/widget/LinearLayout;

.field public final rlFamily:Landroid/widget/RelativeLayout;

.field public final rlFollow:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .registers 12

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->rootView:Landroid/widget/LinearLayout;

    .line 61
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->activityFrame:Landroid/widget/FrameLayout;

    .line 62
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->familyLine:Landroid/view/View;

    .line 63
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->familyTitle:Landroid/widget/TextView;

    .line 64
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->followLine:Landroid/view/View;

    .line 65
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->followTitle:Landroid/widget/TextView;

    .line 66
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->ivBack:Landroid/widget/ImageView;

    .line 67
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->ivQrCode:Landroid/widget/ImageView;

    .line 68
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->layoutMain:Landroid/widget/LinearLayout;

    .line 69
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->rlFamily:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->rlFollow:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityFamilyBinding;
    .registers 15

    const v0, 0x7f090049

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_71

    const v0, 0x7f09017f

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_71

    const v0, 0x7f090182

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_71

    const v0, 0x7f09019a

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_71

    const v0, 0x7f09019b

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_71

    const v0, 0x7f09029f

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_71

    const v0, 0x7f0902c6

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_71

    .line 142
    move-object v11, p0

    check-cast v11, Landroid/widget/LinearLayout;

    const v0, 0x7f0904ec

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_71

    const v0, 0x7f0904ed

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_71

    .line 156
    new-instance p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;

    move-object v2, p0

    move-object v3, v11

    invoke-direct/range {v2 .. v13}, Lcom/keephealth/android/databinding/ActivityFamilyBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object p0

    .line 159
    :cond_71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityFamilyBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityFamilyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityFamilyBinding;
    .registers 5

    const v0, 0x7f0c0050

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityFamilyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityFamilyBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
