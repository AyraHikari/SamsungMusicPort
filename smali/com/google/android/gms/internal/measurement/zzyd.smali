.class final Lcom/google/android/gms/internal/measurement/zzyd;
.super Lcom/google/android/gms/internal/measurement/zzyb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzyb<",
        "Lcom/google/android/gms/internal/measurement/zzyc;",
        "Lcom/google/android/gms/internal/measurement/zzyc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyb;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyc;)V
    .locals 0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvm;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyc;->b()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyc;->c()V

    return-object p1
.end method

.method final synthetic a(Ljava/lang/Object;II)V
    .locals 0

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 70
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyc;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    .line 72
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    shl-int/lit8 p2, p2, 0x3

    .line 75
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyc;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzud;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 58
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyc;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzyc;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyc;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyc;->b(Lcom/google/android/gms/internal/measurement/zzyw;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzyc;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyc;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzxi;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzvm;->zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

    return-object p1
.end method

.method final synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 63
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 64
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyc;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyc;->a(Lcom/google/android/gms/internal/measurement/zzyw;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzyc;

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyc;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyc;->a()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyc;->b()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyc;)V

    :cond_0
    return-object v0
.end method

.method final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzyc;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyc;->a()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzyc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyc;->a(Lcom/google/android/gms/internal/measurement/zzyc;Lcom/google/android/gms/internal/measurement/zzyc;)Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object p1

    return-object p1
.end method

.method final d(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzvm;->zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyc;->c()V

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyc;->d()I

    move-result p1

    return p1
.end method

.method final synthetic f(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyc;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyc;->e()I

    move-result p1

    return p1
.end method
