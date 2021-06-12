.class public abstract Lorg/apache/commons/lang3/tuple/Triple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/tuple/Triple<",
        "T",
        "L;",
        "TM;TR;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lorg/apache/commons/lang3/tuple/Triple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/tuple/ImmutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lorg/apache/commons/lang3/tuple/Triple;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/tuple/Triple;->compareTo(Lorg/apache/commons/lang3/tuple/Triple;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/lang3/tuple/Triple;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/tuple/Triple<",
            "T",
            "L;",
            "TM;TR;>;)I"
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->a()I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang3/tuple/Triple;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 115
    check-cast p1, Lorg/apache/commons/lang3/tuple/Triple;

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public abstract getLeft()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getMiddle()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public abstract getRight()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 3

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
