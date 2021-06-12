.class public final Lcom/google/android/gms/internal/zzmg;
.super Lcom/google/android/gms/internal/zzkt;


# instance fields
.field private zzape:Lcom/google/android/gms/internal/zzkh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkt;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmg;)Lcom/google/android/gms/internal/zzkh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmg;->zzape:Lcom/google/android/gms/internal/zzkh;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadp;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjn;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzke;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzape:Lcom/google/android/gms/internal/zzkh;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkx;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzld;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlr;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzmr;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxl;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxr;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 1

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzmh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmh;-><init>(Lcom/google/android/gms/internal/zzmg;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbr()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzbs()Lcom/google/android/gms/internal/zzjn;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzbu()V
    .locals 0

    return-void
.end method

.method public final zzcd()Lcom/google/android/gms/internal/zzkx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzce()Lcom/google/android/gms/internal/zzkh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzcp()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
