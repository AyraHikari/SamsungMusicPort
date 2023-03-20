.class public final Lcom/google/ads/mediation/AdUrlAdapter;
.super Lcom/google/ads/mediation/AbstractAdViewAdapter;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    const-string p1, "adurl"

    return-object p1
.end method

.method public final zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "sdk_less_server_data"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    const-string v0, "_noRefresh"

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method
