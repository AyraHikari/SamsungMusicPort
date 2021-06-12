.class public abstract Landroid/arch/persistence/room/SharedSQLiteStatement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mDatabase:Landroid/arch/persistence/room/RoomDatabase;

.field private final mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mStmt:Landroid/arch/persistence/db/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object p1, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    return-void
.end method

.method private createNewStatement()Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->createQuery()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method private getStmt(Z)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 0

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mStmt:Landroid/arch/persistence/db/SupportSQLiteStatement;

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->createNewStatement()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mStmt:Landroid/arch/persistence/db/SupportSQLiteStatement;

    .line 74
    :cond_0
    iget-object p1, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mStmt:Landroid/arch/persistence/db/SupportSQLiteStatement;

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->createNewStatement()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->assertNotMainThread()V

    .line 87
    iget-object v0, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->getStmt(Z)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected assertNotMainThread()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    return-void
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mStmt:Landroid/arch/persistence/db/SupportSQLiteStatement;

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Landroid/arch/persistence/room/SharedSQLiteStatement;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
