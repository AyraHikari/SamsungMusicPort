.class public Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 72
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->accept(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p3, p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 85
    invoke-interface {p3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
