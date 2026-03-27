.class public final Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;
.super Ljava/lang/Object;
.source "ActivityDialCenterBBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activityFrame:Landroid/widget/FrameLayout;

.field public final customLine:Landroid/view/View;

.field public final llCustom:Landroid/widget/LinearLayout;

.field public final llMine:Landroid/widget/LinearLayout;

.field public final llRecommend:Landroid/widget/LinearLayout;

.field public final mineLine:Landroid/view/View;

.field public final recommendLine:Landroid/view/View;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvCustom:Landroid/widget/TextView;

.field public final tvMine:Landroid/widget/TextView;

.field public final tvRecommend:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->activityFrame:Landroid/widget/FrameLayout;

    .line 60
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->customLine:Landroid/view/View;

    .line 61
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->llCustom:Landroid/widget/LinearLayout;

    .line 62
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->llMine:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->llRecommend:Landroid/widget/LinearLayout;

    .line 64
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->mineLine:Landroid/view/View;

    .line 65
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->recommendLine:Landroid/view/View;

    .line 66
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->tvCustom:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->tvMine:Landroid/widget/TextView;

    .line 68
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->tvRecommend:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;
    .registers 15

    const v0, 0x7f090049

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_79

    const v0, 0x7f090114

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_79

    const v0, 0x7f090363

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_79

    const v0, 0x7f09038d

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_79

    const v0, 0x7f09039b

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_79

    const v0, 0x7f09040b

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_79

    const v0, 0x7f090491

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_79

    const v0, 0x7f09063b

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_79

    const v0, 0x7f090687

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_79

    const v0, 0x7f0906a7

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_79

    .line 158
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 161
    :cond_79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;
    .registers 5

    const v0, 0x7f0c0042

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDialCenterBBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
