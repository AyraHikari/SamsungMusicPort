.class final Lcom/samsung/android/app/music/list/local/LockQueueFragment$dlnaDmsQueueAdapter$2;
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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$dlnaDmsQueueAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;
    .locals 2

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$dlnaDmsQueueAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 66
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->setRemoteTrack(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$dlnaDmsQueueAdapter$2;->invoke()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    move-result-object v0

    return-object v0
.end method
