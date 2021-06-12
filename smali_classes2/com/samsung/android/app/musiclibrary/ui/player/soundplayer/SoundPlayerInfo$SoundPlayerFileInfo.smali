.class public Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundPlayerFileInfo"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->a:Landroid/net/Uri;

    .line 35
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->b:Landroid/net/Uri;

    return-void
.end method
