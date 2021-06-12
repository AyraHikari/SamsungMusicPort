.class public Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/listener/AdListener;


# static fields
.field private static volatile e:Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static f:I


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/mapps/android/view/AdView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/mapps/android/view/AdInterstitialView;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/mapps/android/view/EndingAdView;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->b:Ljava/util/Queue;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->g:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;
    .locals 2

    .line 74
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->e:Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    if-nez v0, :cond_1

    .line 75
    const-class v0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->e:Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->e:Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    .line 79
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 81
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->e:Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;

    return-object p0
.end method

.method private e()I
    .locals 2

    .line 116
    sget v0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->f:I

    return v0
.end method

.method private f()V
    .locals 5

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "createBanner"

    .line 120
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->g:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mapps/android/view/AdView;-><init>(Landroid/content/Context;III)V

    const-string v1, "1251"

    const-string v3, "31019"

    const-string v4, "802403"

    .line 123
    invoke-virtual {v0, v1, v3, v4}, Lcom/mapps/android/view/AdView;->setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdView;->setAdListener(Lcom/mz/common/listener/AdListener;)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/mapps/android/view/AdView;->isAnimateImageBanner(Z)V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView;->setTag(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->StartService()V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v0, "Advert.AdMezzoBannerLoader"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBanner queue size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 4

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "createEndingBanner"

    .line 135
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/mapps/android/view/EndingAdView;

    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;-><init>(Landroid/content/Context;)V

    const-string v1, "1251"

    const-string v2, "31019"

    const-string v3, "802404"

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/EndingAdView;->setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p0}, Lcom/mapps/android/view/EndingAdView;->setAdListener(Lcom/mz/common/listener/AdListener;)V

    const/4 v1, 0x1

    .line 142
    iput v1, v0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->setTag(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->startEndingAdView()V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v0, "Advert.AdMezzoBannerLoader"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEndingBanner queue size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "init - start"

    .line 89
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->f()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->g()V

    :cond_1
    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "init - end"

    .line 96
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_0

    const/16 v0, -0x384

    if-eq p2, v0, :cond_0

    const/16 v0, -0x2bc

    if-eq p2, v0, :cond_0

    const/16 v0, -0x258

    if-eq p2, v0, :cond_0

    const/16 v0, -0x1f4

    if-eq p2, v0, :cond_0

    const/16 v0, -0x190

    if-eq p2, v0, :cond_0

    const/16 v0, -0x12c

    if-eq p2, v0, :cond_0

    const/16 v0, -0xc8

    if-eq p2, v0, :cond_0

    const/16 v0, -0x64

    if-eq p2, v0, :cond_0

    .line 248
    instance-of p2, p1, Lcom/mapps/android/view/AdView;

    if-eqz p2, :cond_1

    .line 249
    check-cast p1, Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->StopService()V

    goto :goto_0

    :cond_0
    const-string v0, "Advert.AdMezzoBannerLoader"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedToReceive : banner load error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 244
    iget-object p2, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 2

    const-string p1, "Advert.AdMezzoBannerLoader"

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChargeableBannerType AD changed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "release"

    .line 100
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->b:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public c()Lcom/mapps/android/view/AdView;
    .locals 4

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "getBandBanner"

    .line 165
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "getEndingBanner - bannerViews is empty"

    .line 168
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->f()V

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapps/android/view/AdView;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Advert.AdMezzoBannerLoader"

    const-string v2, "getBandBanner - 1"

    .line 175
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "Advert.AdMezzoBannerLoader"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBandBanner - bannerViews size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->a:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->f()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/mapps/android/view/EndingAdView;
    .locals 4

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "getEndingBanner"

    .line 187
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Advert.AdMezzoBannerLoader"

    const-string v1, "getEndingBanner - endingAdViews is empty"

    .line 190
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->g()V

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapps/android/view/EndingAdView;

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Advert.AdMezzoBannerLoader"

    const-string v2, "getEndingBanner - 1"

    .line 197
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "Advert.AdMezzoBannerLoader"

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndingBanner - endingAdViews size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->c:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdMezzoBannerLoader;->g()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
