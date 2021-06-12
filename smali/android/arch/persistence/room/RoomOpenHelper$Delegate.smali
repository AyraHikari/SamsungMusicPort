.class public abstract Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegate"
.end annotation


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->version:I

    return-void
.end method


# virtual methods
.method protected abstract createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
.end method
