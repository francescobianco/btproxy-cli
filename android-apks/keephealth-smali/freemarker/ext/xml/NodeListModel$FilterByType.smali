.class Lfreemarker/ext/xml/NodeListModel$FilterByType;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/xml/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterByType"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/xml/NodeListModel;


# direct methods
.method private constructor <init>(Lfreemarker/ext/xml/NodeListModel;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lfreemarker/ext/xml/NodeListModel$FilterByType;->this$0:Lfreemarker/ext/xml/NodeListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/xml/NodeListModel;Lfreemarker/ext/xml/NodeListModel$1;)V
    .registers 3

    .line 454
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/NodeListModel$FilterByType;-><init>(Lfreemarker/ext/xml/NodeListModel;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 6

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 460
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 461
    iget-object v3, p0, Lfreemarker/ext/xml/NodeListModel$FilterByType;->this$0:Lfreemarker/ext/xml/NodeListModel;

    # getter for: Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;
    invoke-static {v3}, Lfreemarker/ext/xml/NodeListModel;->access$100(Lfreemarker/ext/xml/NodeListModel;)Lfreemarker/ext/xml/Navigator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfreemarker/ext/xml/Navigator;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 462
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 465
    :cond_27
    iget-object p1, p0, Lfreemarker/ext/xml/NodeListModel$FilterByType;->this$0:Lfreemarker/ext/xml/NodeListModel;

    # invokes: Lfreemarker/ext/xml/NodeListModel;->deriveModel(Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;
    invoke-static {p1, v0}, Lfreemarker/ext/xml/NodeListModel;->access$200(Lfreemarker/ext/xml/NodeListModel;Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;

    move-result-object p1

    return-object p1
.end method
