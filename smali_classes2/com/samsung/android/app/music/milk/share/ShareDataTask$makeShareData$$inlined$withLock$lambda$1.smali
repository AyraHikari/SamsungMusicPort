.class public final Lcom/samsung/android/app/music/milk/share/ShareDataTask$makeShareData$$inlined$withLock$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/share/OnShortenResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ShareDataTask;->d()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/share/ShareDataTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask$makeShareData$$inlined$withLock$lambda$1;->a:Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask$makeShareData$$inlined$withLock$lambda$1;->a:Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->a(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)Lcom/samsung/android/app/music/milk/share/ShareData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/share/ShareData;->a(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask$makeShareData$$inlined$withLock$lambda$1;->a:Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->b(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask$makeShareData$$inlined$withLock$lambda$1;->a:Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->c(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 63
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
