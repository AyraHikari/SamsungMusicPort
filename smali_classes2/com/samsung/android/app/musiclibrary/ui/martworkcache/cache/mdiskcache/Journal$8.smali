.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$RecOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;Ljava/util/List;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$8;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$8;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;)V
    .locals 0

    .line 522
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$8;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
