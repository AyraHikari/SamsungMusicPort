.class final Lcom/google/android/gms/internal/measurement/zzxp;
.super Lcom/google/android/gms/internal/measurement/zzxv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzxv;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/zzxm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzxm;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxp;->a:Lcom/google/android/gms/internal/measurement/zzxm;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxv;-><init>(Lcom/google/android/gms/internal/measurement/zzxm;Lcom/google/android/gms/internal/measurement/zzxn;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzxm;Lcom/google/android/gms/internal/measurement/zzxn;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzxp;-><init>(Lcom/google/android/gms/internal/measurement/zzxm;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxo;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxp;->a:Lcom/google/android/gms/internal/measurement/zzxm;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzxo;-><init>(Lcom/google/android/gms/internal/measurement/zzxm;Lcom/google/android/gms/internal/measurement/zzxn;)V

    return-object v0
.end method
