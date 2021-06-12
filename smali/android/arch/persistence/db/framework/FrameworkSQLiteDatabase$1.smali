.class Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->a(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/persistence/db/SupportSQLiteQuery;

.field final synthetic b:Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteQuery;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;->b:Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    iput-object p2, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;->a:Landroid/arch/persistence/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 165
    iget-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;->a:Landroid/arch/persistence/db/SupportSQLiteQuery;

    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;

    invoke-direct {v0, p4}, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteQuery;->a(Landroid/arch/persistence/db/SupportSQLiteProgram;)V

    .line 166
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method
