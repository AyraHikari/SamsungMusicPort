.class public Landroid/arch/persistence/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/arch/persistence/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

.field private f:Z

.field private g:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

.field private h:Z

.field private final i:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->c:Landroid/content/Context;

    .line 426
    iput-object p2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->a:Ljava/lang/Class;

    .line 427
    iput-object p3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->b:Ljava/lang/String;

    .line 428
    sget-object p1, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->g:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    const/4 p1, 0x1

    .line 429
    iput-boolean p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->h:Z

    .line 430
    new-instance p1, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-direct {p1}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->i:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    return-void
.end method


# virtual methods
.method public varargs a([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 5
    .param p1    # [Landroid/arch/persistence/room/migration/Migration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/arch/persistence/room/migration/Migration;",
            ")",
            "Landroid/arch/persistence/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->k:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->k:Ljava/util/Set;

    .line 470
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 471
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->k:Ljava/util/Set;

    iget v4, v2, Landroid/arch/persistence/room/migration/Migration;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->k:Ljava/util/Set;

    iget v2, v2, Landroid/arch/persistence/room/migration/Migration;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->i:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->a([Landroid/arch/persistence/room/migration/Migration;)V

    return-object p0
.end method

.method public a()Landroid/arch/persistence/room/RoomDatabase;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->c:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->a:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->k:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->j:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 610
    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->j:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->e:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    if-nez v0, :cond_2

    .line 623
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->e:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    .line 625
    :cond_2
    new-instance v0, Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->c:Landroid/content/Context;

    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->b:Ljava/lang/String;

    iget-object v4, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->e:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    iget-object v5, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->i:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    iget-object v6, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->d:Ljava/util/ArrayList;

    iget-boolean v7, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->f:Z

    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->g:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    iget-object v8, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->c:Landroid/content/Context;

    .line 628
    invoke-virtual {v1, v8}, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->resolve(Landroid/content/Context;)Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    move-result-object v8

    iget-boolean v9, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->h:Z

    iget-object v10, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->j:Ljava/util/Set;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/arch/persistence/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroid/arch/persistence/room/RoomDatabase$JournalMode;ZLjava/util/Set;)V

    .line 630
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->a:Ljava/lang/Class;

    const-string v2, "_Impl"

    invoke-static {v1, v2}, Landroid/arch/persistence/room/Room;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/RoomDatabase;

    .line 631
    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->init(Landroid/arch/persistence/room/DatabaseConfiguration;)V

    return-object v1

    .line 604
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
