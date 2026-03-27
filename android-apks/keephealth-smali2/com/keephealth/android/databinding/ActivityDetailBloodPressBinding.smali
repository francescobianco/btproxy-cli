.class public final Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;
.super Ljava/lang/Object;
.source "ActivityDetailBloodPressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAvgBloodValue:Landroid/widget/TextView;

.field public final tvHrValue:Landroid/widget/TextView;

.field public final tvRangBloodValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/charts/CandleStickChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 45
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    .line 46
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->tvAvgBloodValue:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->tvHrValue:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->tvRangBloodValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;
    .registers 10

    const v0, 0x7f090090

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v4, :cond_46

    const v0, 0x7f090091

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/github/mikephil/charting/charts/CandleStickChart;

    if-eqz v5, :cond_46

    const v0, 0x7f09061e

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_46

    const v0, 0x7f09066f

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_46

    const v0, 0x7f0906a5

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_46

    .line 108
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;-><init>(Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/charts/CandleStickChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 111
    :cond_46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;
    .registers 5

    const v0, 0x7f0c0035

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPressBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
