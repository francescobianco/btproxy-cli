.class public Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "DeviceSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;",
        "Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isSettingVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->isSettingVisible:Z

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-DeviceSettingAdapter(ILandroid/view/View;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0117

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 23
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;I)V
    .registers 6

    .line 39
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->getTextView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->getType()I

    move-result p2

    packed-switch p2, :pswitch_data_f6

    goto/16 :goto_c9

    .line 75
    :pswitch_12
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0096

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c9

    .line 72
    :pswitch_22
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0099

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c9

    .line 69
    :pswitch_32
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d00a2

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c9

    .line 66
    :pswitch_42
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d008f

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c9

    .line 63
    :pswitch_52
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d00ed

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c9

    .line 60
    :pswitch_61
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0090

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c9

    .line 57
    :pswitch_70
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d009b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c9

    .line 54
    :pswitch_7f
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d009a

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c9

    .line 51
    :pswitch_8e
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d008c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c9

    .line 48
    :pswitch_9d
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d009d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c9

    .line 45
    :pswitch_ac
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d00a0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c9

    .line 42
    :pswitch_bb
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->ivStart:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d009f

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :goto_c9
    iget-boolean p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->isSettingVisible:Z

    if-eqz p2, :cond_dc

    .line 81
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f060113

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_ea

    .line 83
    :cond_dc
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->context:Landroid/content/Context;

    const v1, 0x7f060137

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_ea
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_52
        :pswitch_42
        :pswitch_32
        :pswitch_22
        :pswitch_12
    .end packed-switch
.end method

.method public setSettingVisible(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;->isSettingVisible:Z

    return-void
.end method
