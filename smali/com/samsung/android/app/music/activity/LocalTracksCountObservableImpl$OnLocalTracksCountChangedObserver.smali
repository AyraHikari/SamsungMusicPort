.class Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnLocalTracksCountChangedObserver"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$1;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .line 89
    invoke-interface {v1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
