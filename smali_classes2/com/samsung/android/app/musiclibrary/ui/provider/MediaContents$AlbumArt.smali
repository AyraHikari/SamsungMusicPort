.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArt"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    .line 805
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    .line 816
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->b:Landroid/net/Uri;

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.sec.android.app.music"

    const-string v1, "content://com.sec.android.app.music"

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.sec.android.app.music/audio/albumart"

    .line 810
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 812
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    return-object v0
.end method
