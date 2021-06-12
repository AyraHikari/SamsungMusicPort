.class final Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;
.super Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImportAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;
    }
.end annotation


# instance fields
.field private isMaxState:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;-><init>(Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter$Builder;)V

    return-void
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->isMaxState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 259
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/playlist/BaseDialog$Adapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public final isMaxState()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->isMaxState:Z

    return v0
.end method

.method public final setMaxState(Z)V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->isMaxState:Z

    if-eq v0, p1, :cond_0

    .line 250
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->isMaxState:Z

    .line 251
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$isMaxState$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter$isMaxState$1;-><init>(Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog$ImportAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
