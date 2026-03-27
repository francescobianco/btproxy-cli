.class public Lfreemarker/core/FreeMarkerTree;
.super Ljavax/swing/JTree;
.source "FreeMarkerTree.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lfreemarker/template/Template;)V
    .registers 2

    .line 36
    invoke-virtual {p1}, Lfreemarker/template/Template;->getRootTreeNode()Lfreemarker/core/TemplateElement;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeNode;)V

    return-void
.end method


# virtual methods
.method public convertValueToText(Ljava/lang/Object;ZZZIZ)Ljava/lang/String;
    .registers 7

    .line 48
    instance-of p2, p1, Lfreemarker/core/TemplateElement;

    if-eqz p2, :cond_b

    .line 49
    check-cast p1, Lfreemarker/core/TemplateElement;

    invoke-virtual {p1}, Lfreemarker/core/TemplateElement;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setTemplate(Lfreemarker/template/Template;)V
    .registers 3

    .line 40
    new-instance v0, Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {p1}, Lfreemarker/template/Template;->getRootTreeNode()Lfreemarker/core/TemplateElement;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    invoke-virtual {p0, v0}, Lfreemarker/core/FreeMarkerTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 41
    invoke-virtual {p0}, Lfreemarker/core/FreeMarkerTree;->invalidate()V

    return-void
.end method
