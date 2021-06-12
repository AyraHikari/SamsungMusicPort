.class public Lcom/samsung/android/app/music/advertise/AdBannerBand;
.super Lcom/samsung/android/app/music/advertise/AdBannerView;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/listener/AdListener;
.implements Lcom/samsung/android/app/music/advertise/AdBanner;


# instance fields
.field private a:Lcom/mapps/android/view/AdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdBannerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->setOrientation(I)V

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->removeView(Landroid/view/View;)V

    const-string v0, "Advert.AdBannerBand"

    const-string v1, "resume : release ad view"

    .line 59
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c()Lcom/mapps/android/view/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    const-string v0, "Advert.AdBannerBand"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume : adView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdView;->setAdListener(Lcom/mz/common/listener/AdListener;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->addView(Landroid/view/View;)V

    const-string v0, "Advert.AdBannerBand"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume : resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->d()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    const/16 p1, -0x384

    if-eq p2, p1, :cond_0

    const/16 p1, -0x2bc

    if-eq p2, p1, :cond_0

    const/16 p1, -0x258

    if-eq p2, p1, :cond_0

    const/16 p1, -0x1f4

    if-eq p2, p1, :cond_0

    const/16 p1, -0x190

    if-eq p2, p1, :cond_0

    const/16 p1, -0x12c

    if-eq p2, p1, :cond_0

    const/16 p1, -0xc8

    if-eq p2, p1, :cond_0

    const/16 p1, -0x64

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Advert.AdBannerBand"

    const-string p2, "onFailedToReceive : Failed loading advertisement"

    .line 94
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StopService()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->a:Lcom/mapps/android/view/AdView;

    const-string v0, "Advert.AdBannerBand"

    const-string v1, "onDetachedFromWindow : release ad view"

    .line 125
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "Advert.AdBannerBand"

    const-string v1, "dispatchTouchEvent."

    .line 44
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerBand;->b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/advertise/IAdBannerListener;->b()V

    .line 52
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/advertise/AdBannerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/samsung/android/app/music/advertise/AdBannerView;->onDetachedFromWindow()V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdBannerBand;->b()V

    return-void
.end method
