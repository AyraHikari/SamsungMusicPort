.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "UiList"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " playlistsObserver onChange() selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a()V

    :cond_0
    return-void

    :cond_1
    return-void
.end method
