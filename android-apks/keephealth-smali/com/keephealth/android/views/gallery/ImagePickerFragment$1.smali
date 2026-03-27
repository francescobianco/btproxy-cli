.class Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;
.super Ljava/lang/Object;
.source "ImagePickerFragment.java"

# interfaces
.implements Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImagePickerFragment;->showPopupFolderList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageArrow:Landroid/widget/ImageView;

    const v1, 0x7f0d0066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onSelect(Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;Lcom/keephealth/android/views/gallery/bean/Folder;)V
    .registers 5

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->addImagesToAdapter(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$100(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Ljava/util/ArrayList;)V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mContentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 281
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->dismiss()V

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    iget-object p1, p1, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mTextFolder:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Folder;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShow()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageArrow:Landroid/widget/ImageView;

    const v1, 0x7f0d0067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
