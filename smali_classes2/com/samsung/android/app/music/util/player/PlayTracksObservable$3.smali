.class final Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;->b:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 129
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v0

    .line 130
    new-instance v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;->b:Ljava/util/List;

    iput-object v2, v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->d:Ljava/util/List;

    .line 133
    iput-object v0, v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b:[J

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 135
    iput v0, v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    .line 136
    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 137
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
