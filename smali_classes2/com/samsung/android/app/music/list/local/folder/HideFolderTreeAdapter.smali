.class public final Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;
.super Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;
    }
.end annotation


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;)V

    const/4 p1, -0x1

    .line 120
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->c:I

    return-void
.end method


# virtual methods
.method public final g(I)Z
    .locals 1

    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->initColIndex(Landroid/database/Cursor;)V

    const-string v0, "hide"

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->c:I

    const-string v0, "number_of_total_sub_folders"

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->a(I)V

    return-void
.end method
