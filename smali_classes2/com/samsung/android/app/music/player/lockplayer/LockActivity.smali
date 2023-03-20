.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity;
.super Lcom/samsung/android/app/music/activity/h;
.source "LockActivity.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/lockplayer/LockActivity$a;,
        Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;
    }
.end annotation


# static fields
.field public static final C:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;

.field public static final D:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$i;

.field public final B:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$h;

.field public a:Landroid/view/View;

.field public b:Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;

.field public c:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

.field public d:Lcom/samsung/android/app/music/player/v3/PlayController;

.field public e:Lcom/samsung/android/app/music/player/lockplayer/e;

.field public f:Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;

.field public g:Lcom/samsung/android/app/music/player/v3/FavoriteController;

.field public h:Lcom/samsung/android/app/music/player/v3/m;

.field public o:Lcom/samsung/android/app/music/player/v3/j;

.field public p:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

.field public q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

.field public r:Lcom/samsung/android/app/music/player/d0;

.field public s:Lcom/samsung/android/app/music/player/lockplayer/k;

.field public t:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

.field public final u:Lkotlin/g;

.field public final v:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

.field public w:Lcom/samsung/android/app/music/n;

.field public final x:Lkotlin/g;

.field public final y:Lkotlin/g;

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->C:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;

    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$b;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$b;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->D:Lkotlin/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/h;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$l;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$l;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 3
    new-instance v1, Landroidx/lifecycle/k0;

    const-class v2, Lcom/samsung/android/app/music/viewmodel/e;

    invoke-static {v2}, Lkotlin/jvm/internal/z;->a(Ljava/lang/Class;)Lkotlin/reflect/b;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$m;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$m;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/k0;-><init>(Lkotlin/reflect/b;Lkotlin/jvm/functions/a;Lkotlin/jvm/functions/a;)V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->u:Lkotlin/g;

    .line 5
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->v:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    .line 6
    new-instance v0, Lcom/samsung/android/app/music/n;

    invoke-direct {v0}, Lcom/samsung/android/app/music/n;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->w:Lcom/samsung/android/app/music/n;

    .line 7
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$n;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$n;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->x:Lkotlin/g;

    .line 8
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$d;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->y:Lkotlin/g;

    .line 9
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/m;->a:Lcom/samsung/android/app/musiclibrary/ui/util/m;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/m;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->z:Z

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$i;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$i;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->A:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$i;

    .line 11
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$h;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$h;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->B:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$h;

    return-void
.end method

.method public static final synthetic A(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/i;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->L()Lcom/samsung/android/app/music/player/lockplayer/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic B(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/k;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->s:Lcom/samsung/android/app/music/player/lockplayer/k;

    return-object p0
.end method

.method public static final synthetic C()Lkotlin/g;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->D:Lkotlin/g;

    return-object v0
.end method

.method public static final synthetic E(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/lyrics/v3/LyricsController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->p:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    return-object p0
.end method

.method public static final synthetic F(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic G(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)F
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->M()F

    move-result p0

    return p0
.end method

.method public static final synthetic I(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/viewmodel/e;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic J(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/d0;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    return-object p0
.end method

.method public static final Q(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->C:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;

    const-string v0, "launch Player"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->b(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->V()V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->L()Lcom/samsung/android/app/music/player/lockplayer/i;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/player/lockplayer/i;->n(Landroid/view/View;)V

    return-void
.end method

.method public static final R(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/k;->v()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "viewTypeController"

    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/player/d0;->g(Lcom/samsung/android/app/music/player/d0;IZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/player/d0;->g(Lcom/samsung/android/app/music/player/d0;IZLjava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static synthetic y(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->Q(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->R(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public H(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "beyondBackgroundController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/music/player/lockplayer/e;

    if-nez v0, :cond_1

    const-string v0, "albumArt"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->J()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/lockplayer/e;->D(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->t:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    if-nez v0, :cond_2

    const-string v0, "albumTagUpdater"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->p:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    if-nez v0, :cond_3

    const-string v0, "lyricsController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->F(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/music/player/v3/PlayController;

    if-nez v0, :cond_4

    const-string v0, "playController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/v3/PlayController;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    return-void
.end method

.method public final K(Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;

    const v1, 0x7f0b053a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.tag_container)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;-><init>(Landroid/view/View;ZILkotlin/jvm/internal/g;)V

    const v1, 0x7f0b03ee

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v5, "view.findViewById(R.id.private_tag)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;

    sget-object v7, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->a:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    aput-object v7, v6, v2

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;->c(Landroid/view/View;[Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;

    const v1, 0x7f0b029b

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "leftBottomTagView"

    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/n;

    invoke-direct {v1}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/n;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;

    .line 6
    sget-object v7, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->b:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    aput-object v7, v6, v2

    sget-object v2, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->c:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    aput-object v2, v6, v5

    sget-object v2, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->d:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    aput-object v2, v6, v3

    sget-object v2, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->e:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    const/4 v3, 0x3

    aput-object v2, v6, v3

    .line 7
    invoke-virtual {v0, p1, v1, v6}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;->a(Landroid/view/View;Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$a;[Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;->d()Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/music/player/lockplayer/e;

    if-nez v0, :cond_0

    const-string v0, "albumArt"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    invoke-virtual {v4}, Lcom/samsung/android/app/music/player/lockplayer/e;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;->A(I)V

    return-object p1
.end method

.method public final L()Lcom/samsung/android/app/music/player/lockplayer/i;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->y:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/lockplayer/i;

    return-object v0
.end method

.method public final M()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->x:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final N()Lcom/samsung/android/app/music/viewmodel/e;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->u:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/viewmodel/e;

    return-object v0
.end method

.method public final O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->v:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$e;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$e;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Lcom/samsung/android/app/musiclibrary/core/service/v3/a;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->X(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;Lkotlin/jvm/functions/a;)V

    return-void
.end method

.method public final P()V
    .locals 20

    move-object/from16 v9, p0

    .line 1
    sget-object v10, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->C:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;

    .line 2
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    const-string v6, "initView rootView = "

    const-string v1, "findViewById<View>(R.id.lock_player)"

    const v2, 0x7f0b02be

    const-string v11, "uiManager"

    const-string v12, "rootView"

    const/4 v13, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v9, v2}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    .line 4
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/player/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/player/c;-><init>(Landroidx/fragment/app/h;Ljava/lang/String;ZILkotlin/jvm/internal/g;)V

    iput-object v7, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    .line 5
    new-instance v7, Lcom/samsung/android/app/music/player/d0;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/player/d0;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;ZILkotlin/jvm/internal/g;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v7

    .line 6
    invoke-static/range {v14 .. v19}, Lcom/samsung/android/app/music/player/d0;->g(Lcom/samsung/android/app/music/player/d0;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 8
    iput-object v7, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    .line 9
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v13

    :cond_0
    invoke-static {v6, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->b(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;Ljava/lang/String;)I

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/k;

    .line 11
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    .line 12
    :cond_1
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/k;-><init>(Landroidx/fragment/app/h;Landroid/view/View;)V

    .line 13
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_5

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v9, v2}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    .line 15
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/player/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/player/c;-><init>(Landroidx/fragment/app/h;Ljava/lang/String;ZILkotlin/jvm/internal/g;)V

    iput-object v7, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    .line 16
    new-instance v7, Lcom/samsung/android/app/music/player/d0;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/player/d0;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;ZILkotlin/jvm/internal/g;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v7

    .line 17
    invoke-static/range {v14 .. v19}, Lcom/samsung/android/app/music/player/d0;->g(Lcom/samsung/android/app/music/player/d0;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 19
    iput-object v7, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    .line 20
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v13

    :cond_3
    invoke-static {v6, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->b(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/k;

    .line 22
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    .line 23
    :cond_4
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/k;-><init>(Landroidx/fragment/app/h;Landroid/view/View;)V

    .line 24
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_5

    :goto_0
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_5
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 25
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->s:Lcom/samsung/android/app/music/player/lockplayer/k;

    .line 26
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;

    invoke-direct {v0, v9}, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;-><init>(Landroid/app/Activity;)V

    .line 28
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_7

    goto :goto_1

    .line 29
    :cond_6
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;

    invoke-direct {v0, v9}, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;-><init>(Landroid/app/Activity;)V

    .line 30
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_7

    :goto_1
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_7
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;->p()V

    .line 32
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 33
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;

    .line 34
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/n;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_8

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_8
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/n;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/a;

    invoke-direct {v1, v9}, Lcom/samsung/android/app/music/player/lockplayer/a;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/n;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_a

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_a
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/n;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/a;

    invoke-direct {v1, v9}, Lcom/samsung/android/app/music/player/lockplayer/a;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    :goto_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/n;->a(Landroid/view/View$OnClickListener;)V

    .line 36
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 37
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    const-string v1, "rootView.findViewById(R.id.background_view)"

    const v2, 0x7f0b00b4

    if-eqz v0, :cond_c

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    .line 39
    iget-object v3, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v3, :cond_b

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v3, v13

    :cond_b
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 40
    invoke-direct {v0, v9, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V

    .line 41
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_e

    goto :goto_3

    .line 42
    :cond_c
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    .line 43
    iget-object v3, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v3, :cond_d

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v3, v13

    :cond_d
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 44
    invoke-direct {v0, v9, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V

    .line 45
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_e

    :goto_3
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_e
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 46
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    .line 47
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    const-string v14, "viewTypeController"

    if-eqz v0, :cond_14

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/e;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_f

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_f
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/e;-><init>(Lcom/samsung/android/app/music/activity/h;Landroid/view/View;)V

    .line 49
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_10

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_10
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 50
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_11

    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_11
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 51
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$f;

    invoke-direct {v1, v9}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$f;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/e;->z(Lcom/samsung/android/app/music/player/lockplayer/m$b;)V

    .line 52
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 53
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/music/player/lockplayer/e;

    .line 54
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_12

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v13

    :cond_12
    invoke-virtual {v9, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->K(Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    move-result-object v0

    .line 55
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_13

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_13
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 56
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_1a

    goto :goto_4

    .line 57
    :cond_14
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/e;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_15

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_15
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/e;-><init>(Lcom/samsung/android/app/music/activity/h;Landroid/view/View;)V

    .line 58
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_16

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_16
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 59
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_17

    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_17
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 60
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$f;

    invoke-direct {v1, v9}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$f;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/e;->z(Lcom/samsung/android/app/music/player/lockplayer/m$b;)V

    .line 61
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 62
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/music/player/lockplayer/e;

    .line 63
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_18

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v13

    :cond_18
    invoke-virtual {v9, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->K(Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    move-result-object v0

    .line 64
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_19

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_19
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 65
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_1a

    :goto_4
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_1a
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 66
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->t:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    .line 67
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_1b

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_1b
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 69
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_1c

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_1c
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 70
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_20

    goto :goto_5

    .line 71
    :cond_1d
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_1e

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_1e
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 72
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_1f

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_1f
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 73
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_20

    :goto_5
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_20
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 74
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 75
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f:Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;

    .line 76
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    const-string v1, "LockPlayer"

    if-eqz v0, :cond_22

    .line 77
    new-instance v15, Lcom/samsung/android/app/music/player/v3/PlayController;

    .line 78
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_21

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v13

    goto :goto_6

    :cond_21
    move-object v2, v0

    .line 79
    :goto_6
    iget-object v3, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->w:Lcom/samsung/android/app/music/n;

    .line 80
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;

    invoke-direct {v4, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/a;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    .line 81
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/player/v3/PlayController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/a;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;ILcom/samsung/android/app/music/player/k;ILkotlin/jvm/internal/g;)V

    goto :goto_8

    :cond_22
    new-instance v15, Lcom/samsung/android/app/music/player/v3/PlayController;

    .line 82
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_23

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v13

    goto :goto_7

    :cond_23
    move-object v2, v0

    .line 83
    :goto_7
    iget-object v3, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->w:Lcom/samsung/android/app/music/n;

    .line 84
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;

    invoke-direct {v4, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/a;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    .line 85
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/player/v3/PlayController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/a;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;ILcom/samsung/android/app/music/player/k;ILkotlin/jvm/internal/g;)V

    :goto_8
    iput-object v15, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/music/player/v3/PlayController;

    .line 86
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 87
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    const-string v1, "supportFragmentManager"

    if-eqz v0, :cond_28

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/o;

    .line 89
    iget-object v2, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v2, :cond_24

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v13

    .line 90
    :cond_24
    new-instance v3, Lcom/samsung/android/app/music/player/lockplayer/b;

    invoke-direct {v3, v9}, Lcom/samsung/android/app/music/player/lockplayer/b;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    .line 91
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/player/lockplayer/o;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v2, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v2, :cond_25

    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v13

    :cond_25
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 93
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 94
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/p;

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/h;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_26

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    .line 96
    :cond_26
    invoke-direct {v0, v9, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/p;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    .line 97
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_27

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_27
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 98
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_2d

    goto :goto_9

    .line 99
    :cond_28
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/o;

    .line 100
    iget-object v2, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v2, :cond_29

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v13

    .line 101
    :cond_29
    new-instance v3, Lcom/samsung/android/app/music/player/lockplayer/b;

    invoke-direct {v3, v9}, Lcom/samsung/android/app/music/player/lockplayer/b;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    .line 102
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/player/lockplayer/o;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v2, :cond_2a

    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v2, v13

    :cond_2a
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 104
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/p;

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/h;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_2b

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    .line 107
    :cond_2b
    invoke-direct {v0, v9, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/p;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    .line 108
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_2c

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_2c
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 109
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_2d

    :goto_9
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_2d
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 110
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 111
    new-instance v0, Lcom/samsung/android/app/music/player/v3/FavoriteController;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_2e

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_2e
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/v3/FavoriteController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 112
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_31

    goto :goto_a

    .line 113
    :cond_2f
    new-instance v0, Lcom/samsung/android/app/music/player/v3/FavoriteController;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_30

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_30
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/v3/FavoriteController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 114
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_31

    :goto_a
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_31
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 115
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 116
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->g:Lcom/samsung/android/app/music/player/v3/FavoriteController;

    .line 117
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 118
    new-instance v7, Lcom/samsung/android/app/music/player/v3/m;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_32

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v3, v13

    goto :goto_b

    :cond_32
    move-object v3, v0

    :goto_b
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/player/v3/m;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZILkotlin/jvm/internal/g;)V

    .line 119
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v0, :cond_35

    goto :goto_d

    .line 120
    :cond_33
    new-instance v7, Lcom/samsung/android/app/music/player/v3/m;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_34

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v3, v13

    goto :goto_c

    :cond_34
    move-object v3, v0

    :goto_c
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/player/v3/m;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZILkotlin/jvm/internal/g;)V

    .line 121
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v0, :cond_35

    :goto_d
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v13

    :cond_35
    invoke-virtual {v0, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 122
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 123
    iput-object v7, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/music/player/v3/m;

    .line 124
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 125
    new-instance v8, Lcom/samsung/android/app/music/player/v3/j;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_36

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v3, v13

    goto :goto_e

    :cond_36
    move-object v3, v0

    :goto_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/player/v3/j;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZZILkotlin/jvm/internal/g;)V

    .line 126
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v0, :cond_39

    goto :goto_10

    .line 127
    :cond_37
    new-instance v8, Lcom/samsung/android/app/music/player/v3/j;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v0, :cond_38

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v3, v13

    goto :goto_f

    :cond_38
    move-object v3, v0

    :goto_f
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/player/v3/j;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZZILkotlin/jvm/internal/g;)V

    .line 128
    iget-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v0, :cond_39

    :goto_10
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v13

    :cond_39
    invoke-virtual {v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 129
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    .line 130
    iput-object v8, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->o:Lcom/samsung/android/app/music/player/v3/j;

    .line 131
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    invoke-direct {v0, v9, v2, v1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;I)V

    .line 133
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_3a

    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_3a
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 134
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$g;

    invoke-direct {v1, v9}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$g;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    goto :goto_11

    .line 135
    :cond_3b
    new-instance v0, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v2

    invoke-direct {v0, v9, v2, v1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;I)V

    .line 136
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_3c

    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_3c
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 137
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$g;

    invoke-direct {v1, v9}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$g;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    :goto_11
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->D(Lkotlin/jvm/functions/l;)V

    .line 138
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 139
    iput-object v0, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->p:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    .line 140
    invoke-static {v10}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 141
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$a;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_3d

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_3d
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$a;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V

    .line 142
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_3e

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_3e
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 143
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_42

    goto :goto_12

    .line 144
    :cond_3f
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$a;

    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:Landroid/view/View;

    if-nez v1, :cond_40

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_40
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$a;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V

    .line 145
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v1, :cond_41

    invoke-static {v14}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v13

    :cond_41
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 146
    iget-object v1, v9, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v1, :cond_42

    :goto_12
    invoke-static {v11}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_13

    :cond_42
    move-object v13, v1

    :goto_13
    invoke-virtual {v13, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 147
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-void
.end method

.method public final S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->B:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$h;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.app.music.core.state.NOTIFICATION_HIDE"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lkotlin/u;->a:Lkotlin/u;

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final T(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez v0, :cond_1

    const-string v0, "viewTypeController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    move-object v1, v0

    const-string v0, "key_view_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/player/d0;->g(Lcom/samsung/android/app/music/player/d0;IZLjava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final U(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/m;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/m;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$k;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$k;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/m;->k(Lcom/samsung/android/app/music/player/lockplayer/m$b;)V

    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->B:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$h;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SMUSIC-LockPlayer"

    const-string v1, "unregisterReceiver Already unregistered."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getUseApplyTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->z:Z

    return v0
.end method

.method public h0(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/music/player/v3/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "shuffleController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v1}, Lcom/samsung/android/app/music/player/vi/h$a;->d(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->o:Lcom/samsung/android/app/music/player/v3/j;

    if-nez v0, :cond_1

    const-string v0, "repeatController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-static {v0, v1, p1, v2, v1}, Lcom/samsung/android/app/music/player/vi/h$a;->d(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;ILjava/lang/Object;)V

    return-void
.end method

.method public j1(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 5

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "beyondBackgroundController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/music/player/lockplayer/e;

    if-nez v0, :cond_1

    const-string v0, "albumArt"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->d()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/player/lockplayer/e;->B(IJ)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->t:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    if-nez v0, :cond_2

    const-string v0, "albumTagUpdater"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/music/player/v3/PlayController;

    if-nez v0, :cond_3

    const-string v0, "playController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/PlayController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f:Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;

    if-nez v0, :cond_4

    const-string v0, "playingItemText"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->J()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->l(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->p:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    if-nez v0, :cond_5

    const-string v0, "lyricsController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->E(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->g:Lcom/samsung/android/app/music/player/v3/FavoriteController;

    if-nez v0, :cond_6

    const-string v0, "favoriteController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/v3/FavoriteController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    return-void
.end method

.method public k1(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V
    .locals 2

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/music/player/v3/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "shuffleController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/v3/m;->j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->o:Lcom/samsung/android/app/music/player/v3/j;

    if-nez v0, :cond_1

    const-string v0, "repeatController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/player/v3/j;->j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->C:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;

    const-string v1, "onConfigurationChanged newConfig = "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->b(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/k;->l()I

    move-result v2

    .line 4
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result p1

    const-string v1, "uiManager"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object p1, v3

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->release()V

    .line 6
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$c;)Z

    move-result p1

    const v0, 0x7f0e00f3

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/h;->setContentView(I)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->P()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->r:Lcom/samsung/android/app/music/player/d0;

    if-nez p1, :cond_2

    const-string p1, "viewTypeController"

    invoke-static {p1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/player/d0;->g(Lcom/samsung/android/app/music/player/d0;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->O()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/a;->a(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/h;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0e00f3

    .line 3
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/activity/h;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ktx/view/e;->g(Landroid/view/Window;)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v1, v3, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ktx/view/e;->a(Landroid/view/Window;I)V

    .line 7
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$j;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$j;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/i;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/h;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->S()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "window.decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->U(Landroid/content/Context;Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->A:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$i;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/i;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/v$a;)V

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->P()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->T(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->V()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    if-nez v0, :cond_0

    const-string v0, "uiManager"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->release()V

    .line 4
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/h;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->N()Lcom/samsung/android/app/music/viewmodel/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/k;->l()I

    move-result v0

    const-string v1, "key_view_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/h;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->O()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->s:Lcom/samsung/android/app/music/player/lockplayer/k;

    if-nez v0, :cond_0

    const-string v0, "dragVIManager"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/k;->h()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-LockPlayer"

    const-string v1, "onStart isDesktopMode true & finish"

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->L()Lcom/samsung/android/app/music/player/lockplayer/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/i;->k()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->v:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->b(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;)V

    .line 2
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/h;->onStop()V

    return-void
.end method

.method public r0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->g:Lcom/samsung/android/app/music/player/v3/FavoriteController;

    if-nez p2, :cond_0

    const-string p2, "favoriteController"

    invoke-static {p2}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/player/v3/FavoriteController;->D(Ljava/lang/String;)V

    return-void
.end method
