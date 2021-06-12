.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

.field private c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

.field private final k:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;

.field private final l:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->l:Landroid/support/v7/widget/RecyclerView;

    .line 32
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    const-string v0, "EmptyPlaybackState.getState()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 34
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    const-string v0, "EmptyMusicMetadata.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const/4 p1, -0x1

    int-to-long v0, p1

    .line 35
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f:J

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->g:Z

    .line 41
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->j:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    .line 68
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->k:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->j:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->k:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f:J

    return-wide v0
.end method

.method private final a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V
    .locals 7

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 152
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a(Z)V

    return-void

    .line 156
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->itemView:Landroid/view/View;

    const-string v2, "vh.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-double v1, v1

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->itemView:Landroid/view/View;

    const-string v3, "vh.itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result p1

    float-to-double v3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v5

    div-double/2addr v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 157
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;DZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->h:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->i:Z

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->h:Z

    return p0
.end method

.method private final d()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->c()V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->i:Z

    return p0
.end method

.method private final e()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    .line 164
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->b()V

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->d()V

    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    return-object p0
.end method

.method private final f()Z
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSoundQuality()J

    move-result-wide v3

    .line 169
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->e(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->e()V

    return-void
.end method

.method private final g()Z
    .locals 3

    .line 174
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "cross_fade"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->e()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->d()V

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->g:Z

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getActiveQueueItemId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f:J

    .line 143
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->g:Z

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->c()V

    :cond_0
    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->g:Z

    return-void
.end method

.method public final b()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->d()V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 128
    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->j:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->k:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->e()V

    :cond_0
    return-void
.end method
