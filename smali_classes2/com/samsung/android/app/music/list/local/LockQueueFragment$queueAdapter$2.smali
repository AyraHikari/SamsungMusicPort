.class final Lcom/samsung/android/app/music/list/local/LockQueueFragment$queueAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/LockQueueFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/LockQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$queueAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;
    .locals 3

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$queueAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "audio_id"

    .line 50
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const-string v1, "title"

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const v1, 0x7f02026e

    .line 54
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setRippleResId(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const v1, 0x7f100087

    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setThumbnailSize(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 56
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const-string v1, "cp_attrs"

    .line 57
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 58
    sget-object v1, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->b:Landroid/net/Uri;

    const-string v2, "Thumbnails.MILK_ALBUM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x80002

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "streaming"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->a(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$queueAdapter$2;->invoke()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    move-result-object v0

    return-object v0
.end method
