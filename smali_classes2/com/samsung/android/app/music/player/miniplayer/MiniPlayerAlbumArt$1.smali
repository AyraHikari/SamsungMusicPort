.class Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;-><init>(Landroid/content/Context;)V

    .line 106
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    .line 111
    invoke-static {v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1005ae

    .line 112
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;-><init>(F)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->setClipToOutline(Z)V

    return-object v0
.end method
