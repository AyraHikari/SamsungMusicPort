.class public Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 12
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "chart_id=? AND chart_type=1"

    .line 14
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;->selection:Ljava/lang/String;

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string p1, "rank ASC"

    .line 16
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
