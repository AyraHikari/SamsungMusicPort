.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Extra;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Queue;
    }
.end annotation


# instance fields
.field final extra:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Extra;

.field meta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field playbackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field final q:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Queue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Queue;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Queue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData;->q:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Queue;

    .line 178
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Extra;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Extra;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData;->extra:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Extra;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$1;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData;-><init>()V

    return-void
.end method
