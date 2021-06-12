.class public Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 371
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->c:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 362
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
    .locals 4

    .line 342
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->c:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->c:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct {v0, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
