.class Lfreemarker/core/Environment$LocalContextWithNewLocal;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalContextWithNewLocal"
.end annotation


# instance fields
.field private final lambdaArgName:Ljava/lang/String;

.field private final lambdaArgValue:Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .registers 3

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p1, p0, Lfreemarker/core/Environment$LocalContextWithNewLocal;->lambdaArgName:Ljava/lang/String;

    .line 707
    iput-object p2, p0, Lfreemarker/core/Environment$LocalContextWithNewLocal;->lambdaArgValue:Lfreemarker/template/TemplateModel;

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

    .line 711
    iget-object v0, p0, Lfreemarker/core/Environment$LocalContextWithNewLocal;->lambdaArgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lfreemarker/core/Environment$LocalContextWithNewLocal;->lambdaArgValue:Lfreemarker/template/TemplateModel;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lfreemarker/core/Environment$LocalContextWithNewLocal;->lambdaArgName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
