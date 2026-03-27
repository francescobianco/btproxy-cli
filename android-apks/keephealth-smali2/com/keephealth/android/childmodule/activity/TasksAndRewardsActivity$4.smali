.class Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;
.super Ljava/lang/Object;
.source "TasksAndRewardsActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    .line 162
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    const v0, 0x7f0c0137

    .line 163
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 165
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_4b

    const v1, 0x7f0905e1

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    const v2, 0x7f060063

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->itemStr:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setCurrentItem(I)V

    :cond_4b
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    .line 178
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    const v0, 0x7f0c0137

    .line 179
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 181
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_3e

    const v1, 0x7f0905e1

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    const v2, 0x7f060137

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->itemStr:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    return-void
.end method
