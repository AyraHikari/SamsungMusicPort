.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;
.super Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;-><init>(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 264
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "SMUSIC-AudioEffectApplier"

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {v4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;

    .line 48
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->itemView:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 47
    :goto_1
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$Companion;Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz p2, :cond_3

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    const/4 p2, 0x1

    if-nez v2, :cond_4

    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    if-eqz p1, :cond_5

    .line 54
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Z)V

    goto :goto_6

    :cond_5
    return v0

    :cond_6
    :goto_3
    const/4 p1, 0x3

    if-nez v2, :cond_7

    goto :goto_4

    .line 57
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_a

    .line 58
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_a

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1$onInterceptTouchEvent$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1$onInterceptTouchEvent$3;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$itemTouchListener$1;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_6
    return v0

    :cond_b
    return v0
.end method
