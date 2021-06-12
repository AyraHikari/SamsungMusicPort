.class final Lcom/google/android/gms/measurement/internal/zzdw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzdn;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzdr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdw;->b:Lcom/google/android/gms/measurement/internal/zzdr;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdw;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->b:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->d(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->b:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->b:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzdn;->c:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzdn;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzdn;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->b:Lcom/google/android/gms/measurement/internal/zzdr;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->b:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->e(Lcom/google/android/gms/measurement/internal/zzdr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdw;->b:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
