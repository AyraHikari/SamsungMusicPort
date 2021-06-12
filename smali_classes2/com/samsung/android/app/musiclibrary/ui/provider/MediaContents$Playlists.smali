.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playlists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Sync;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Conflict;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Ljava/lang/String;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.sec.android.app.music/audio/playlists"

    .line 1019
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    .line 1021
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    .line 1022
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pre_insert"

    const-string v2, "pre_insert"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->b:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/audio/playlists/multiple_members"

    .line 1032
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->c:Landroid/net/Uri;

    const-string v0, "secFilter"

    .line 1038
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->i:Ljava/lang/String;

    const-string v0, "include_nested"

    .line 1040
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->j:Ljava/lang/String;

    const-string v0, "include_deleted"

    .line 1042
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->k:Ljava/lang/String;

    .line 1048
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    .line 1049
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->i:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->d:Landroid/net/Uri;

    .line 1056
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    .line 1057
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->i:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1058
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->e:Landroid/net/Uri;

    .line 1064
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v0, :cond_0

    const-string v0, "name_pinyin"

    goto :goto_0

    :cond_0
    const-string v0, "name"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->f:Ljava/lang/String;

    const-string v0, "content://com.sec.android.app.music/audio/now_playing_queue"

    .line 1078
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->g:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/audio/now_playing_queue_unique"

    .line 1081
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->h:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/net/Uri;)J
    .locals 2

    .line 1035
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Playlists/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dummy_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 3

    .line 1117
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "move"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1118
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "display_order_from"

    .line 1119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "display_order_to"

    .line 1120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 1121
    invoke-static {p0, v0, v1, p1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/net/Uri;)Z
    .locals 2

    .line 1053
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->j:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/net/Uri;)Z
    .locals 2

    .line 1061
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->k:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
