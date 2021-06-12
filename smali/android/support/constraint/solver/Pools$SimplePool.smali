.class Landroid/support/constraint/solver/Pools$SimplePool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/constraint/solver/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/constraint/solver/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    if-ge v1, v2, :cond_1

    .line 152
    iget-object v2, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    iget v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 107
    iget v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, -0x1

    .line 108
    iget-object v2, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 109
    iget-object v3, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 110
    iget v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    return-object v2

    :cond_0
    return-object v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 123
    iget v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    aput-object p1, v0, v1

    .line 125
    iget p1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public releaseAll([Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 133
    array-length v0, p1

    if-le p2, v0, :cond_0

    .line 134
    array-length p2, p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 137
    aget-object v1, p1, v0

    .line 143
    iget v2, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v3, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 144
    iget-object v2, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    aput-object v1, v2, v3

    .line 145
    iget v1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/Pools$SimplePool;->mPoolSize:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
