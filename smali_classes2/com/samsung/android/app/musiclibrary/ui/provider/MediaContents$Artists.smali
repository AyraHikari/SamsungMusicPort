.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$ArtistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artists"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music/audio/media/music_artists_album_id"

    .line 765
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->a:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/audio/media/base_artists"

    .line 773
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->b:Landroid/net/Uri;

    .line 775
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v0, :cond_0

    const-string v0, "artist_pinyin"

    goto :goto_0

    :cond_0
    const-string v0, "artist"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    return-void
.end method
