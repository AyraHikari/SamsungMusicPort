.class final Lcom/google/android/gms/measurement/internal/zzci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzad;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzci;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzci;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzci;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzci;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->k()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzci;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzci;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzci;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->b(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
