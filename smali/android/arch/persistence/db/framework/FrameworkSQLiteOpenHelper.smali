.class Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    }
.end annotation


# instance fields
.field private final a:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->a:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 2

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    .line 38
    new-instance v1, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-direct {v1, p1, p2, v0, p3}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v1
.end method


# virtual methods
.method public a()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->a:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->a()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->a:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->a:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    return-void
.end method
