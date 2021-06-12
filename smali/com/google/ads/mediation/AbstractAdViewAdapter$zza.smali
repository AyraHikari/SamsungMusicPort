.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;
.super Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;->e:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->e()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->a(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->g()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->a(D)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->h()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->i()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->e(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->b(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->j()Lcom/google/android/gms/ads/VideoController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a(Lcom/google/android/gms/ads/VideoController;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;->e:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;->e:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->a(Lcom/google/android/gms/ads/formats/NativeAd;)V

    :cond_1
    return-void
.end method
