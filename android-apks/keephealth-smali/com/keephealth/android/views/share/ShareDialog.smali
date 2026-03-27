.class public Lcom/keephealth/android/views/share/ShareDialog;
.super Landroid/app/Dialog;
.source "ShareDialog.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mListener:Lcom/keephealth/android/views/share/OnShareSelectListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public shareHelper:Lcom/keephealth/android/views/share/ShareHelper;

.field private shareItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/share/ShareItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f11031a

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/share/ShareDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    const p2, 0x7f11031a

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/share/ShareDialog;->shareItems:Ljava/util/List;

    .line 42
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/share/ShareDialog;->init(Landroid/app/Activity;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareDialog;->shareItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .registers 7

    .line 60
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    const v0, 0x7f0c00ee

    .line 61
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/share/ShareDialog;->setContentView(I)V

    .line 62
    iput-object p0, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 64
    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f090632

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/share/ShareDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/share/ShareDialog$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/share/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0903dc

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/views/share/ShareDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareDialog;->shareItems:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/views/share/ShareItem;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100509

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    const v4, 0x7f0d0258

    invoke-direct {v1, v4, v2, v3}, Lcom/keephealth/android/views/share/ShareItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Lcom/keephealth/android/views/share/ShareLayoutAdapter;

    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareDialog;->shareItems:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/keephealth/android/views/share/ShareLayoutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 110
    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/share/ShareLayoutAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method synthetic lambda$init$0$com-keephealth-android-views-share-ShareDialog(Landroid/view/View;)V
    .registers 2

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 3

    .line 116
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareDialog;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 117
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 119
    :cond_7
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareDialog;->shareItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/share/ShareItem;

    .line 120
    iget-object p2, p0, Lcom/keephealth/android/views/share/ShareDialog;->mListener:Lcom/keephealth/android/views/share/OnShareSelectListener;

    invoke-virtual {p1}, Lcom/keephealth/android/views/share/ShareItem;->getIconTag()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/keephealth/android/views/share/OnShareSelectListener;->onShareSelect(I)V

    return-void
.end method

.method public setListener(Lcom/keephealth/android/views/share/OnShareSelectListener;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareDialog;->mListener:Lcom/keephealth/android/views/share/OnShareSelectListener;

    return-void
.end method
