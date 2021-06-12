.class public Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->a:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->b:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->c:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 1

    .line 330
    new-instance v0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
