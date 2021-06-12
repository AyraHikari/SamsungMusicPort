.class final Lcom/google/android/gms/internal/measurement/zzxg;
.super Lcom/google/android/gms/internal/measurement/zztz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zztz<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/zzxg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzxg<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzxg;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxg;->a:Lcom/google/android/gms/internal/measurement/zzxg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zztz;->b()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzxg;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zztz;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxg;->b:Ljava/util/List;

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/measurement/zzxg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/zzxg<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxg;->a:Lcom/google/android/gms/internal/measurement/zzxg;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Lcom/google/android/gms/internal/measurement/zzvs;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxg;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzxg;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzxg;-><init>(Ljava/util/List;)V

    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxg;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzxg;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzxg;->modCount:I

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzxg;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzxg;->modCount:I

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztz;->c()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxg;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzxg;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzxg;->modCount:I

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
