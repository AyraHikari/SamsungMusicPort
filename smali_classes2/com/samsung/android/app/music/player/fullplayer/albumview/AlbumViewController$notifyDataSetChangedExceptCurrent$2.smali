.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x()V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 828
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 830
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 828
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
