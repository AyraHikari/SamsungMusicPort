.class final Lcom/google/android/gms/internal/measurement/zzwy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzxj<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzwt;

.field private final b:Lcom/google/android/gms/internal/measurement/zzyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzyb<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/measurement/zzva;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzva<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzyb;Lcom/google/android/gms/internal/measurement/zzva;Lcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzyb<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzva<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzwt;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzva;->a(Lcom/google/android/gms/internal/measurement/zzwt;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->c:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzwy;->a:Lcom/google/android/gms/internal/measurement/zzwt;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/measurement/zzyb;Lcom/google/android/gms/internal/measurement/zzva;Lcom/google/android/gms/internal/measurement/zzwt;)Lcom/google/android/gms/internal/measurement/zzwy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzyb<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzva<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzwt;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzwy<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Lcom/google/android/gms/internal/measurement/zzyb;Lcom/google/android/gms/internal/measurement/zzva;Lcom/google/android/gms/internal/measurement/zzwt;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->c:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzva;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvd;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->a:Lcom/google/android/gms/internal/measurement/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwt;->i()Lcom/google/android/gms/internal/measurement/zzwu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwu;->d()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;Lcom/google/android/gms/internal/measurement/zzuz;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzxi;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzva;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object v3

    .line 46
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->a()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 48
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->b()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 56
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzwy;->a:Lcom/google/android/gms/internal/measurement/zzwt;

    ushr-int/lit8 v4, v4, 0x3

    .line 58
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzva;->a(Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzwt;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzva;->a(Lcom/google/android/gms/internal/measurement/zzxi;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvd;)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;)Z

    move-result v4

    goto :goto_2

    .line 63
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->c()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v4, v6

    const/4 v7, 0x0

    .line 67
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->a()I

    move-result v8

    if-eq v8, v5, :cond_9

    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->b()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 71
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->o()I

    move-result v7

    .line 72
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzwy;->a:Lcom/google/android/gms/internal/measurement/zzwt;

    .line 73
    invoke-virtual {v1, p3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzva;->a(Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzwt;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 77
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/zzva;->a(Lcom/google/android/gms/internal/measurement/zzxi;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvd;)V

    goto :goto_0

    .line 79
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->n()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v4

    goto :goto_0

    .line 81
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->c()Z

    move-result v8

    if-nez v8, :cond_5

    .line 82
    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->b()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v4, :cond_b

    if-eqz v6, :cond_a

    .line 86
    invoke-virtual {v1, v4, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/zzva;->a(Lcom/google/android/gms/internal/measurement/zzud;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvd;)V

    goto :goto_1

    .line 87
    :cond_a
    invoke-virtual {v0, v2, v7, v4}, Lcom/google/android/gms/internal/measurement/zzyb;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzud;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 90
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwn()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 92
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzyw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvd;->e()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzvf;

    .line 32
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->c()Lcom/google/android/gms/internal/measurement/zzyv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzyv;->zzcet:Lcom/google/android/gms/internal/measurement/zzyv;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->e()Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzvy;

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->a()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzvy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzvy;->a()Lcom/google/android/gms/internal/measurement/zzvw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwa;->c()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v1

    .line 37
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzyw;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->a()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzyw;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->c:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzva;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzvd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    .line 99
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzyb;->e(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 102
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->c:Z

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzva;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvd;->i()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxl;->a(Lcom/google/android/gms/internal/measurement/zzyb;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->c:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxl;->a(Lcom/google/android/gms/internal/measurement/zzva;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->b:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->d(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->d:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvd;->g()Z

    move-result p1

    return p1
.end method
