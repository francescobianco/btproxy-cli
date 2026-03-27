.class Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/MusicControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicControlAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private musicPlayDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/MusicPlayData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/MusicPlayData;",
            ">;)V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->this$0:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->context:Landroid/content/Context;

    .line 226
    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->musicPlayDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->musicPlayDatas:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->musicPlayDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_36

    .line 252
    new-instance p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;)V

    .line 253
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0c017e

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090433

    .line 254
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v0, 0x7f090434

    .line 255
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;->playName:Landroid/widget/TextView;

    const v0, 0x7f09055c

    .line 256
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;->selectImg:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3f

    .line 259
    :cond_36
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 261
    :goto_3f
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/MusicPlayData;

    .line 262
    iget-object v1, p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v1, p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;->playName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->this$0:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectItem:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->access$000(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;)I

    move-result v0

    if-ne v0, p1, :cond_68

    .line 266
    iget-object p1, p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;->selectImg:Landroid/widget/ImageView;

    const p2, 0x7f0d018b

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_70

    .line 268
    :cond_68
    iget-object p1, p2, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter$ViewHolder;->selectImg:Landroid/widget/ImageView;

    const p2, 0x7f0d018c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_70
    return-object p3
.end method

.method public setSelectItem(I)V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity$MusicControlAdapter;->this$0:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->selectItem:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->access$002(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;I)I

    return-void
.end method
