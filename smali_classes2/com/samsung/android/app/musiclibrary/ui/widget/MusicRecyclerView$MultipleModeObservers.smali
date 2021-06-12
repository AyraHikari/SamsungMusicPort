.class final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultipleModeObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<",
        "Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    .line 660
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;->a(IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
