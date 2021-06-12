.class public final Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;
    .locals 1

    .line 259
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;-><init>(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;->a()Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
