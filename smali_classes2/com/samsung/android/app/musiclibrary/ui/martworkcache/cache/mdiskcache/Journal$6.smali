.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$RecOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->d()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$6;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$6;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;)V
    .locals 2

    .line 446
    iget p1, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->f:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 447
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$6;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_0
    return-void
.end method
