.class public final Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzbm;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/zzbj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Lcom/google/android/gms/measurement/internal/zzbj;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbj;-><init>(Lcom/google/android/gms/measurement/internal/zzbm;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Lcom/google/android/gms/measurement/internal/zzbj;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Lcom/google/android/gms/measurement/internal/zzbj;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbj;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
