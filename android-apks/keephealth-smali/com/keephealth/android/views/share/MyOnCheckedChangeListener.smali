.class public Lcom/keephealth/android/views/share/MyOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "MyOnCheckedChangeListener.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field listener:Lcom/keephealth/android/views/share/OnShareSelectListener;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/share/OnShareSelectListener;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/keephealth/android/views/share/MyOnCheckedChangeListener;->listener:Lcom/keephealth/android/views/share/OnShareSelectListener;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 17
    iget-object p2, p0, Lcom/keephealth/android/views/share/MyOnCheckedChangeListener;->listener:Lcom/keephealth/android/views/share/OnShareSelectListener;

    if-nez p2, :cond_f

    return-void

    .line 20
    :cond_f
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/keephealth/android/views/share/OnShareSelectListener;->onShareSelect(I)V

    return-void
.end method
