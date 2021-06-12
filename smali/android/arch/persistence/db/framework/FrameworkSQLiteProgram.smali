.class Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteProgram;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteProgram;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;->a:Landroid/database/sqlite/SQLiteProgram;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public a(ID)V
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 39
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public a(I[B)V
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    return-void
.end method
