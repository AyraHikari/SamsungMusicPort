.class public interface abstract Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowsePlayAll;
.implements Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio;


# virtual methods
.method public abstract a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V
    .param p3    # Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;I",
            "Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a([JILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V
    .param p1    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
