.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
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

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    if-eqz p1, :cond_3

    .line 264
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-AudioEffectApplier"

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged newState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 85
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Z)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->d()V

    goto :goto_1

    .line 81
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Z)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->d()V

    goto :goto_1

    .line 74
    :pswitch_2
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->c(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 75
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    const/4 v0, 0x0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V

    .line 76
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    move-result-object p2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a(J)V

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    if-eqz p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->c(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 95
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->a()Z

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    .line 96
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->g(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;)V

    .line 99
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$scrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V

    :cond_2
    return-void

    :cond_3
    return-void
.end method
