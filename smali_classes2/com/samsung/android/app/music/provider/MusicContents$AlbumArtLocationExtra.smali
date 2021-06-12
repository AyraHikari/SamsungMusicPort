.class public final Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;
.super Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArtLocationExtra"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mdrm"

    .line 84
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;->a:Ljava/lang/String;

    return-void
.end method
