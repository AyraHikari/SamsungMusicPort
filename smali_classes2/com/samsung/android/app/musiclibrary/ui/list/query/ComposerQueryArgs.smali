.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 14
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->b:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->uri:Landroid/net/Uri;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "composer"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "dummy"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "number_of_tracks"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->selection:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->selectionArgs:[Ljava/lang/String;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string p1, "number_of_tracks DESC"

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "recently_added DESC"

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->orderBy:Ljava/lang/String;

    :goto_0
    return-void
.end method
