.class public Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;
    .locals 1

    .line 246
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;->a()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
