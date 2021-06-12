.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;

    .line 26
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureObservableImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
