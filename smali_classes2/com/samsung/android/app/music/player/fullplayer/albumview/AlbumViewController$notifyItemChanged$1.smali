.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
