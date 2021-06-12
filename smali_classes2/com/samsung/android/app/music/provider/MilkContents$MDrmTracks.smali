.class public final Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$MdrmTrackColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MDrmTracks"
.end annotation


# direct methods
.method public static a()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/milk/mdrm/tracks"

    .line 326
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
