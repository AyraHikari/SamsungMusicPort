.class public final Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bucketId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 526
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;->uri:Landroid/net/Uri;

    const-string p1, "number_of_tracks"

    const-string v0, "number_of_total_sub_folders"

    .line 527
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;->projection:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 531
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;->selection:Ljava/lang/String;

    .line 532
    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;->selectionArgs:[Ljava/lang/String;

    return-void
.end method
