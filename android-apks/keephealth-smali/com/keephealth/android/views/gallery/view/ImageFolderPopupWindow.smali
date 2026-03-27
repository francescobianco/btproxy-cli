.class public Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ImageFolderPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

.field private mCallback:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;

.field private mFolderView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;)V
    .registers 6

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 35
    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mCallback:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;

    const p2, 0x7f110319

    .line 38
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->setAnimationStyle(I)V

    .line 39
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 40
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->setOutsideTouchable(Z)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance v0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$1;-><init>(Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v0, 0x7f090538

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mFolderView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public onItemClick(IJ)V
    .registers 4

    .line 80
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mCallback:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;

    if-eqz p2, :cond_f

    .line 82
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    invoke-virtual {p3, p1}, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/gallery/bean/Folder;

    invoke-interface {p2, p0, p1}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;->onSelect(Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;Lcom/keephealth/android/views/gallery/bean/Folder;)V

    :cond_f
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 66
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mCallback:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;

    if-eqz p1, :cond_7

    .line 68
    invoke-interface {p1}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;->onShow()V

    :cond_7
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mCallback:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;

    if-eqz p1, :cond_7

    .line 75
    invoke-interface {p1}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;->onDismiss()V

    :cond_7
    return-void
.end method

.method public setAdapter(Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;)V
    .registers 3

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mFolderView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->mAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;->setOnItemClickListener(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;)V

    return-void
.end method
