.class public Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "[",
            "Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->b:Ljava/util/Map;

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->c:Ljava/util/List;

    .line 490
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)Landroid/view/View;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a:Landroid/view/View;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10044f

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f0

    .line 511
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 512
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->a()Z

    move-result v2

    .line 513
    new-instance v3, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;ZII)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 525
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a:Landroid/view/View;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz p1, :cond_1

    .line 528
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 529
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a:Landroid/view/View;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const/16 v1, 0xc

    .line 530
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)Ljava/util/List;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)Ljava/util/Map;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method varargs a(Landroid/view/View;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->c:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->b:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs a(Landroid/view/View;Ljava/lang/Boolean;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;
    .locals 0

    .line 500
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 501
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;)V

    .line 503
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Landroid/view/View;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
    .locals 2

    .line 542
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;)V

    return-object v0
.end method
