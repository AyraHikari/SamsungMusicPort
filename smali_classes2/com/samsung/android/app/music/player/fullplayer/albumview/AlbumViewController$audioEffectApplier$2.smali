.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$audioEffectApplier$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$audioEffectApplier$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;
    .locals 2

    .line 459
    invoke-static {}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewControllerKt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    .line 460
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$audioEffectApplier$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 459
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$audioEffectApplier$2;->invoke()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    move-result-object v0

    return-object v0
.end method
