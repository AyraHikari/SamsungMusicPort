.class public final Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;JZILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 208
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;->newInstance(JZ)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(J)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;->newInstance$default(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$Companion;JZILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(JZ)Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
    .locals 3

    const-string v0, "Playlist-EditPlaylist"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newInstance() playlistId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", updateTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;-><init>()V

    .line 212
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_playlist_id"

    .line 213
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "key_update_title"

    .line 214
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
