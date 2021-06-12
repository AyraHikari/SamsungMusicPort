.class final Lcom/google/android/gms/measurement/internal/zzed;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzfh;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzh;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/zzdr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdr;ZLcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzed;->d:Lcom/google/android/gms/measurement/internal/zzdr;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzed;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzed;->b:Lcom/google/android/gms/measurement/internal/zzfh;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzed;->c:Lcom/google/android/gms/measurement/internal/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->d:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->d(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->d:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->d:Lcom/google/android/gms/measurement/internal/zzdr;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzed;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzed;->b:Lcom/google/android/gms/measurement/internal/zzfh;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzed;->c:Lcom/google/android/gms/measurement/internal/zzh;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->d:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->e(Lcom/google/android/gms/measurement/internal/zzdr;)V

    return-void
.end method
