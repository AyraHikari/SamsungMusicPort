.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$selectedPositionChangeDetector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/support/v7/widget/RecyclerView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$selectedPositionChangeDetector$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$selectedPositionChangeDetector$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result p1

    .line 852
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-AlbumViewController"

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewSelectedPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$selectedPositionChangeDetector$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$selectedPositionChangeDetector$1;->invoke(Landroid/support/v7/widget/RecyclerView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
