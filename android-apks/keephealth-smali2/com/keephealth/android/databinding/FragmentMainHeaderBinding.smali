.class public final Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;
.super Ljava/lang/Object;
.source "FragmentMainHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final rlDistance:Landroid/widget/RelativeLayout;

.field public final rlKcal:Landroid/widget/RelativeLayout;

.field public final rlSteps:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sportDataPie:Lcom/keephealth/android/views/SportPieView;

.field public final tvDisVaule:Landroid/widget/TextView;

.field public final tvKcalVaule:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;

.field public final tvTagUnitDis:Landroid/widget/TextView;

.field public final tvTagUnitKcal:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/SportPieView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 57
    iput-object p2, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->rlDistance:Landroid/widget/RelativeLayout;

    .line 58
    iput-object p3, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->rlKcal:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p4, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->rlSteps:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p5, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    .line 61
    iput-object p6, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->tvDisVaule:Landroid/widget/TextView;

    .line 62
    iput-object p7, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->tvKcalVaule:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->tvTag:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->tvTagUnitDis:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->tvTagUnitKcal:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;
    .registers 14

    const v0, 0x7f0904e6

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_76

    const v0, 0x7f0904f3

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_76

    const v0, 0x7f090517

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_76

    const v0, 0x7f09058b

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/keephealth/android/views/SportPieView;

    if-eqz v7, :cond_76

    const v0, 0x7f090652

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_76

    const v0, 0x7f090677

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_76

    const v0, 0x7f0906e6

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_76

    const v0, 0x7f0906eb

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_76

    const v0, 0x7f0906ec

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_76

    .line 149
    new-instance v0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/SportPieView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 152
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;
    .registers 5

    const v0, 0x7f0c0105

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentMainHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
