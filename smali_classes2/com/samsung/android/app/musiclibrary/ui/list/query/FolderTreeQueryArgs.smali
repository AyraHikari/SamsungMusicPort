.class public final Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;->uri:Landroid/net/Uri;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "_id"

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "folder_bucket_id"

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "displayed_title"

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "artist"

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "path"

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album_id"

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "file_type"

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "number_of_total_sub_folders"

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "number_of_sub_folders"

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "number_of_tracks"

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "drm_type"

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "sampling_rate"

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "bit_depth"

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mime_type"

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;->projection:[Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;->selection:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    move-object p2, p1

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;->selectionArgs:[Ljava/lang/String;

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "displayed_title  COLLATE LOCALIZED "

    goto :goto_0

    :cond_2
    const-string p1, "date_modified DESC"

    .line 46
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;->orderBy:Ljava/lang/String;

    return-void

    .line 55
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x2

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;-><init>(Ljava/lang/String;II)V

    return-void
.end method
