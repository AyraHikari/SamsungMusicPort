.class final Lcom/google/android/gms/measurement/internal/zzcg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzad;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzh;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcg;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcg;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzcg;->b:Lcom/google/android/gms/measurement/internal/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcg;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcg;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzcg;->b:Lcom/google/android/gms/measurement/internal/zzh;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbv;->zzb(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcg;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->k()V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcg;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzcg;->b:Lcom/google/android/gms/measurement/internal/zzh;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    return-void
.end method
