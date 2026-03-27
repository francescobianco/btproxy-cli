.class Lfreemarker/core/TemplateElementsToVisit;
.super Ljava/lang/Object;
.source "TemplateElementsToVisit.java"


# instance fields
.field private final templateElements:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lfreemarker/core/TemplateElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfreemarker/core/TemplateElement;)V
    .registers 2

    .line 41
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/TemplateElementsToVisit;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lfreemarker/core/TemplateElement;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_a

    .line 37
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_a
    iput-object p1, p0, Lfreemarker/core/TemplateElementsToVisit;->templateElements:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method getTemplateElements()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lfreemarker/core/TemplateElement;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lfreemarker/core/TemplateElementsToVisit;->templateElements:Ljava/util/Collection;

    return-object v0
.end method
