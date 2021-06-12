.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumArt"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.sec.android.app.music/audio/media/favorites/albumart"

    .line 1338
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->a:Landroid/net/Uri;

    .line 1341
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->a:Landroid/net/Uri;

    .line 1342
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->b:Landroid/net/Uri;

    return-void
.end method
