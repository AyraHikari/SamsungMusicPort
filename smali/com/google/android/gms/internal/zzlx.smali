.class public final Lcom/google/android/gms/internal/zzlx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzuw;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/zzjm;

.field private d:Lcom/google/android/gms/ads/AdListener;

.field private e:Lcom/google/android/gms/internal/zzje;

.field private f:Lcom/google/android/gms/internal/zzks;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private i:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field private j:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private k:Lcom/google/android/gms/ads/Correlator;

.field private l:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzjm;->a:Lcom/google/android/gms/internal/zzjm;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzlx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjm;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjm;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzuw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlx;->a:Lcom/google/android/gms/internal/zzuw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlx;->c:Lcom/google/android/gms/internal/zzjm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlx;->i:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is called."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlx;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->d:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzjg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjg;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzkh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the AdListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->l:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzadu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzadu;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzadp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the AdListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzje;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->e:Lcom/google/android/gms/internal/zzje;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzjf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjf;-><init>(Lcom/google/android/gms/internal/zzje;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzke;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the AdClickListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzlt;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-nez v0, :cond_8

    const-string v0, "loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlx;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlx;->m:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzjn;->a()Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzjn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjn;-><init>()V

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->b()Lcom/google/android/gms/internal/zzjr;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzlx;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlx;->a:Lcom/google/android/gms/internal/zzuw;

    new-instance v7, Lcom/google/android/gms/internal/zzju;

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzju;-><init>(Lcom/google/android/gms/internal/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/zzjr;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/zzjr$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzks;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->d:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzjg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->d:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzjg;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzkh;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->e:Lcom/google/android/gms/internal/zzje;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzjf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->e:Lcom/google/android/gms/internal/zzje;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzjf;-><init>(Lcom/google/android/gms/internal/zzje;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzke;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzjp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzjp;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzkx;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->j:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzod;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->j:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzod;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzoa;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->k:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->k:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/Correlator;->a()Lcom/google/android/gms/internal/zzkc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzld;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->l:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzadu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->l:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzadu;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzadp;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlx;->n:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->setImmersiveMode(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzjm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzlt;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->a:Lcom/google/android/gms/internal/zzuw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlt;->j()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzuw;->zzn(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->g:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlx;->m:Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlx;->n:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->f:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzks;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set immersive mode"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
