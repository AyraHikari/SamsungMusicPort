.class final Lcom/google/android/gms/measurement/internal/zzex;
.super Lcom/google/android/gms/measurement/internal/zzv;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzfa;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzew;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzew;Lcom/google/android/gms/measurement/internal/zzcq;Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzex;->b:Lcom/google/android/gms/measurement/internal/zzew;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzex;->a:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzcq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzex;->b:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->f()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzex;->b:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzex;->a:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->j()V

    return-void
.end method
