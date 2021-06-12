.class public interface abstract Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;,
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;,
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    }
.end annotation


# virtual methods
.method public abstract a()Landroid/arch/persistence/db/SupportSQLiteDatabase;
.end method

.method public abstract a(Z)V
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation
.end method

.method public abstract b()V
.end method
