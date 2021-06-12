.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:F

.field private final c:Landroid/widget/FrameLayout;

.field private final d:Landroid/widget/TextView;

.field private e:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation
.end field

.field private f:I

.field private g:J

.field private h:Landroid/net/Uri;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1302b0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a:Landroid/widget/ImageView;

    const/high16 v0, 0x41d00000    # 26.0f

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "albumView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "albumView.context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->b:F

    const v0, 0x7f1302af

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast p1, Landroid/widget/FrameLayout;

    .line 46
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->b:F

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;-><init>(F)V

    check-cast v0, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 47
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->c:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->d:Landroid/widget/TextView;

    const/16 p1, 0xff

    .line 55
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->e:I

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->f:I

    const-wide/16 v0, -0x1

    .line 68
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->g:J

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->c:Landroid/widget/FrameLayout;

    .line 58
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    const/16 v1, 0xff

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 64
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->e:I

    return-void
.end method

.method public final a(IJ)V
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->f:I

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->g:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_2

    .line 74
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->f:I

    .line 75
    iput-wide p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->g:J

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->i:Z

    .line 229
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "SMUSIC-AlbumViewAdapter"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload album cpAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", albumId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " albumView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adapterPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p1

    .line 81
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->h:Landroid/net/Uri;

    const p1, 0x7f1000b6

    .line 82
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->h:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a:Landroid/widget/ImageView;

    sget p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->i:Z

    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumViewHolder(albumView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adapterPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
