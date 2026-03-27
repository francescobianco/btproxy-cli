.class public final Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;
.super Ljava/lang/Object;
.source "ActivityChooseCountryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSearch:Landroid/widget/Button;

.field public final countryLvcountry:Landroid/widget/ListView;

.field public final dialog:Landroid/widget/TextView;

.field public final etSearch:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sidrbar:Lcom/keephealth/android/views/SideBar;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/EditText;Lcom/keephealth/android/views/SideBar;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->btnSearch:Landroid/widget/Button;

    .line 46
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->countryLvcountry:Landroid/widget/ListView;

    .line 47
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->dialog:Landroid/widget/TextView;

    .line 48
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->etSearch:Landroid/widget/EditText;

    .line 49
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->sidrbar:Lcom/keephealth/android/views/SideBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;
    .registers 10

    const v0, 0x7f0900c7

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_46

    const v0, 0x7f0900fd

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ListView;

    if-eqz v5, :cond_46

    const v0, 0x7f090134

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_46

    const v0, 0x7f090177

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_46

    const v0, 0x7f09056f

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/keephealth/android/views/SideBar;

    if-eqz v8, :cond_46

    .line 109
    new-instance v0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/EditText;Lcom/keephealth/android/views/SideBar;)V

    return-object v0

    .line 112
    :cond_46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;
    .registers 5

    const v0, 0x7f0c0029

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityChooseCountryBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
