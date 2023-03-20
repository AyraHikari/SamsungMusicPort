.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;
.super Ljava/lang/Object;
.source "MiniPlayerAlbumArt.kt"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;
.implements Lcom/samsung/android/app/music/player/vi/h;
.implements Lcom/samsung/android/app/music/player/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

.field public b:I

.field public c:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

.field public d:Z

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;

.field public g:Z

.field public final h:Lcom/samsung/android/app/musiclibrary/ui/imageloader/i;

.field public o:Lcom/bumptech/glide/request/target/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b007a

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    .line 3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;->a:Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;->g()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b:I

    .line 4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->b:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;->c()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    .line 5
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/imageloader/a;->f:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Z

    .line 8
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/imageloader/p;->a:Lcom/samsung/android/app/musiclibrary/ui/imageloader/p;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/p;->l(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/imageloader/i;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h:Lcom/samsung/android/app/musiclibrary/ui/imageloader/i;

    .line 9
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$b;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$b;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->o:Lcom/bumptech/glide/request/target/c;

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->o()I

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Z

    return p0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;->a:Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;->g()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Z

    goto :goto_0

    :cond_1
    const-string p1, "player_transition_album"

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->s(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;->a:Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/l;->c()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b:I

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Z

    :goto_0
    return-void
.end method

.method public f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->m()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->c0()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;->g(IZ)V

    return-void
.end method

.method public j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/player/vi/h$a;->c(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    return-void
.end method

.method public l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->u(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->O()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;->d()V

    :cond_0
    return-void
.end method

.method public final o()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->t()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public final onStopCalled()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;->d()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Z

    return-void
.end method

.method public final p(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ImageSwitcher;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$a;->e(Z)V

    return-void
.end method

.method public final u(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h:Lcom/samsung/android/app/musiclibrary/ui/imageloader/i;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/i;->D()Lcom/samsung/android/app/musiclibrary/ui/imageloader/h;

    move-result-object v1

    const-string v0, "glideRequest.asDrawable()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v2

    long-to-int v2, v2

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->d()J

    move-result-wide v3

    .line 5
    iget v5, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b:I

    .line 6
    iget-object v6, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->o:Lcom/bumptech/glide/request/target/c;

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/f;->s(Lcom/samsung/android/app/musiclibrary/ui/imageloader/h;IJILcom/bumptech/glide/request/target/c;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    invoke-virtual {p1}, Landroid/widget/ImageSwitcher;->reset()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumSwitcher;

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/imageloader/a;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    :goto_0
    return-void
.end method
