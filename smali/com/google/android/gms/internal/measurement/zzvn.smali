.class final Lcom/google/android/gms/internal/measurement/zzvn;
.super Lcom/google/android/gms/internal/measurement/zztz;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzvs;
.implements Lcom/google/android/gms/internal/measurement/zzxe;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zztz<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzvs<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzxe;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/zzvn;


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzvn;-><init>()V

    .line 112
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvn;->a:Lcom/google/android/gms/internal/measurement/zzvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zztz;->b()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzvn;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zztz;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    return-void
.end method

.method private final a(II)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    if-ltz p1, :cond_1

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    if-gt p1, v0, :cond_1

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 43
    new-array v0, v0, [I

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aput p2, v0, p1

    .line 48
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    .line 49
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    return-void

    .line 39
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final d(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    if-ge p1, v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e(I)Ljava/lang/String;
    .locals 3

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic a(I)Lcom/google/android/gms/internal/measurement/zzvs;
    .locals 2

    .line 104
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    if-lt p1, v0, :cond_0

    .line 106
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzvn;-><init>([II)V

    return-object v0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p2, Ljava/lang/Integer;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvn;->a(II)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzvo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zztz;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 55
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 56
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7fffffff

    .line 58
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    sub-int/2addr v0, v2

    .line 59
    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    if-lt v0, v2, :cond_3

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    add-int/2addr v0, v2

    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    array-length v2, v2

    if-le v0, v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    .line 64
    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    invoke-static {v2, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    .line 66
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    return v0

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final b(I)I
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->d(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public final c(I)V
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->a(II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    if-nez v1, :cond_1

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zztz;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 21
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    const/4 v1, 0x0

    .line 22
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    if-ge v1, v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->d(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aget v0, v0, p1

    .line 94
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    .line 97
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    if-ge v1, v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    sub-int/2addr v3, v1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    .line 73
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    if-lt p2, p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->modCount:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 81
    check-cast p2, Ljava/lang/Integer;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->d(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aget v0, v0, p1

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvn;->b:[I

    aput p2, v1, p1

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvn;->c:I

    return v0
.end method
