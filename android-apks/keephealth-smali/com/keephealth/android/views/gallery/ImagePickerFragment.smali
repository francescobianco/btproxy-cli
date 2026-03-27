.class public Lcom/keephealth/android/views/gallery/ImagePickerFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImagePickerFragment.java"

# interfaces
.implements Lcom/keephealth/android/views/gallery/Contract$View;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;
    }
.end annotation


# static fields
.field private static mOption:Lcom/keephealth/android/views/gallery/SelectOptions;


# instance fields
.field handler:Landroid/os/Handler;

.field mBtnBack:Landroid/widget/ImageButton;

.field private mCamImageName:Ljava/lang/String;

.field mContentView:Landroidx/recyclerview/widget/RecyclerView;

.field private mCursorLoader:Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;

.field private mFolderPopupWindow:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;

.field private mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

.field mImageArrow:Landroid/widget/ImageView;

.field private mImageFolderAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

.field private mPresenter:Lcom/keephealth/android/views/gallery/Contract$Presenter;

.field private mRootView:Landroid/view/View;

.field private mSelectedImage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/gallery/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field mTextDone:Landroid/widget/TextView;

.field mTextFolder:Landroid/widget/TextView;

.field mTextPreviewView:Landroid/widget/TextView;

.field mToolbar:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;-><init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCursorLoader:Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;

    .line 482
    new-instance v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment$2;-><init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Ljava/util/ArrayList;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->addImagesToAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400()Lcom/keephealth/android/views/gallery/SelectOptions;
    .registers 1

    .line 56
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    return-object v0
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageFolderAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleResult()V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/views/gallery/ImagePickerFragment;I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleSelectSizeChange(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    return-object p0
.end method

.method private addImagesToAdapter(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/views/gallery/bean/Image;",
            ">;)V"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    if-eqz v0, :cond_7

    .line 498
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->clear()V

    .line 500
    :cond_7
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz v0, :cond_16

    .line 501
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->isHasCam()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 502
    new-instance v0, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-direct {v0}, Lcom/keephealth/android/views/gallery/bean/Image;-><init>()V

    .line 506
    :cond_16
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment$3;-><init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 525
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleResult()V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 256
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz v0, :cond_4c

    .line 257
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->isCrop()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 258
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-static {p0, v0}, Lcom/keephealth/android/views/gallery/CropActivity;->show(Landroidx/fragment/app/Fragment;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    goto :goto_4c

    .line 264
    :cond_36
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getCallback()Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/Util;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Callback;->doSelected([Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private handleSelectChange(I)V
    .registers 7

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/gallery/bean/Image;

    if-nez v0, :cond_b

    return-void

    .line 230
    :cond_b
    sget-object v1, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz v1, :cond_73

    .line 231
    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_6b

    .line 233
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/bean/Image;->isSelect()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2b

    .line 234
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/gallery/bean/Image;->setSelect(Z)V

    .line 235
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->updateItem(I)V

    goto :goto_61

    .line 238
    :cond_2b
    iget-object v3, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_54

    .line 239
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u591a\u53ea\u80fd\u9009\u62e9 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f20\u7167\u7247"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_61

    .line 241
    :cond_54
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/gallery/bean/Image;->setSelect(Z)V

    .line 242
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->updateItem(I)V

    .line 246
    :goto_61
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleSelectSizeChange(I)V

    goto :goto_73

    .line 248
    :cond_6b
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleResult()V

    :cond_73
    :goto_73
    return-void
.end method

.method private handleSelectSizeChange(I)V
    .registers 5

    .line 215
    const-string v0, "\u5b8c\u6210"

    if-lez p1, :cond_25

    .line 216
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextPreviewView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextDone:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextDone:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s(%s)"

    invoke-static {v2, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 220
    :cond_25
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextPreviewView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextDone:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextDone:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_35
    return-void
.end method

.method private initData()V
    .registers 7

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mContentView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mContentView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/keephealth/android/views/gallery/adapter/SpaceGridItemDecoration;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/keephealth/android/views/gallery/adapter/SpaceGridItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 136
    new-instance v0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    .line 137
    sget-object v1, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_56

    .line 138
    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectCount()I

    move-result v1

    if-gt v1, v3, :cond_3a

    move v1, v3

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->setSingleSelect(Z)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectCount()I

    move-result v1

    if-ne v1, v3, :cond_52

    const/16 v1, 0x8

    goto :goto_53

    :cond_52
    move v1, v2

    :goto_53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_56
    new-instance v0, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageFolderAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mContentView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mContentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageAdapter:Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->setOnItemClickListener(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;)V

    .line 145
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz v0, :cond_b9

    .line 146
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectCount()I

    move-result v0

    if-le v0, v3, :cond_b9

    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 147
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8f
    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8f

    .line 150
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 151
    new-instance v5, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-direct {v5}, Lcom/keephealth/android/views/gallery/bean/Image;-><init>()V

    .line 152
    invoke-virtual {v5, v3}, Lcom/keephealth/android/views/gallery/bean/Image;->setSelect(Z)V

    .line 153
    invoke-virtual {v5, v4}, Lcom/keephealth/android/views/gallery/bean/Image;->setPath(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 160
    :cond_b9
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCursorLoader:Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;

    invoke-virtual {v0, v2, v1, v3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f06003b

    .line 117
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->setStatusBarColor(I)V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090536

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mContentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09073b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextFolder:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageArrow:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mBtnBack:Landroid/widget/ImageButton;

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextDone:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextPreviewView:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0905fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mToolbar:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mBtnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextDone:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextPreviewView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextFolder:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Lcom/keephealth/android/views/gallery/SelectOptions;)Lcom/keephealth/android/views/gallery/ImagePickerFragment;
    .registers 1

    .line 82
    sput-object p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 83
    new-instance p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;-><init>()V

    return-object p0
.end method

.method private showPopupFolderList()V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mFolderPopupWindow:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;

    if-nez v0, :cond_19

    .line 276
    new-instance v0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;-><init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;)V

    .line 295
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageFolderAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->setAdapter(Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;)V

    .line 296
    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mFolderPopupWindow:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;

    .line 298
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mFolderPopupWindow:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private toOpenCamera()V
    .registers 5

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/keephealth/android/views/gallery/util/Util;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 309
    invoke-static {}, Lcom/keephealth/android/views/gallery/util/Util;->getCameraPath()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1e

    .line 308
    :cond_1c
    const-string v0, ""

    .line 316
    :cond_1e
    :goto_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 317
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u65e0\u6cd5\u4fdd\u5b58\u7167\u7247\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 321
    :cond_33
    invoke-static {}, Lcom/keephealth/android/views/gallery/util/Util;->getSaveImageFullName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;

    .line 322
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.keephealthpro.android.provider"

    invoke-static {v2, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 334
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8d

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_2d

    const/4 p2, 0x4

    if-eq p1, p2, :cond_d

    goto/16 :goto_8d

    :cond_d
    if-nez p3, :cond_10

    return-void

    .line 359
    :cond_10
    sget-object p1, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz p1, :cond_25

    .line 360
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getCallback()Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/String;

    const-string v1, "crop_path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/gallery/SelectOptions$Callback;->doSelected([Ljava/lang/String;)V

    .line 362
    :cond_25
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_8d

    .line 348
    :cond_2d
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;

    if-nez p1, :cond_32

    return-void

    .line 349
    :cond_32
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/views/gallery/util/Util;->getCameraPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 350
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 351
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    sget-object p1, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz p1, :cond_86

    .line 353
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getCallback()Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/views/gallery/util/Util;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/gallery/SelectOptions$Callback;->doSelected([Ljava/lang/String;)V

    .line 355
    :cond_86
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/keephealth/android/views/gallery/Contract$Presenter;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mPresenter:Lcom/keephealth/android/views/gallery/Contract$Presenter;

    .line 89
    invoke-interface {v0, p0}, Lcom/keephealth/android/views/gallery/Contract$Presenter;->setDataView(Lcom/keephealth/android/views/gallery/Contract$View;)V

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCameraPermissionDenied()V
    .registers 1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mBtnBack:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_c

    .line 167
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_4b

    .line 168
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextDone:Landroid/widget/TextView;

    if-ne p1, v0, :cond_14

    .line 169
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleResult()V

    goto :goto_4b

    .line 170
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextPreviewView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3c

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4b

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;

    .line 173
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/Util;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectedImages([Ljava/lang/String;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 172
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;I)V

    goto :goto_4b

    .line 177
    :cond_3c
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    if-ne p1, v0, :cond_44

    .line 178
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->showPopupFolderList()V

    goto :goto_4b

    .line 179
    :cond_44
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextFolder:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4b

    .line 180
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->showPopupFolderList()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 96
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    if-nez p3, :cond_15

    const p3, 0x7f0c00af

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    .line 98
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->initView()V

    .line 99
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->initData()V

    goto :goto_22

    .line 101
    :cond_15
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_22

    .line 102
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 530
    sget-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 531
    sput-object v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 533
    :cond_7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(IJ)V
    .registers 4

    .line 186
    sget-object p2, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz p2, :cond_11

    .line 187
    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/SelectOptions;->isHasCam()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 197
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleSelectChange(I)V

    goto :goto_11

    .line 199
    :cond_e
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleSelectChange(I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onOpenCameraSuccess()V
    .registers 1

    .line 206
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->toOpenCamera()V

    return-void
.end method

.method public setStatusBarColor(I)V
    .registers 4

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 114
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method
