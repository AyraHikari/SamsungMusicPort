.class final Lcom/google/android/gms/measurement/internal/zzbl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzbt;

.field private final synthetic b:J

.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzap;

.field private final synthetic f:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbj;Lcom/google/android/gms/measurement/internal/zzbt;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzap;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbl;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzbl;->b:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzbl;->c:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzbl;->d:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzbl;->e:Lcom/google/android/gms/measurement/internal/zzap;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzbl;->f:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->h:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    cmp-long v6, v2, v0

    if-gez v6, :cond_0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    :cond_0
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    :cond_1
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->c:Landroid/os/Bundle;

    const-string v1, "click_timestamp"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->c:Landroid/os/Bundle;

    const-string v1, "_cis"

    const-string v2, "referrer broadcast"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_cmp"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbl;->c:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->e:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Install campaign recorded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->f:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->f:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_3
    return-void
.end method
