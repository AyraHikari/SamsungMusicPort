.class public final Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-string v0, "bucketId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 145
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;->uri:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "folder_bucket_id"

    const-string v2, "displayed_title"

    const-string v3, "file_type"

    const-string v4, "number_of_total_sub_folders"

    const-string v5, "number_of_tracks"

    const-string v6, "album_id"

    const-string v7, "hide"

    .line 146
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "file_type=0"

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;->selection:Ljava/lang/String;

    const/4 p1, 0x0

    .line 157
    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string p1, "displayed_title  COLLATE LOCALIZED "

    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
