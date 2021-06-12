.class public Lcom/samsung/android/app/music/advertise/AdBannerEnding;
.super Lcom/samsung/android/app/music/advertise/AdBannerView;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/listener/AdListener;


# instance fields
.field a:Landroid/os/Handler;

.field private c:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdBannerView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/advertise/AdBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->setOrientation(I)V

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const-string v0, "Advert.AdBannerEnding"

    const-string v1, "resume : called"

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d()Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    const-string v0, "Advert.AdBannerEnding"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume : adView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/EndingAdView;->setAdListener(Lcom/mz/common/listener/AdListener;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->addView(Landroid/view/View;)V

    const-string v0, "Advert.AdBannerEnding"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume : resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->c:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    const-string v0, "Advert.AdBannerEnding"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedToReceive tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : errorCode : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x384

    if-eq p2, p1, :cond_1

    const/16 p1, -0x2bc

    if-eq p2, p1, :cond_1

    const/16 p1, -0x258

    if-eq p2, p1, :cond_1

    const/16 p1, -0x1f4

    if-eq p2, p1, :cond_1

    const/16 p1, -0x190

    if-eq p2, p1, :cond_1

    const/16 p1, -0x12c

    if-eq p2, p1, :cond_1

    const/16 p1, -0xc8

    if-eq p2, p1, :cond_1

    const/16 p1, -0x64

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdBannerListener;->b()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerEnding;->b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdBannerListener;->a()V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method
