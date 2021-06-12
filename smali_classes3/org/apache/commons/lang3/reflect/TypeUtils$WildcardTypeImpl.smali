.class final Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final a:[Ljava/lang/reflect/Type;


# instance fields
.field private final b:[Ljava/lang/reflect/Type;

.field private final c:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 224
    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->a:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    sget-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->a:[Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->b:[Ljava/lang/reflect/Type;

    .line 236
    sget-object p1, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->a:[Ljava/lang/reflect/Type;

    invoke-static {p2, p1}, Lorg/apache/commons/lang3/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->c:[Ljava/lang/reflect/Type;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 268
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->c:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->b:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 277
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->b:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    or-int/lit16 v0, v0, 0x4900

    shl-int/lit8 v0, v0, 0x8

    .line 279
    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->c:[Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 260
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
