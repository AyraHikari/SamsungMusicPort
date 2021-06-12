.class public Lcom/samsung/android/app/music/advertise/AdBannerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerView;->b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerView;->b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;

    return-void
.end method


# virtual methods
.method public setBannerListener(Lcom/samsung/android/app/music/advertise/IAdBannerListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBannerView;->b:Lcom/samsung/android/app/music/advertise/IAdBannerListener;

    return-void
.end method
