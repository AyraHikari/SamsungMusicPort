.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$RecOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;ILjava/util/List;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$4;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$4;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$4;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;)V
    .locals 2

    .line 308
    iget v0, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->f:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$4;->a:I

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$4;->b:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
