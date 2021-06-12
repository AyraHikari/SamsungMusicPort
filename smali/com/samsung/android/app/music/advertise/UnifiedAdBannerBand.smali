.class public Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/advertise/AdBanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdBannerBand;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/advertise/AdBannerBand;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a:Lcom/samsung/android/app/music/advertise/AdBanner;

    const-string p1, "Advert.UnifiedAdBannerBand"

    const-string v0, "Mezzo banner"

    .line 43
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a:Lcom/samsung/android/app/music/advertise/AdBanner;

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a:Lcom/samsung/android/app/music/advertise/AdBanner;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/AdBanner;->a()V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a:Lcom/samsung/android/app/music/advertise/AdBanner;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/AdBanner;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a:Lcom/samsung/android/app/music/advertise/AdBanner;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/UnifiedAdBannerBand;->a:Lcom/samsung/android/app/music/advertise/AdBanner;

    invoke-interface {v0}, Lcom/samsung/android/app/music/advertise/AdBanner;->b()V

    :cond_0
    return-void
.end method
