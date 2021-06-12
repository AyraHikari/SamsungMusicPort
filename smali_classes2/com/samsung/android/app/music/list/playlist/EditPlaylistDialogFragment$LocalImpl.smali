.class final Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$LocalImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$IEditPlaylistName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalImpl"
.end annotation


# instance fields
.field private final fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$LocalImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    return-void
.end method


# virtual methods
.method public editPlaylistName(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "playlistName"

    move-object/from16 v7, p1

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v2, v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$LocalImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "fragment.activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 90
    iget-object v2, v0, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment$LocalImpl;->fragment:Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v4, "key_playlist_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v2, "context"

    .line 92
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v2, 0x3f4

    const/16 v16, 0x0

    move-wide v4, v14

    move-object/from16 v7, p1

    move-wide/from16 v17, v14

    move v14, v2

    move-object/from16 v15, v16

    invoke-static/range {v3 .. v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    move-wide/from16 v3, v17

    .line 94
    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    goto :goto_0

    :cond_2
    move-wide/from16 v3, v17

    const/4 v2, 0x5

    .line 96
    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;->onResult(IJ)V

    :goto_0
    return-void
.end method
