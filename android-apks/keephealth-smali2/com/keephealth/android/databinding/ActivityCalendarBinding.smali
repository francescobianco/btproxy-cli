.class public final Lcom/keephealth/android/databinding/ActivityCalendarBinding;
.super Ljava/lang/Object;
.source "ActivityCalendarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final calendarView:Lcom/ldf/calendar/view/MonthPager;

.field public final layoutLeft:Landroid/widget/LinearLayout;

.field public final layoutMid:Landroid/widget/LinearLayout;

.field public final layoutParent:Landroid/widget/RelativeLayout;

.field public final layoutRight:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvDate1:Landroid/widget/TextView;

.field public final tvDate2:Landroid/widget/TextView;

.field public final tvDate3:Landroid/widget/TextView;

.field public final tvDate4:Landroid/widget/TextView;

.field public final tvDate5:Landroid/widget/TextView;

.field public final tvDate6:Landroid/widget/TextView;

.field public final tvDate7:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/ldf/calendar/view/MonthPager;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 70
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->calendarView:Lcom/ldf/calendar/view/MonthPager;

    .line 71
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->layoutLeft:Landroid/widget/LinearLayout;

    .line 72
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->layoutMid:Landroid/widget/LinearLayout;

    .line 73
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->layoutParent:Landroid/widget/RelativeLayout;

    .line 74
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->layoutRight:Landroid/widget/LinearLayout;

    .line 75
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate:Landroid/widget/TextView;

    .line 76
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate1:Landroid/widget/TextView;

    .line 77
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate2:Landroid/widget/TextView;

    .line 78
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate3:Landroid/widget/TextView;

    .line 79
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate4:Landroid/widget/TextView;

    .line 80
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate5:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate6:Landroid/widget/TextView;

    .line 82
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->tvDate7:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCalendarBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f0900d0

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/ldf/calendar/view/MonthPager;

    if-eqz v5, :cond_aa

    const v1, 0x7f090324

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_aa

    const v1, 0x7f090326

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_aa

    const v1, 0x7f090327

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_aa

    const v1, 0x7f090328

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_aa

    const v1, 0x7f090640

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_aa

    const v1, 0x7f090641

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_aa

    const v1, 0x7f090642

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_aa

    const v1, 0x7f090643

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_aa

    const v1, 0x7f090644

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_aa

    const v1, 0x7f090645

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_aa

    const v1, 0x7f090646

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_aa

    const v1, 0x7f090647

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_aa

    .line 190
    new-instance v1, Lcom/keephealth/android/databinding/ActivityCalendarBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ActivityCalendarBinding;-><init>(Landroid/widget/LinearLayout;Lcom/ldf/calendar/view/MonthPager;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 194
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCalendarBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCalendarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCalendarBinding;
    .registers 5

    const v0, 0x7f0c0026

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCalendarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityCalendarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
