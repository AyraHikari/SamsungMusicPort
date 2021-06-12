.class Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$1;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "Advert.AdFragmentMezzoFullBanner"

    const-string v0, "btBottomClose - onClick"

    .line 86
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$1;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->a(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "843"

    const-string v1, "8121"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "843"

    const-string v1, "8131"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$1;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->a()V

    return-void
.end method
