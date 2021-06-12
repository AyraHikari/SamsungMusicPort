.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzep;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/zzel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzel<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final a()Lcom/google/android/gms/measurement/internal/zzel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/measurement/internal/zzel<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lcom/google/android/gms/measurement/internal/zzel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzel;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lcom/google/android/gms/measurement/internal/zzel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lcom/google/android/gms/measurement/internal/zzel;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzel;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 6
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->b()V

    .line 10
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzel;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzel;->a(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzel;->b(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
