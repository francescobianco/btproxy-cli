.class Lfreemarker/core/BodyInstruction$Context;
.super Ljava/lang/Object;
.source "BodyInstruction.java"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BodyInstruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Context"
.end annotation


# instance fields
.field bodyVars:Lfreemarker/core/Environment$Namespace;

.field invokingMacroContext:Lfreemarker/core/Macro$Context;

.field final synthetic this$0:Lfreemarker/core/BodyInstruction;


# direct methods
.method constructor <init>(Lfreemarker/core/BodyInstruction;Lfreemarker/core/Environment;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lfreemarker/core/BodyInstruction$Context;->this$0:Lfreemarker/core/BodyInstruction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p2}, Lfreemarker/core/Environment;->getCurrentMacroContext()Lfreemarker/core/Macro$Context;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/BodyInstruction$Context;->invokingMacroContext:Lfreemarker/core/Macro$Context;

    .line 128
    iget-object v0, v0, Lfreemarker/core/Macro$Context;->nestedContentParameterNames:Ljava/util/List;

    .line 129
    # getter for: Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;
    invoke-static {p1}, Lfreemarker/core/BodyInstruction;->access$000(Lfreemarker/core/BodyInstruction;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_65

    const/4 v1, 0x0

    .line 130
    :goto_14
    # getter for: Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;
    invoke-static {p1}, Lfreemarker/core/BodyInstruction;->access$000(Lfreemarker/core/BodyInstruction;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 131
    # getter for: Lfreemarker/core/BodyInstruction;->bodyParameters:Ljava/util/List;
    invoke-static {p1}, Lfreemarker/core/BodyInstruction;->access$000(Lfreemarker/core/BodyInstruction;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/Expression;

    .line 132
    invoke-virtual {v2, p2}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-eqz v0, :cond_62

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_62

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lfreemarker/core/BodyInstruction$Context;->bodyVars:Lfreemarker/core/Environment$Namespace;

    if-nez v4, :cond_48

    .line 136
    new-instance v4, Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, p2}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;)V

    iput-object v4, p0, Lfreemarker/core/BodyInstruction$Context;->bodyVars:Lfreemarker/core/Environment$Namespace;

    .line 138
    :cond_48
    iget-object v4, p0, Lfreemarker/core/BodyInstruction$Context;->bodyVars:Lfreemarker/core/Environment$Namespace;

    if-eqz v2, :cond_4d

    goto :goto_5f

    .line 142
    :cond_4d
    invoke-virtual {p1}, Lfreemarker/core/BodyInstruction;->getTemplate()Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/Configuration;->getFallbackOnNullLoopVariable()Z

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x0

    goto :goto_5f

    :cond_5d
    sget-object v2, Lfreemarker/core/NullTemplateModel;->INSTANCE:Lfreemarker/core/NullTemplateModel;

    .line 138
    :goto_5f
    invoke-virtual {v4, v3, v2}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_65
    return-void
.end method


# virtual methods
.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lfreemarker/core/BodyInstruction$Context;->bodyVars:Lfreemarker/core/Environment$Namespace;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .registers 2

    .line 154
    iget-object v0, p0, Lfreemarker/core/BodyInstruction$Context;->invokingMacroContext:Lfreemarker/core/Macro$Context;

    iget-object v0, v0, Lfreemarker/core/Macro$Context;->nestedContentParameterNames:Ljava/util/List;

    if-nez v0, :cond_8

    .line 155
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_8
    return-object v0
.end method
