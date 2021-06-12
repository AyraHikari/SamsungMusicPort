.class final Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/CompletableEmitter;)V
    .locals 8

    const-string v0, "TopChartApi"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveChartToDatabase. playlistId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;->c:Ljava/util/List;

    sget-object v6, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    sget-object v7, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->b:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)V

    .line 89
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method
