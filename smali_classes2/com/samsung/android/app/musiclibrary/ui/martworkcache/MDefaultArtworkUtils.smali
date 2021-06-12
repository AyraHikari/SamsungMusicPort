.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_player_default_cover:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->b:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->b:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/dlna_album_art"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->c:Landroid/net/Uri;

    return-void
.end method
