.class public Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$StationTrackColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StationTracks"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music/milk/station_tracks"

    .line 236
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 1

    .line 243
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;->a:Landroid/net/Uri;

    return-object v0
.end method
