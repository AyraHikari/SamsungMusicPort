.class final Lcom/google/android/gms/measurement/internal/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzcq;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzcq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->b:Lcom/google/android/gms/measurement/internal/zzv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/measurement/internal/zzcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/measurement/internal/zzcq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcq;->u()Lcom/google/android/gms/measurement/internal/zzk;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->a:Lcom/google/android/gms/measurement/internal/zzcq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcq;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->b:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->b()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->b:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzv;->a(Lcom/google/android/gms/measurement/internal/zzv;J)J

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->b:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->a()V

    :cond_1
    return-void
.end method
