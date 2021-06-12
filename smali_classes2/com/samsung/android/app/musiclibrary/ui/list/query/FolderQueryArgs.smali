.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->uri:Landroid/net/Uri;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "bucket_id"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, " CASE WHEN bucket_id=? THEN ?      WHEN bucket_id=? THEN ?      ELSE bucket_display_name END AS bucket_display_name"

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "_data"

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "is_secretbox"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "dummy"

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->selection:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->selectionArgs:[Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p1, "recently_added DESC"

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " COLLATE LOCALIZED "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->orderBy:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    .line 47
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->internal_storage_kt:I

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 49
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    sget p0, Lcom/samsung/android/app/musiclibrary/R$string;->sd_card:I

    .line 50
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v1, v0

    return-object v1
.end method
