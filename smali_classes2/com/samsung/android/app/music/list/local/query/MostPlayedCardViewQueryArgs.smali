.class public Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const v0, 0x10001

    .line 16
    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;->a(II)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;->uri:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "album_id"

    const-string v3, "dummy"

    const-string v4, "cp_attrs"

    const-string v5, "list_type"

    .line 18
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;->projection:[Ljava/lang/String;

    return-void
.end method
