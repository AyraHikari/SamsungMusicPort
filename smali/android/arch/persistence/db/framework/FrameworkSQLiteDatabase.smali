.class Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteDatabase;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, ""

    const-string v1, " OR ROLLBACK "

    const-string v2, " OR ABORT "

    const-string v3, " OR FAIL "

    const-string v4, " OR IGNORE "

    const-string v5, " OR REPLACE "

    .line 47
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 2

    .line 64
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;

    iget-object v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public a(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 4

    .line 161
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;

    invoke-direct {v1, p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;-><init>(Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteQuery;)V

    .line 168
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteQuery;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 161
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 150
    new-instance v0, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->a(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
