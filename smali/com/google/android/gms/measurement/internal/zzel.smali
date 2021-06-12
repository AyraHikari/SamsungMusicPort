.class public final Lcom/google/android/gms/measurement/internal/zzel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/measurement/internal/zzep;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeo;-><init>(Lcom/google/android/gms/measurement/internal/zzel;Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final c()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;II)I
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 22
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "AppMeasurementService started with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return v1

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v3, "Local AppMeasurementService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "com.google.android.gms.measurement.UPLOAD"

    .line 32
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 33
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzem;

    invoke-direct {p2, p0, p3, v0, p1}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Lcom/google/android/gms/measurement/internal/zzel;ILcom/google/android/gms/measurement/internal/zzap;Landroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzel;->a(Ljava/lang/Runnable;)V

    :cond_1
    return v1
.end method

.method public final a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;->c()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "onBind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.START"

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbv;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzbv;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    return-object p1

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;->c()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "onBind received unknown action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic a(ILcom/google/android/gms/measurement/internal/zzap;Landroid/content/Intent;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzep;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzep;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "Local AppMeasurementService processed last upload request. StartId"

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 82
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;->c()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Completed wakeful intent."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzep;

    invoke-interface {p1, p3}, Lcom/google/android/gms/measurement/internal/zzep;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/measurement/internal/zzap;Landroid/app/job/JobParameters;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "AppMeasurementJobService processed last upload request."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzep;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzep;->a(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final a(Landroid/app/job/JobParameters;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Local AppMeasurementJobService called. action"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzen;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzel;Lcom/google/android/gms/measurement/internal/zzap;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzel;->a(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->u()Lcom/google/android/gms/measurement/internal/zzk;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)Z
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;->c()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;->c()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;->c()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "onRebind called with null intent"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzel;->c()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "onRebind called. action"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
