.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(JJ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$7;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;)I
    .locals 2

    .line 465
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->b:J

    iget-wide p1, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->b:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 462
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$7;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;)I

    move-result p1

    return p1
.end method
