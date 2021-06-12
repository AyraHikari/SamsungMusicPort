.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper$SQLiteDbOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 272
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Apply delete: "

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 274
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Apply insert update: "

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->b:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 276
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Apply promotion: "

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->c:Ljava/util/List;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 278
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Apply max bitmap size update: "

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->d:Ljava/util/List;

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 280
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Apply delete max bitmap size: "

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->e:Ljava/util/List;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 265
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal$2;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalDatabaseWrapper;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-static {p3, p4, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;Ljava/util/List;Landroid/database/sqlite/SQLiteStatement;I)V

    :cond_0
    return-void
.end method
