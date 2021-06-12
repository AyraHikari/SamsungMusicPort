.class Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;
.super Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;
.source "SourceFile"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteStatement;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 35
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;->a:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 50
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method
