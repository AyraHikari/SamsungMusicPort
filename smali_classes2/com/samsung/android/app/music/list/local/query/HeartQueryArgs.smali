.class public Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 15
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->uri:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "favorite_name"

    const-string v3, "category_id"

    const-string v4, "category_type"

    const-string v5, "album_id"

    const-string v6, "cp_attrs"

    const-string v7, "display_order"

    const-string v8, "data1"

    const-string v9, "data2"

    const-string v10, "sub_category_type"

    .line 17
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "data1>0"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selection:Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "data1>0 OR (category_type = 85 OR category_type = 84 OR category_type = 102)"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selection:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v0, "display_order"

    .line 41
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
