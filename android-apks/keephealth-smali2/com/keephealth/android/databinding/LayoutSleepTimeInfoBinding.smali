.class public final Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;
.super Ljava/lang/Object;
.source "LayoutSleepTimeInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final deepBg:Landroid/view/View;

.field public final llSleepDeep:Landroid/widget/LinearLayout;

.field public final llSleepLight:Landroid/widget/LinearLayout;

.field public final llSleepStart:Landroid/widget/LinearLayout;

.field public final llSleepWake:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;

.field public final tvDeepSleep:Landroid/widget/TextView;

.field public final tvDeepSleepH:Landroid/widget/TextView;

.field public final tvDeepSleepM:Landroid/widget/TextView;

.field public final tvLightSleepH:Landroid/widget/TextView;

.field public final tvLightSleepM:Landroid/widget/TextView;

.field public final tvStartSleepH:Landroid/widget/TextView;

.field public final tvStartSleepM:Landroid/widget/TextView;

.field public final tvTotal:Landroid/widget/TextView;

.field public final tvWakeSleepH:Landroid/widget/TextView;

.field public final tvWakeSleepM:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/SleepBarDetailChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 20

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->deepBg:Landroid/view/View;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->llSleepDeep:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->llSleepLight:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->llSleepStart:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->llSleepWake:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;

    move-object v1, p8

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvDeepSleep:Landroid/widget/TextView;

    move-object v1, p9

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvDeepSleepH:Landroid/widget/TextView;

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvDeepSleepM:Landroid/widget/TextView;

    move-object v1, p11

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvLightSleepH:Landroid/widget/TextView;

    move-object v1, p12

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvLightSleepM:Landroid/widget/TextView;

    move-object v1, p13

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvStartSleepH:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvStartSleepM:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvTotal:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvWakeSleepH:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->tvWakeSleepM:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;
    .registers 21

    move-object/from16 v0, p0

    const v1, 0x7f090124

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_cd

    const v1, 0x7f0903c6

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_cd

    const v1, 0x7f0903c7

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_cd

    const v1, 0x7f0903c8

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_cd

    const v1, 0x7f0903c9

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_cd

    const v1, 0x7f09057a

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/keephealth/android/views/SleepBarDetailChart;

    if-eqz v9, :cond_cd

    const v1, 0x7f09064a

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_cd

    const v1, 0x7f09064b

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_cd

    const v1, 0x7f09064c

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_cd

    const v1, 0x7f09067b

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_cd

    const v1, 0x7f09067c

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_cd

    const v1, 0x7f0906d9

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_cd

    const v1, 0x7f0906da

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_cd

    const v1, 0x7f0906ff

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_cd

    const v1, 0x7f090710

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_cd

    const v1, 0x7f090711

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_cd

    .line 221
    new-instance v1, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v19}, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/SleepBarDetailChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 226
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;
    .registers 5

    const v0, 0x7f0c014d

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/databinding/LayoutSleepTimeInfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
