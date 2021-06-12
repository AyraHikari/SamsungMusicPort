.class Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;
    }
.end annotation


# instance fields
.field final a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

.field b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    .line 133
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-direct {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 8

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;->a()I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-interface {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;->b()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    .line 225
    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;->a(I)Landroid/view/View;

    move-result-object v4

    .line 226
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-interface {v5, v4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;->a(Landroid/view/View;)I

    move-result v5

    .line 227
    iget-object v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;

    invoke-interface {v6, v4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$Callback;->b(Landroid/view/View;)I

    move-result v6

    .line 228
    iget-object v7, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v7, v0, v1, v5, v6}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;->a(IIII)V

    if-eqz p3, :cond_1

    .line 230
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;->a()V

    .line 231
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;->a(I)V

    .line 232
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    .line 238
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;->a()V

    .line 239
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;->a(I)V

    .line 240
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ViewBoundsCheck$BoundFlags;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method
