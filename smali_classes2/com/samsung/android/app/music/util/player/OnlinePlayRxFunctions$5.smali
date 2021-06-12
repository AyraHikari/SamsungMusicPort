.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;->a()I

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "OnlinePlayRxFunctions"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertTrackListFunc. error code - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput v1, v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;->b()Ljava/util/List;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Ljava/util/List;)V

    if-eqz p1, :cond_2

    .line 152
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$5;->a:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 158
    invoke-static {v1, p1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b:[J

    .line 159
    iput-object p1, v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->d:Ljava/util/List;

    return-object v0

    :cond_2
    :goto_0
    const-string p1, "OnlinePlayRxFunctions"

    const-string v1, "insertTrackListFunc. track list from server is empty."

    .line 153
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 154
    iput p1, v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$5;->a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object p1

    return-object p1
.end method
