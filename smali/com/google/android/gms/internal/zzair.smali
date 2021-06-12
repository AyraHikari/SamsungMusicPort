.class public final Lcom/google/android/gms/internal/zzair;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[D

.field private final c:[D

.field private final d:[I

.field private e:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaiu;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaiu;->a(Lcom/google/android/gms/internal/zzaiu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaiu;->b(Lcom/google/android/gms/internal/zzaiu;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzair;->a:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaiu;->a(Lcom/google/android/gms/internal/zzaiu;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzair;->a(Ljava/util/List;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzair;->b:[D

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaiu;->c(Lcom/google/android/gms/internal/zzaiu;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzair;->a(Ljava/util/List;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzair;->c:[D

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzair;->d:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzair;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaiu;Lcom/google/android/gms/internal/zzais;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzair;-><init>(Lcom/google/android/gms/internal/zzaiu;)V

    return-void
.end method

.method private static a(Ljava/util/List;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzait;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzair;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzair;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzait;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzair;->a:[Ljava/lang/String;

    aget-object v4, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzair;->c:[D

    aget-wide v5, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzair;->b:[D

    aget-wide v7, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzair;->d:[I

    aget v3, v3, v1

    int-to-double v9, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzair;->e:I

    int-to-double v11, v3

    div-double/2addr v9, v11

    iget-object v3, p0, Lcom/google/android/gms/internal/zzair;->d:[I

    aget v11, v3, v1

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzait;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(D)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzair;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzair;->e:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzair;->c:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzair;->c:[D

    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzair;->b:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzair;->d:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzair;->c:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
