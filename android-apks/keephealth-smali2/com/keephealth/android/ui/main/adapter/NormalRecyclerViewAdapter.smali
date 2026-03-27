.class public Lcom/keephealth/android/ui/main/adapter/NormalRecyclerViewAdapter;
.super Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;
.source "NormalRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter<",
        "Lcom/keephealth/android/ui/main/bean/MainMenuBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const v0, 0x7f0c0123

    .line 18
    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method


# virtual methods
.method public fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILcom/keephealth/android/ui/main/bean/MainMenuBean;)V
    .registers 11

    const p2, 0x7f090684

    .line 27
    iget-object v0, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const p2, 0x7f0902b6

    .line 28
    iget v0, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->res:I

    invoke-virtual {p1, p2, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 29
    iget p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->type:I

    const/16 v0, 0x8

    const v1, 0x7f09063c

    const v2, 0x7f090706

    const v3, 0x7f09063e

    const v4, 0x7f090705

    const v5, 0x7f09063d

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_a2

    goto/16 :goto_a0

    :pswitch_29
    const/4 p2, 0x4

    .line 73
    invoke-virtual {p1, v1, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 74
    invoke-virtual {p1, v5, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 75
    invoke-virtual {p1, v4, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 76
    invoke-virtual {p1, v3, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 77
    invoke-virtual {p1, v2, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_a0

    .line 43
    :pswitch_3a
    invoke-virtual {p1, v1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 44
    invoke-virtual {p1, v5, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 45
    invoke-virtual {p1, v4, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 46
    invoke-virtual {p1, v3, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 47
    invoke-virtual {p1, v2, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 48
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->data1:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 49
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->unit1:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 50
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->data2:Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 51
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->unit2:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_a0

    .line 31
    :pswitch_5e
    invoke-virtual {p1, v1, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 32
    invoke-virtual {p1, v5, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 33
    invoke-virtual {p1, v4, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 34
    invoke-virtual {p1, v3, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 35
    invoke-virtual {p1, v2, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 36
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->label:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 37
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->data1:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 38
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->unit1:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 39
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->data2:Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 40
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->unit2:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_a0

    .line 59
    :pswitch_87
    invoke-virtual {p1, v1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 60
    invoke-virtual {p1, v5, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 61
    invoke-virtual {p1, v4, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 62
    invoke-virtual {p1, v3, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 63
    invoke-virtual {p1, v2, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 64
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->data1:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 65
    iget-object p2, p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;->unit1:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_87
        :pswitch_5e
        :pswitch_87
        :pswitch_3a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_87
        :pswitch_87
        :pswitch_29
        :pswitch_87
        :pswitch_29
        :pswitch_87
        :pswitch_29
    .end packed-switch
.end method

.method public bridge synthetic fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILjava/lang/Object;)V
    .registers 4

    .line 16
    check-cast p3, Lcom/keephealth/android/ui/main/bean/MainMenuBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/NormalRecyclerViewAdapter;->fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILcom/keephealth/android/ui/main/bean/MainMenuBean;)V

    return-void
.end method

.method public setItemChildListener(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;I)V
    .registers 3

    return-void
.end method
