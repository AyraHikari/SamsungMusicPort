.class Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/advertise/IAdBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewCreated - adBannerView - onError, bChangedCp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    .line 103
    invoke-static {v2}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->b(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->c(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2$1;-><init>(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    const-string v1, "adBannerView - onClicked"

    .line 118
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ads_click"

    const-string v2, "ads_type"

    const-string v3, "back_image"

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
