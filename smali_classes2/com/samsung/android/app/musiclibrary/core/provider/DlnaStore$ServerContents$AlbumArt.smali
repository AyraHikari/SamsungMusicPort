.class public final Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArt"
.end annotation


# static fields
.field public static final ALBUM_ART:Ljava/lang/String; = "album_art"

.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DLNA_ALBUM_ART:Ljava/lang/String; = "dlna_album_art"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/dlna_album_art"

    .line 118
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
