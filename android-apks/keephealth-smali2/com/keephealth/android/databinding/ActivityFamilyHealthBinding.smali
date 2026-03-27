.class public final Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;
.super Ljava/lang/Object;
.source "ActivityFamilyHealthBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnScan:Landroid/widget/Button;

.field public final familyRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final invitedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

.field public final layoutFamily:Landroid/widget/LinearLayout;

.field public final layoutInvited:Landroid/widget/LinearLayout;

.field public final layoutNotData:Landroid/widget/RelativeLayout;

.field public final layoutTips:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvInvited:Landroid/widget/TextView;

.field public final tvMore:Landroid/widget/TextView;

.field public final tvMore3:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;

.field public final tvTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 72
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->btnScan:Landroid/widget/Button;

    .line 73
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->familyRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->invitedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 76
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->layoutFamily:Landroid/widget/LinearLayout;

    .line 77
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->layoutInvited:Landroid/widget/LinearLayout;

    .line 78
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->layoutNotData:Landroid/widget/RelativeLayout;

    .line 79
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->layoutTips:Landroid/widget/LinearLayout;

    .line 80
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->tvInvited:Landroid/widget/TextView;

    .line 81
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->tvMore:Landroid/widget/TextView;

    .line 82
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->tvMore3:Landroid/widget/TextView;

    .line 83
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->tvTag:Landroid/widget/TextView;

    .line 84
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->tvTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f0900b1

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_aa

    const v1, 0x7f090181

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_aa

    const v1, 0x7f090244

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_aa

    const v1, 0x7f090301

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v8, :cond_aa

    const v1, 0x7f090306

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_aa

    const v1, 0x7f09030d

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_aa

    const v1, 0x7f090319

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_aa

    const v1, 0x7f09031e

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_aa

    const v1, 0x7f090674

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_aa

    const v1, 0x7f09068b

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_aa

    const v1, 0x7f09068c

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_aa

    const v1, 0x7f0906e6

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_aa

    const v1, 0x7f0906f5

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_aa

    .line 192
    new-instance v1, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 196
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;
    .registers 5

    const v0, 0x7f0c0052

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityFamilyHealthBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
