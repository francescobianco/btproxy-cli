.class Lfreemarker/template/utility/DOMNodeModel$AncestorByName;
.super Ljava/lang/Object;
.source "DOMNodeModel.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/DOMNodeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AncestorByName"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/utility/DOMNodeModel;


# direct methods
.method constructor <init>(Lfreemarker/template/utility/DOMNodeModel;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lfreemarker/template/utility/DOMNodeModel$AncestorByName;->this$0:Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x0

    .line 219
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel$AncestorByName;->this$0:Lfreemarker/template/utility/DOMNodeModel;

    const-string v1, "parent"

    invoke-virtual {v0, v1}, Lfreemarker/template/utility/DOMNodeModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/DOMNodeModel;

    :goto_18
    if-eqz v0, :cond_2c

    .line 222
    invoke-virtual {v0}, Lfreemarker/template/utility/DOMNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    return-object v0

    .line 225
    :cond_25
    invoke-virtual {v0, v1}, Lfreemarker/template/utility/DOMNodeModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/DOMNodeModel;

    goto :goto_18

    :cond_2c
    const/4 p1, 0x0

    return-object p1

    .line 217
    :cond_2e
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "Expecting exactly one string argument here"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
