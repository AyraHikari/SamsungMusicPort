.class final Lcom/google/android/gms/measurement/internal/zzdx;
.super Lcom/google/android/gms/measurement/internal/zzv;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzdr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzcq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzcq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdx;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void
.end method
