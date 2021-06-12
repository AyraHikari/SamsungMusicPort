.class public final Lcom/google/firebase/dynamiclinks/internal/zze;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/firebase/dynamiclinks/internal/zzo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x83

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService"

    .line 10
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/firebase/dynamiclinks/internal/zzo;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/zzo;

    return-object v0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzp;

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/internal/zzp;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.google.firebase.dynamiclinks.service.START"

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService"

    return-object v0
.end method
