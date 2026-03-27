.class public Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "DeviceLanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/LanguageBean;",
        "Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private selectType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/LanguageBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-DeviceLanguageAdapter(ILandroid/view/View;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;

    invoke-direct {v0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 22
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;

    check-cast p2, Lcom/keephealth/android/model/bean/LanguageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;Lcom/keephealth/android/model/bean/LanguageBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;Lcom/keephealth/android/model/bean/LanguageBean;I)V
    .registers 6

    .line 35
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/LanguageBean;->getType()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->selectType:I

    if-ne v0, v1, :cond_f

    .line 36
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->ivSelect:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 38
    :cond_f
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->ivSelect:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_16
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/LanguageBean;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_194

    .line 96
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/LanguageBean;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 93
    :pswitch_28
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100359

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 90
    :pswitch_3c
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 87
    :pswitch_50
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 84
    :pswitch_64
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 81
    :pswitch_78
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 78
    :pswitch_8c
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 75
    :pswitch_a0
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 72
    :pswitch_b4
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 69
    :pswitch_c8
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 66
    :pswitch_dc
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 63
    :pswitch_f0
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_188

    .line 60
    :pswitch_104
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_188

    .line 57
    :pswitch_117
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100366

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_188

    .line 54
    :pswitch_12a
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_188

    .line 51
    :pswitch_13d
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_188

    .line 48
    :pswitch_150
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_188

    .line 45
    :pswitch_163
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_188

    .line 42
    :pswitch_176
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10035b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_188
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_176
        :pswitch_163
        :pswitch_150
        :pswitch_13d
        :pswitch_12a
        :pswitch_117
        :pswitch_104
        :pswitch_f0
        :pswitch_dc
        :pswitch_c8
        :pswitch_b4
        :pswitch_a0
        :pswitch_8c
        :pswitch_78
        :pswitch_64
        :pswitch_50
        :pswitch_3c
        :pswitch_28
    .end packed-switch
.end method

.method public setType(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->selectType:I

    return-void
.end method
