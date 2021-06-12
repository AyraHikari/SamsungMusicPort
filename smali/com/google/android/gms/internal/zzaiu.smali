.class public final Lcom/google/android/gms/internal/zzaiu;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaiu;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaiu;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaiu;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzaiu;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaiu;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzaiu;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaiu;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzaiu;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaiu;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzair;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzair;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzair;-><init>(Lcom/google/android/gms/internal/zzaiu;Lcom/google/android/gms/internal/zzais;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzaiu;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiu;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiu;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaiu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v5, p2, v1

    if-ltz v5, :cond_1

    cmpl-double v1, v1, p2

    if-nez v1, :cond_0

    cmpg-double v1, p4, v3

    if-ltz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiu;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaiu;->c:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaiu;->b:Ljava/util/List;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method
