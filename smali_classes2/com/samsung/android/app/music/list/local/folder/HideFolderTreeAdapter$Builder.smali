.class public final Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;
.super Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;
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

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;

    return-object v0
.end method

.method public synthetic b()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;
    .locals 1

    .line 138
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;-><init>(Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
