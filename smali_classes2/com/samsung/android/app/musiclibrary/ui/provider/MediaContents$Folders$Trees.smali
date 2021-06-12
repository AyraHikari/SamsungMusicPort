.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trees"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music/audio/media/music_folder_trees"

    .line 915
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->a:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/audio/media/music_folder_trees/tracks"

    .line 918
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->b:Landroid/net/Uri;

    const-string v0, "ROOT_FOLDER_PATH"

    .line 923
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.sec.android.app.music/audio/media/music_folder_trees"

    .line 910
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucket_id"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
