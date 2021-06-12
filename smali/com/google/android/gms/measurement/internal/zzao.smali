.class public final Lcom/google/android/gms/measurement/internal/zzao;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/BaseGmsClient<",
        "Lcom/google/android/gms/measurement/internal/zzag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 10
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzag;

    return-object v0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final g()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method
