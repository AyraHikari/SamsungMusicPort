.class final Lorg/apache/commons/lang3/builder/IDKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->b:I

    .line 45
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/IDKey;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 64
    instance-of v0, p1, Lorg/apache/commons/lang3/builder/IDKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lorg/apache/commons/lang3/builder/IDKey;

    .line 68
    iget v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->b:I

    iget v2, p1, Lorg/apache/commons/lang3/builder/IDKey;->b:I

    if-eq v0, v2, :cond_1

    return v1

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->a:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/lang3/builder/IDKey;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->b:I

    return v0
.end method
