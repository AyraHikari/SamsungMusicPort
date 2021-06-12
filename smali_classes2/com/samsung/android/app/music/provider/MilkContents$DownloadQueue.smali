.class public Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadQueue"
.end annotation


# direct methods
.method public static a()Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.sec.android.app.music/milk/purchase/download_queue"

    .line 264
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "audio/media/milk/purchase/tracks"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkContents;->a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/net/Uri;
    .locals 1

    .line 269
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
