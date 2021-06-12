.class public final Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnlineChartTracks"
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music/milk/online_chart_tracks"

    .line 348
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "milk/online_chart_tracks"

    return-object v0
.end method

.method public static b()Landroid/net/Uri;
    .locals 1

    .line 355
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;->a:Landroid/net/Uri;

    return-object v0
.end method
