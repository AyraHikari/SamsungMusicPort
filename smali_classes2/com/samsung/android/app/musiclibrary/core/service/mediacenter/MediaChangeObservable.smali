.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method


# virtual methods
.method public abstract getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
.end method

.method public abstract getMusicQueue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end method

.method public abstract getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.end method

.method public abstract registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
.end method

.method public abstract unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
.end method
