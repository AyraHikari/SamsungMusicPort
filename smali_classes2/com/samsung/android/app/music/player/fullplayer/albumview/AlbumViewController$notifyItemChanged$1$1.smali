.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->notifyItemChanged(I)V

    return-void
.end method
