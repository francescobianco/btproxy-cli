.class Lcom/keephealth/android/childmodule/activity/CourseActivity$2;
.super Ljava/lang/Object;
.source "CourseActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CourseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CourseActivity;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

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

    .line 127
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    const v0, 0x7f0c0138

    .line 128
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 130
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_4f

    const v1, 0x7f0905e1

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    const v2, 0x7f060063

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    if-eqz v0, :cond_4f

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CourseActivity;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setCurrentItem(I)V

    .line 141
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tab.getPosition:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "courseviewmode3l"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    .line 147
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    const v0, 0x7f0c0138

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 150
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_3e

    const v1, 0x7f0905e1

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    const v2, 0x7f060113

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CourseActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CourseActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/CourseActivity;->itemStr:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    return-void
.end method
