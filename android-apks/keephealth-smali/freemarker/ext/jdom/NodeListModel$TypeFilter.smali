.class final Lfreemarker/ext/jdom/NodeListModel$TypeFilter;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TypeFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/jdom/NodeListModel;


# direct methods
.method private constructor <init>(Lfreemarker/ext/jdom/NodeListModel;)V
    .registers 2

    .line 1086
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel$TypeFilter;->this$0:Lfreemarker/ext/jdom/NodeListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 3

    .line 1086
    invoke-direct {p0, p1}, Lfreemarker/ext/jdom/NodeListModel$TypeFilter;-><init>(Lfreemarker/ext/jdom/NodeListModel;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-eqz p1, :cond_f8

    .line 1093
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f8

    const/4 v0, 0x0

    .line 1095
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x21

    .line 1096
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    const/16 v4, 0x61

    .line 1100
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v2, :cond_26

    move v4, v3

    goto :goto_27

    :cond_26
    move v4, v0

    :goto_27
    if-eq v1, v4, :cond_2b

    move v4, v3

    goto :goto_2c

    :cond_2b
    move v4, v0

    :goto_2c
    const/16 v5, 0x63

    .line 1101
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_36

    move v5, v3

    goto :goto_37

    :cond_36
    move v5, v0

    :goto_37
    if-eq v1, v5, :cond_3b

    move v5, v3

    goto :goto_3c

    :cond_3b
    move v5, v0

    :goto_3c
    const/16 v6, 0x64

    .line 1102
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v2, :cond_46

    move v6, v3

    goto :goto_47

    :cond_46
    move v6, v0

    :goto_47
    if-eq v1, v6, :cond_4b

    move v6, v3

    goto :goto_4c

    :cond_4b
    move v6, v0

    :goto_4c
    const/16 v7, 0x65

    .line 1103
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v2, :cond_56

    move v7, v3

    goto :goto_57

    :cond_56
    move v7, v0

    :goto_57
    if-eq v1, v7, :cond_5b

    move v7, v3

    goto :goto_5c

    :cond_5b
    move v7, v0

    :goto_5c
    const/16 v8, 0x6e

    .line 1104
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v2, :cond_66

    move v8, v3

    goto :goto_67

    :cond_66
    move v8, v0

    :goto_67
    if-eq v1, v8, :cond_6b

    move v8, v3

    goto :goto_6c

    :cond_6b
    move v8, v0

    :goto_6c
    const/16 v9, 0x70

    .line 1105
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v2, :cond_76

    move v9, v3

    goto :goto_77

    :cond_76
    move v9, v0

    :goto_77
    if-eq v1, v9, :cond_7b

    move v9, v3

    goto :goto_7c

    :cond_7b
    move v9, v0

    :goto_7c
    const/16 v10, 0x74

    .line 1106
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ne v10, v2, :cond_86

    move v10, v3

    goto :goto_87

    :cond_86
    move v10, v0

    :goto_87
    if-eq v1, v10, :cond_8b

    move v10, v3

    goto :goto_8c

    :cond_8b
    move v10, v0

    :goto_8c
    const/16 v11, 0x78

    .line 1107
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v2, :cond_96

    move p1, v3

    goto :goto_97

    :cond_96
    move p1, v0

    :goto_97
    if-eq v1, p1, :cond_9a

    move v0, v3

    .line 1109
    :cond_9a
    new-instance p1, Ljava/util/LinkedList;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel$TypeFilter;->this$0:Lfreemarker/ext/jdom/NodeListModel;

    # getter for: Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;
    invoke-static {v1}, Lfreemarker/ext/jdom/NodeListModel;->access$800(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1110
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1111
    :cond_a9
    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 1112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1113
    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_b9

    if-nez v7, :cond_e9

    :cond_b9
    instance-of v3, v2, Lorg/jdom/Attribute;

    if-eqz v3, :cond_bf

    if-nez v4, :cond_e9

    :cond_bf
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_c5

    if-nez v0, :cond_e9

    :cond_c5
    instance-of v3, v2, Lorg/jdom/Text;

    if-eqz v3, :cond_cb

    if-nez v0, :cond_e9

    :cond_cb
    instance-of v3, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v3, :cond_d1

    if-nez v9, :cond_e9

    :cond_d1
    instance-of v3, v2, Lorg/jdom/Comment;

    if-eqz v3, :cond_d7

    if-nez v5, :cond_e9

    :cond_d7
    instance-of v3, v2, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_dd

    if-nez v8, :cond_e9

    :cond_dd
    instance-of v3, v2, Lorg/jdom/Document;

    if-eqz v3, :cond_e3

    if-nez v6, :cond_e9

    :cond_e3
    instance-of v2, v2, Lorg/jdom/DocType;

    if-eqz v2, :cond_a9

    if-eqz v10, :cond_a9

    .line 1122
    :cond_e9
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a9

    .line 1124
    :cond_ed
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel$TypeFilter;->this$0:Lfreemarker/ext/jdom/NodeListModel;

    # getter for: Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;
    invoke-static {v0}, Lfreemarker/ext/jdom/NodeListModel;->access$900(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/Map;

    move-result-object v0

    # invokes: Lfreemarker/ext/jdom/NodeListModel;->createNodeListModel(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;
    invoke-static {p1, v0}, Lfreemarker/ext/jdom/NodeListModel;->access$2600(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p1

    return-object p1

    .line 1094
    :cond_f8
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "_type expects exactly one argument"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
