.class Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;->a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

.field final synthetic b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2$1;->b:Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2$1;->a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2$1;->a:Lcom/samsung/android/app/music/util/player/PlayTracksObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->release()V

    return-void
.end method
