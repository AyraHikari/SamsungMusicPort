.class public final Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;
.super Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;->build()Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;

    return-object v0
.end method

.method public build()Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;
    .locals 1

    .line 265
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;-><init>(Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;->build()Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public bridge synthetic self()Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;->self()Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;->self()Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
