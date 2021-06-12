.class public Lcom/samsung/android/app/music/martworkcache/Thumbnails;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->b:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->a:Landroid/net/Uri;

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->b:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/dlna_album_art"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/net/Uri;)I
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->c:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x10000b

    return p0

    :cond_0
    const p0, 0x110001

    return p0
.end method

.method public static a(I)Landroid/net/Uri;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/CpAttrs;->b(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 44
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->c:Landroid/net/Uri;

    return-object p0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result p0

    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_1

    .line 46
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->b:Landroid/net/Uri;

    return-object p0

    .line 48
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public static b(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->a(I)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/martworkcache/Thumbnails;->a(Landroid/net/Uri;)I

    move-result p0

    return p0
.end method
